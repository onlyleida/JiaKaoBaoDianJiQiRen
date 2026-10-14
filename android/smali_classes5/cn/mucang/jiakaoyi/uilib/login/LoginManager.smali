.class public final Lcn/mucang/jiakaoyi/uilib/login/LoginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J*\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J2\u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0007J2\u0010\u0018\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0008\u0010\u001b\u001a\u00020\u0006H\u0007J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ(\u0010\u001d\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J0\u0010\u001d\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0008H\u0007J\u001a\u0010\u001f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010 \u001a\u0004\u0018\u00010\u0017H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/LoginManager;",
        "",
        "()V",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/login/LoginListener;",
        "changeReadState",
        "",
        "all",
        "",
        "dispatchUserLogin",
        "activity",
        "Landroid/app/Activity;",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "data",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
        "ct",
        "Ljava/util/concurrent/CountDownLatch;",
        "doLogin",
        "loginType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "errCall",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "handleReadState",
        "init",
        "login",
        "logout",
        "onSsoLogin",
        "onUserLogin",
        "sync",
        "ssoLogin",
        "userToken",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

.field private static b:Lcn/mucang/jiakaoyi/uilib/login/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final A()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/d;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/d;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/d;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final C(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/m;->g(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static final D(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Z)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u767b\u5f55\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 2
    new-instance p4, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 3
    :goto_0
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/login/a;

    invoke-direct {v7, p4}, Lcn/mucang/jiakaoyi/uilib/login/a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 4
    sget-object v8, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;

    move-object v0, v9

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;-><init>(Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    new-instance p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$2;

    invoke-direct {p0, v7, p4}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$2;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v8, p1, p2, v9, p0}, Lcn/mucang/jiakaoyi/uilib/login/m;->c(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    :goto_1
    if-eqz p4, :cond_2

    const-wide/16 p0, 0x7530

    .line 5
    invoke-static {v7, p0, p1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 6
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->await()V

    :cond_2
    return-void
.end method

.method private static final E(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method

.method public static final F(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u8bbe\u7f6e sso token\uff1a"

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/p;->e:Lcn/mucang/android/jiakaoyi/framework/e/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/e/p$a;->a()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->o(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/j;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/j;-><init>(Landroid/app/Activity;)V

    const-string p0, "\u6b63\u5728\u767b\u5f55"

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {p1, v0, p0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final G(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/a;->m()Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->c()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->a()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/e/q;->a:Lcn/mucang/android/jiakaoyi/framework/e/q;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/e/q;->d(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->studentId:Ljava/lang/String;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->q:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->B(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/p;->e:Lcn/mucang/android/jiakaoyi/framework/e/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/e/p$a;->a()Landroidx/lifecycle/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 9
    instance-of v0, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "\u767b\u5f55\u5931\u8d25"

    .line 11
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->e(Z)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->g(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static final synthetic c()Lcn/mucang/jiakaoyi/uilib/login/m;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    return-object v0
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->l(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private final e(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/d;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/d;-><init>(Z)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Z)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/m;->d(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->c()Z

    goto :goto_0

    .line 5
    :cond_3
    instance-of v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->c()Z

    goto :goto_0

    .line 7
    :cond_4
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private final g(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    if-nez p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    :goto_0
    new-instance p4, Lcn/mucang/jiakaoyi/uilib/login/b;

    invoke-direct {p4, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/b;-><init>(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    invoke-static {p4}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final h(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/m;->a(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    :goto_0
    return-void
.end method

.method public static final i(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcn/mucang/jiakaoyi/uilib/login/m;->f(Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    .line 2
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/f;

    invoke-direct {v1, p1, p2, p0}, Lcn/mucang/jiakaoyi/uilib/login/f;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Landroid/app/Activity;)V

    .line 3
    sget p0, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_logging_in:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_logging_fail:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p0, p1, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->i(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public static synthetic j(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->i(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "$loginType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->y(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {p2, v0, p0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->D(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Z)V

    :cond_0
    return-void
.end method

.method private final l(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p2}, Lcn/mucang/jiakaoyi/uilib/login/m;->d(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;

    .line 4
    invoke-interface {v5}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->e()Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-eqz v2, :cond_5

    .line 5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 6
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-ne p2, v1, :cond_6

    .line 7
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->e(Z)V

    .line 8
    :cond_6
    invoke-direct {p0, p1, p3, p4, p5}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->g(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_3

    .line 9
    :cond_7
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/login/c;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/login/c;-><init>(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v7}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private static final m(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 10

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$closeListener$1;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$closeListener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 4
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;

    .line 5
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;

    move-object v3, v9

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    .line 6
    invoke-direct {v2, p0, p1, v9, v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    check-cast v2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;

    new-instance p0, Lcn/mucang/jiakaoyi/uilib/login/h;

    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/login/h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final n(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$privacyAgreementDialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public static final o(Lcn/mucang/jiakaoyi/uilib/login/m;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    return-void
.end method

.method public static synthetic p(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->E(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic q(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->h(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    return-void
.end method

.method public static synthetic r(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->m(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic s(Z)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->f(Z)V

    return-void
.end method

.method public static synthetic t(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->C(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->k(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic v()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->A()V

    return-void
.end method

.method public static synthetic w(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->n(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic x(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->G(Landroid/app/Activity;)V

    return-void
.end method

.method public static final y(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;
    .locals 4

    const-string v0, "loginType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u767b\u5f55\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/d;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/d;-><init>()V

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/login/m;->e()Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/login/o/d;->m(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    move-result-object p1

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b:Lcn/mucang/jiakaoyi/uilib/login/m;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p0}, Lcn/mucang/jiakaoyi/uilib/login/m;->h(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)Z

    move-result p0

    if-ne p0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    return-object v2
.end method

.method public static final z()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->m()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->c()Landroidx/lifecycle/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/g;->a:Lcn/mucang/jiakaoyi/uilib/login/g;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final B(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/e;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/e;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
