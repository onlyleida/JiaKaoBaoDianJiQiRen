.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/b0;
.super Lcn/mucang/android/jiakaoyi/framework/e/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;",
        "()V",
        "bindCar",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;",
        "plateNum",
        "",
        "getBindInfo",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "plateNum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 1
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {v2, v0, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/api/open/device/bind-car.htm"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "httpPost(\n            \"/\u2026(CarBindInfo::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    return-object p1
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "/api/open/device/query-device-info.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "httpGet(\"/api/open/devic\u2026(CarBindInfo::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    return-object v0
.end method
