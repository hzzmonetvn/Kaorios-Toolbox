// SPDX-License-Identifier: AGPL-3.0-only
// Copyright (C) 2026 hzzmonetvn
#include <cstdint>
#include <fcntl.h>
#include <unistd.h>
#include "main.hpp"
#include "copg_config.hpp"

static_assert(ZYGISK_API_VERSION == 4, "Helper requires Zygisk API 4");

zygisk::ModuleBase& helperCopgModule();

class KaoriosHelperModule : public zygisk::ModuleBase {
public:
    void onLoad(zygisk::Api* api, JNIEnv* env) override {
        api_ = api;
        env_ = env;
    }

    bool copgEnabled() {
        if (api_ == nullptr) return false;
        int dir = api_->getModuleDir();
        if (dir < 0) return false;
        bool disabled = faccessat(dir, "disable", F_OK, 0) == 0 ||
                        faccessat(dir, "remove", F_OK, 0) == 0;
        close(dir);
        if (disabled) return false;
        return access("/data/adb/kaorios_helper/copg.enabled", F_OK) == 0;
    }

    void preAppSpecialize(zygisk::AppSpecializeArgs* args) override {
        if (!copgEnabled()) {
            api_->setOption(zygisk::DLCLOSE_MODULE_LIBRARY);
            return;
        }
        copg_ = &helperCopgModule();
        copg_->onLoad(api_, env_);
        copg_->preAppSpecialize(args);
    }

    void postAppSpecialize(const zygisk::AppSpecializeArgs* args) override {
        if (copg_ != nullptr) copg_->postAppSpecialize(args);
    }

    void preServerSpecialize(zygisk::ServerSpecializeArgs* args) override {
        // The HMA loader requests dlclose; initialize it only in system_server.
        hma_.onLoad(api_, env_);
        hma_.preServerSpecialize(args);
    }

    void postServerSpecialize(const zygisk::ServerSpecializeArgs* args) override {
        hma_.postServerSpecialize(args);
    }

private:
    zygisk::Api* api_ = nullptr;
    JNIEnv* env_ = nullptr;
    zygisk::ModuleBase* copg_ = nullptr;
    ZygoteLoaderModule hma_;
};

REGISTER_ZYGISK_MODULE(KaoriosHelperModule)
