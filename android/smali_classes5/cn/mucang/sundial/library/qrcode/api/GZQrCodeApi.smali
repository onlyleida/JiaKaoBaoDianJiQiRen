.class public final Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;
.super Lcn/mucang/sundial/library/http/SundialApi;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;",
        "Lcn/mucang/sundial/library/http/SundialApi;",
        "",
        "isSignIn",
        "Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;",
        "getQrCode",
        "(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;",
        "",
        "token",
        "Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;",
        "getLoginStatusResult",
        "(Ljava/lang/String;)Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/http/SundialApi;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoginStatusResult(Ljava/lang/String;)Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "registerInfo"

    .line 3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "registerInfo.deviceCode"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deviceGlobalCode"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "qrToken"

    .line 4
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class p1, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

    const-string v0, "/api/open/query/get-check-result.htm"

    invoke-static {p0, v0, p1, v1}, Lcn/mucang/sundial/library/http/SundialApi;->access$httpGetData(Lcn/mucang/sundial/library/http/SundialApi;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

    return-object p1
.end method

.method public final getQrCode(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "CheckIn"

    goto :goto_0

    :cond_0
    const-string p1, "CheckOut"

    .line 2
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "registerInfo"

    .line 3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "registerInfo.deviceCode"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deviceGlobalCode"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "checkStatus"

    .line 4
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class p1, Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    const-string v0, "/api/open/query/get-qr-url.htm"

    invoke-static {p0, v0, p1, v1}, Lcn/mucang/sundial/library/http/SundialApi;->access$httpGetData(Lcn/mucang/sundial/library/http/SundialApi;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    return-object p1
.end method
