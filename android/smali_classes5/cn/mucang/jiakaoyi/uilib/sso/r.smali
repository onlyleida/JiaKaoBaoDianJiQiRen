.class public final Lcn/mucang/jiakaoyi/uilib/sso/r;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0008\u0010\u0007\u001a\u00020\u0006H\u0014J\u0008\u0010\u0008\u001a\u00020\u0006H\u0014J\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginApi;",
        "Lcn/mucang/android/core/api/BaseApi;",
        "()V",
        "check",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;",
        "token",
        "",
        "getApiHost",
        "getSignKey",
        "prepare",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "/api/open/login/check.htm?token="

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "httpGet(\"/api/open/login\u2026SsoUserModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;

    return-object p1
.end method

.method public final c()Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "/api/open/login/prepare.htm?ssoName=robot-teach"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    const-class v1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "httpGet(\"/api/open/login\u2026soLoginModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;

    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://sso.kakamobi.com"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#jn09j6SViad3SZaCekV5mIpG"

    return-object v0
.end method
