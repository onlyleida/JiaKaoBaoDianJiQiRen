.class public final Lcn/mucang/jiakaoyi/uilib/activate/h;
.super Lcn/mucang/android/jiakaoyi/framework/e/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/activate/ActivateApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;",
        "()V",
        "activate",
        "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;",
        "activationCode",
        "",
        "eggBindDevice",
        "",
        "getBindDeviceQr",
        "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;",
        "getRequestConfig",
        "Lcn/mucang/android/core/api/request/model/MucangRequestConfig;",
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRequestConfig()Lcn/mucang/android/core/api/request/e/c;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/core/api/request/e/c;

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x2710

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/core/api/request/e/c;-><init>(JJJ)V

    return-object v7
.end method

.method public final m()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "/api/open/factory/bind-factory-device.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public final n()Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;

    const-string v1, "/api/open/device/get-bind-qr-code.htm"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGetData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "httpGetData(\n           \u2026nfo::class.java\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;

    return-object v0
.end method
