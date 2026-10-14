.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;
.super Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH&J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0013H&J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H&J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0016H&J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0016H&J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000c\u001a\u00020\u0013H&J\u0008\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u001eH&J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\u000c\u001a\u00020\u0013H&J\u0008\u0010$\u001a\u00020\u0006H&J\u0008\u0010%\u001a\u00020\u001eH&J\u0018\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u0013H&J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*H&\u00a8\u0006+"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;",
        "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "enableAi",
        "",
        "getAppType",
        "",
        "getDefaultLoginType",
        "getEndTestEvent",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "message",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "getHomePageIntent",
        "Landroid/content/Intent;",
        "Landroid/app/Activity;",
        "getLaunchPageIntent",
        "getRadarRenderConfig",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarRenderConfig;",
        "getResourceList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
        "getSignalItem",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/check/SignalItem;",
        "getTracePageIntent",
        "initAiCameraManager",
        "",
        "initUsbManager",
        "isUnityPage",
        "context",
        "Landroid/content/Context;",
        "logout",
        "needStartCarStateAndPosition",
        "onLocalConfigLoaded",
        "processSpecial",
        "url",
        "updateUserInfo",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public abstract enableAi()Z
.end method

.method public abstract getAppType()I
.end method

.method public abstract getDefaultLoginType()I
.end method

.method public abstract getEndTestEvent(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;"
        }
    .end annotation
.end method

.method public abstract getHomePageIntent(Landroid/app/Activity;)Landroid/content/Intent;
.end method

.method public abstract getLaunchPageIntent(Landroid/app/Activity;)Landroid/content/Intent;
.end method

.method public abstract getRadarRenderConfig()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignalItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTracePageIntent(Landroid/app/Activity;)Landroid/content/Intent;
.end method

.method public abstract initAiCameraManager()V
.end method

.method public abstract initUsbManager()V
.end method

.method public abstract isUnityPage(Landroid/content/Context;)Z
.end method

.method public abstract logout(Landroid/app/Activity;)V
.end method

.method public abstract needStartCarStateAndPosition()Z
.end method

.method public abstract onLocalConfigLoaded()V
.end method

.method public abstract processSpecial(Ljava/lang/String;Landroid/app/Activity;)Z
.end method

.method public abstract updateUserInfo(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
.end method
