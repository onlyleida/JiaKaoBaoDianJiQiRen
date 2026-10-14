.class public final Lcn/mucang/android/jiakaoyi/teachingk2/TeachK2Application;
.super Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$b;
.implements Lcn/mucang/jiakaoyi/uilib/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0014J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/TeachK2Application;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$EggTeachSync;",
        "Lcn/mucang/jiakaoyi/uilib/TeachEventHandler;",
        "()V",
        "doOnAppExit",
        "",
        "doOnForeground",
        "handleEvent",
        "",
        "event",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        "initOnMainProcess",
        "syncTeach",
        "activity",
        "Landroid/app/Activity;",
        "appteachk2_release"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;-><init>()V

    return-void
.end method

.method private static final f0()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->c(Landroid/app/Activity;Lf/a/a/a/n/c/a;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/sundial/library/activity/TopActivity;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->I()V

    :cond_1
    return-void
.end method

.method public static synthetic g0()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachK2Application;->i0()V

    return-void
.end method

.method public static synthetic h0()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachK2Application;->f0()V

    return-void
.end method

.method private static final i0()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected L()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->L()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->x()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->m(Landroid/content/Context;)V

    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/jiakaoyi/uilib/e;->N()V

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/e0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/e0;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->P0Error:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-eq p1, v1, :cond_1

    .line 5
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->CarBrake:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-eq p1, v1, :cond_1

    .line 6
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->GpsError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-eq p1, v1, :cond_1

    .line 7
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->NetError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-eq p1, v1, :cond_1

    .line 8
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->ServerError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-ne p1, v1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->f(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result p1

    return p1

    .line 10
    :cond_2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->e(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result p1

    return p1
.end method

.method public i(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/d0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/d0;

    const v1, 0x7f120031

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120032

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected u()V
    .locals 4

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->u()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachBaseProvider;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3
    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4
    const-class v2, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TtsProvider;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5
    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotSignalProvider;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v1, v0, v0}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 7
    const-class v0, Lcn/mucang/android/jiakaoyi/speech/provider/AbsInteractionProvider;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/InteractionProvider;

    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/l/a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/l/a;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/b/c;->b(Lcn/mucang/android/jiakaoyi/signal/b/c$a;)V

    return-void
.end method
