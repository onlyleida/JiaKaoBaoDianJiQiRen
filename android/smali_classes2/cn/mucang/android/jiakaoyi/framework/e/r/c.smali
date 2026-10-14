.class public final Lcn/mucang/android/jiakaoyi/framework/e/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/request/d/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/api/intercept/GlobalResponseInterceptor;",
        "Lcn/mucang/android/core/api/request/interceptor/ResponseInterceptor;",
        "()V",
        "interceptResponse",
        "",
        "response",
        "Lcn/mucang/android/core/api/ApiResponse;",
        "request",
        "Lcn/mucang/android/core/api/request/MucangRequest;",
        "framework_release"
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsLogoutDataProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsLogoutDataProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsLogoutDataProvider;->handleLogout()V

    .line 2
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->s(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/r/c;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/request/MucangRequest;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_b

    if-nez p1, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_b

    if-nez p1, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 2
    :cond_5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    if-nez p1, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 3
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result p2

    const/16 v2, 0x28

    if-ne p2, v2, :cond_7

    :goto_3
    if-eqz v0, :cond_f

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 5
    :cond_9
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result p2

    if-nez p2, :cond_a

    return-void

    .line 6
    :cond_a
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    const-string p2, "getContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->r(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 8
    :cond_b
    :goto_4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    if-nez p2, :cond_c

    const/4 p2, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {p2}, Lcn/mucang/android/core/api/request/MucangRequest;->d()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "url.path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, ""

    .line 11
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u767b\u5f55\u5931\u6548,\u56de\u5230\u9996\u9875:errorCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p2

    if-eqz p2, :cond_d

    return-void

    .line 13
    :cond_d
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 15
    :cond_e
    const-class p1, Lcn/mucang/android/jiakaoyi/framework/e/r/b;

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    .line 17
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/e/r/b;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/framework/e/r/b;-><init>()V

    .line 18
    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/e/r/a;->a:Lcn/mucang/android/jiakaoyi/framework/e/r/a;

    const-wide/16 v0, 0x3e8

    .line 19
    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_f
    :goto_7
    return-void
.end method
