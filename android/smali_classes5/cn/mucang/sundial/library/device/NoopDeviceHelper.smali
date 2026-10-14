.class public final Lcn/mucang/sundial/library/device/NoopDeviceHelper;
.super Lcn/mucang/sundial/library/device/DeviceHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0008J\u000f\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0008J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/sundial/library/device/NoopDeviceHelper;",
        "Lcn/mucang/sundial/library/device/DeviceHelper;",
        "Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;",
        "initListener",
        "Lkotlin/v;",
        "init",
        "(Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;)V",
        "free",
        "()V",
        "",
        "isInit",
        "()Z",
        "powerOff",
        "reboot",
        "restoreSystemLauncher",
        "makeSelfLauncher",
        "Ljava/io/File;",
        "updateApk",
        "",
        "packageName",
        "silentInstall",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/device/DeviceHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    return-void
.end method

.method public init(Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;)V
    .locals 1

    const-string v0, "initListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public isInit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeSelfLauncher()V
    .locals 0

    return-void
.end method

.method public powerOff()V
    .locals 0

    return-void
.end method

.method public reboot()V
    .locals 2

    const-string v0, "reboot"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->a(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/h$a;

    return-void
.end method

.method public restoreSystemLauncher()V
    .locals 0

    return-void
.end method

.method public silentInstall(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    const-string v0, "updateApk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.android.install"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cn.mucang.android.installer"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "package_name"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "auto_start"

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
