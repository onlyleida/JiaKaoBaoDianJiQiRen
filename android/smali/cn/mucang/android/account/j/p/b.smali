.class public final Lcn/mucang/android/account/j/p/b;
.super Lcn/mucang/android/account/g/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0014J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/account/one_key_login/api/NumAuthApi;",
        "Lcn/mucang/android/account/api/AccountCacheBaseApi;",
        "()V",
        "getApiHost",
        "",
        "getSignKey",
        "numberAuth",
        "Lcn/mucang/android/account/api/data/NumAuthResponse;",
        "token",
        "phoneNum",
        "account_release"
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
    invoke-direct {p0}, Lcn/mucang/android/account/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/NumAuthResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "phoneNum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/r0;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 2
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v3, "phone"

    invoke-direct {v2, v3, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    .line 3
    new-instance p2, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v2, "accessCode"

    invoke-direct {p2, v2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 4
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string p2, "outId"

    invoke-direct {p1, p2, v0}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 5
    invoke-static {v1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "/api/open/verify/verify-phone.htm"

    .line 6
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    const-class p2, Lcn/mucang/android/account/api/data/NumAuthResponse;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/api/data/NumAuthResponse;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://dypns.ttt.mucang.cn"

    goto :goto_0

    :cond_0
    const-string v0, "https://dypns.mucang.cn"

    :goto_0
    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#b253PIJ2b5ZvhZedmqeCfHNF"

    return-object v0
.end method
