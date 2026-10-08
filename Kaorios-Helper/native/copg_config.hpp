// SPDX-License-Identifier: AGPL-3.0-only
// Copyright (C) 2026 hzzmonetvn
#pragma once

#include <cerrno>
#include <cstdint>
#include <cstring>
#include <fcntl.h>
#include <fstream>
#include <string>
#include <sys/socket.h>
#include <unistd.h>

constexpr uint32_t HELPER_CONFIG_MAX = 1024 * 1024;

inline void helperSocketTimeout(int fd) {
    timeval timeout{1, 0};
    setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
    setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &timeout, sizeof(timeout));
}

inline bool helperSend(int fd, const void* data, size_t length) {
    auto bytes = static_cast<const char*>(data);
    while (length > 0) {
        ssize_t sent = send(fd, bytes, length, MSG_NOSIGNAL);
        if (sent < 0 && errno == EINTR) continue;
        if (sent <= 0) return false;
        bytes += sent;
        length -= sent;
    }
    return true;
}

inline bool helperReceive(int fd, void* data, size_t length) {
    auto bytes = static_cast<char*>(data);
    while (length > 0) {
        ssize_t received = read(fd, bytes, length);
        if (received < 0 && errno == EINTR) continue;
        if (received <= 0) return false;
        bytes += received;
        length -= received;
    }
    return true;
}

inline int helperRequest(zygisk::Api* api, const char* command) {
    int fd = api->connectCompanion();
    if (fd < 0) return -1;
    helperSocketTimeout(fd);
    if (!helperSend(fd, command, strlen(command))) {
        close(fd);
        return -1;
    }
    return fd;
}

inline bool helperCopgConfig(zygisk::Api* api, std::string& config) {
    int fd = helperRequest(api, "helper_config");
    if (fd < 0) return false;
    uint32_t size = 0;
    bool valid = helperReceive(fd, &size, sizeof(size)) && size > 0 && size <= HELPER_CONFIG_MAX;
    if (valid) {
        config.resize(size);
        valid = helperReceive(fd, config.data(), size);
    }
    close(fd);
    return valid;
}

// Only the root companion calls this function; app callbacks never read private files.
inline bool helperCompanionRequest(int fd, const std::string& command, const std::string& configPath) {
    if (command != "helper_config") return false;
    helperSocketTimeout(fd);
    uint8_t enabled = access("/data/adb/kaorios_helper/copg.enabled", F_OK) == 0 &&
                      access("/data/adb/modules/kaorios_helper/disable", F_OK) != 0 &&
                      access("/data/adb/modules/kaorios_helper/remove", F_OK) != 0;
    std::string config;
    if (enabled) {
        std::ifstream file(configPath, std::ios::binary | std::ios::ate);
        auto size = file.tellg();
        if (size > 0 && size <= HELPER_CONFIG_MAX) {
            config.resize(static_cast<size_t>(size));
            file.seekg(0);
            if (!file.read(config.data(), size)) config.clear();
        }
    }
    uint32_t size = static_cast<uint32_t>(config.size());
    if (helperSend(fd, &size, sizeof(size)) && size > 0) helperSend(fd, config.data(), size);
    return true;
}
