.class public Lcn/mucang/android/account/g/l;
.super Lcn/mucang/android/account/g/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "captchaId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v2, "captchaCode"

    invoke-direct {v1, v2, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;->getVerifyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 5
    const-class p2, Lcn/mucang/android/account/api/data/CommonResponse;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/api/data/CommonResponse;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CommonResponse;->getCaptchaToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
