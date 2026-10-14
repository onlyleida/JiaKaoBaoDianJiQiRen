.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/m;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J4\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0019H\u0016J\u0008\u0010\u001b\u001a\u00020\u0008H\u0002J\u0018\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010 \u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;",
        "Lcn/mucang/jiakaoyi/uilib/login/LoginListener;",
        "()V",
        "students",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "beforeLoginStart",
        "",
        "data",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
        "doLoadResource",
        "needCallback",
        "",
        "getDeviceType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;",
        "getPrivacyViews",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;",
        "loginType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "interceptLogin",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "next",
        "Lkotlin/Function0;",
        "back",
        "loadStepAlias",
        "notifyBusiness",
        "onSsoLogin",
        "activity",
        "Landroid/app/Activity;",
        "onUserLogin",
        "loginUser",
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
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->a:Ljava/util/HashSet;

    return-void
.end method

.method private final i(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/g;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/g;-><init>(Z)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final j(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/l;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/l;-><init>()V

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 1

    const-string v0, "$user"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method public static synthetic l()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->s()V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->v(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->k(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method public static synthetic o(Z)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->j(Z)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->u(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->t(Ljava/lang/Exception;)V

    return-void
.end method

.method private final r()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/d;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final s()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/g0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/g0;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/siterule/g0;->m(JI)Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    .line 6
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/k/a;->f(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginActivity"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static final t(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "$e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/h;-><init>(Ljava/lang/Exception;)V

    const/16 p0, 0x3e8

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final u(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "$e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    .line 3
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_knew:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(R.string.teachbase_knew)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    return-void
.end method

.method private static final v(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 3

    const-string v0, "$loginUser"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/facelib/FaceLoginManager;->Q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginUser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_login_success:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u767b\u5f55\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loginData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/z;->o(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/e;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/e;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->isCoach()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;

    invoke-virtual {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->A(Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    .line 7
    :cond_0
    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p3, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-nez p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->updateUserInfo(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;->a(Landroid/app/Activity;)V

    .line 11
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->a:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getLaunchPageIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 14
    :goto_1
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_adjust_seat_mirror:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getString(R.string.teachbase_adjust_seat_mirror)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->r()V

    const/4 p3, 0x1

    .line 16
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->i(Z)V

    .line 17
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->m(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    const/16 v0, 0x5a

    const/4 v3, 0x0

    .line 18
    invoke-static {p1, v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->b(Landroid/content/Context;IZ)Z

    move-result v0

    .line 19
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;

    invoke-direct {v4, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;-><init>(ZLandroid/app/Activity;)V

    .line 20
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ai_welcome_word:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.teachbase_ai_welcome_word)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->a()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getDriveSchoolName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v5, p3

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 22
    invoke-static {p3, v0, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 23
    instance-of p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    if-eqz p3, :cond_6

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 25
    :cond_6
    instance-of p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;

    if-eqz p3, :cond_7

    .line 26
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->m()V

    .line 27
    :cond_7
    :goto_4
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->l(J)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/m$a;->b(Lcn/mucang/jiakaoyi/uilib/login/m;)V

    return-void
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "next"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "back"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gtz p2, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_select_site_hint:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    invoke-interface {p4}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gtz p2, :cond_1

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_enable_teach_plan_hint:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    invoke-interface {p4}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/login/f;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/f;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string p2, "getCurrentActivity()"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    move-object v2, p1

    const/4 v3, 0x1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$interceptLogin$2;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$interceptLogin$2;-><init>(Lkotlin/jvm/b/a;)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$interceptLogin$3;

    invoke-direct {v5, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$interceptLogin$3;-><init>(Lkotlin/jvm/b/a;)V

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->y(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public d(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eq p1, v1, :cond_1

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    const-string v2, ""

    const-string v3, "ai_coach_1"

    .line 5
    invoke-direct {p1, v2, v1, v3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/h0;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/h0;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/i0;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/i0;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public e()Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    return-object v0
.end method

.method public f(Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/m$a;->a(Lcn/mucang/jiakaoyi/uilib/login/m;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    .line 2
    instance-of p1, p1, Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p1}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    :cond_0
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->i(Z)V

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public h(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Z
    .locals 5

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;->p(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 2
    const-class v0, Lcn/mucang/jiakaoyi/uilib/login/model/RobotClassTimeModel;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/model/RobotClassTimeModel;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/login/model/RobotClassTimeModel;->orderRecordId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->a:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->d()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/k;

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/login/model/RobotClassTimeModel;->orderRemainingMillis:J

    invoke-direct {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/k;-><init>(J)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 5
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v1

    const v2, 0x38271

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v1

    const v2, 0x38272

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    const v1, 0x38273

    if-ne v0, v1, :cond_2

    .line 6
    :cond_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->a:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->c()Landroidx/lifecycle/z;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/login/i;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/i;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
