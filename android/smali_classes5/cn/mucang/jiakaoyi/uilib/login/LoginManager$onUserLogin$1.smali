.class final Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->D(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Ljava/lang/Runnable;

.field final synthetic $ct:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $data:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

.field final synthetic $loginType:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field final synthetic $user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$callback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$data:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$ct:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$loginType:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->invoke$lambda-1(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 7

    const-string v0, "$user"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAuthUser()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/AccountManager;->y(Lcn/mucang/android/account/data/AuthUser;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->isDebugUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->d(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object p4, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Z)V

    .line 5
    invoke-static {p4, p1, p0, p2, p3}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$callback:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/p;->e:Lcn/mucang/android/jiakaoyi/framework/e/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/e/p$a;->a()Landroidx/lifecycle/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->c()Landroidx/lifecycle/z;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    new-instance v1, Lcn/mucang/android/account/data/AuthUser;

    invoke-direct {v1}, Lcn/mucang/android/account/data/AuthUser;-><init>()V

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/account/data/AuthUser;->setMucangId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/account/data/AuthUser;->setAuthToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/account/data/AuthUser;->setNickname(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/data/AuthUser;->setAvatar(Ljava/lang/String;)V

    .line 10
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 11
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->setAuthUser(Lcn/mucang/android/account/data/AuthUser;)V

    .line 12
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$data:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$ct:Ljava/util/concurrent/CountDownLatch;

    iget-object v8, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->$loginType:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/i;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/login/i;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->b(Ljava/lang/Runnable;)V

    return-void
.end method
