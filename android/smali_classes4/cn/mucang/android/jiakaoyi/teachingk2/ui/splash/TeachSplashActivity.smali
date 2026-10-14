.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u000bH\u0002J\u0008\u0010\u0014\u001a\u00020\u000bH\u0002J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0015J\u0008\u0010\u0017\u001a\u00020\u000bH\u0002J\u0008\u0010\u0018\u001a\u00020\u000bH\u0014J\u0008\u0010\u0019\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;",
        "()V",
        "firstEvent",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;",
        "message",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "startLog",
        "appendTimeDesc",
        "",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "event",
        "attachBaseContext",
        "newBase",
        "Landroid/content/Context;",
        "doThings",
        "exeTest",
        "getStatName",
        "init",
        "logout",
        "onDestroy",
        "uploadConfig",
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


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/f;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->descTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final C()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/d;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final D()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 4
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;

    invoke-direct {v6}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;-><init>()V

    .line 5
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->setCode(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->setValue(Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/f;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/f;-><init>()V

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 9
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v4, v3

    .line 10
    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "toJSONString(\n          \u2026ect\n                    )"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0, v2}, Lcn/mucang/jiakaoyi/uilib/i/f;->n(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeachSplashActivity"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private final j(Ljava/lang/StringBuilder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    if-eqz p2, :cond_0

    const-string v0, "event.nextEvent"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->j(Ljava/lang/StringBuilder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    :cond_0
    return-void
.end method

.method private final k()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->e(I)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->d()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->a()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/d;->a()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->b()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->d()V

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->c()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->C()V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->y()V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->j()V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->type:I

    const-string v1, "keyInProjectBg"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Black:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->type:I

    const-string v1, "keyOutProjectBg"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;->getDefaultVolume()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->b(Landroid/content/Context;IZ)Z

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x202

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final l()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getEndTestEvent(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    move-result-object v2

    .line 3
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v1, p0, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v0, p0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v1, p0, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v0, p0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig;

    invoke-direct {v1, p0, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;

    invoke-direct {v0, p0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v1, p0, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->a()V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/v;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;->d(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->F(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->progressTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 3
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;->a:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->progressBar:Landroid/widget/SeekBar;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;->a:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;->a:F

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->progressTv:Landroid/widget/TextView;

    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->progressTv:Landroid/widget/TextView;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;->a:F

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;)V

    return-void
.end method

.method public static synthetic t()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->D()V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->A(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->B(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic w()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->z()V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/v;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/v;)V

    return-void
.end method

.method private final y()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/g;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final z()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeachSplashActivity"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_robot_splash_page:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_robot_splash_page)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected init()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f00\u673a\u65f6\u95f4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/log/g;->f(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v5, 0xff0c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u5e94\u7528\u542f\u52a8\u65f6\u95f4:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->versionTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->progressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;)V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->d(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->l()V

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/v;

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->k()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    invoke-virtual {v0}, Lorg/libpag/PAGView;->freeCache()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->j(Ljava/lang/StringBuilder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u542f\u5c4f\u9875\u6267\u884c\u65f6\u95f4\u6c47\u603b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
