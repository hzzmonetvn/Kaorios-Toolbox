.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"

# direct methods
.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I
    move-result v0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v1

    new-instance v2, Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    return-object v2
.end method
