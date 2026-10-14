.class public final Lcn/mucang/jiakaoyi/uilib/i/a;
.super Lcn/mucang/jiakaoyi/uilib/i/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/api/CacheDeviceApi;",
        "Lcn/mucang/jiakaoyi/uilib/api/JResponseCacheApi;",
        "()V",
        "getActivateStatus",
        "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;",
        "needCache",
        "",
        "getDeviceAgent",
        "Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;",
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
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/i/i;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/jiakaoyi/uilib/i/a;ZILjava/lang/Object;)Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/i/a;->b(Z)Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Z)Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/e;->a:Lcn/mucang/jiakaoyi/uilib/i/s/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->a(Z)Lcn/mucang/android/core/api/cache/c;

    move-result-object p1

    const-string v0, "/api/open/device/query-status.htm"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/core/api/cache/b;->httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "httpGet(\n            Jky\u2026del::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    return-object p1
.end method

.method public final d(Z)Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/i/s/e;->a:Lcn/mucang/jiakaoyi/uilib/i/s/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/i/s/e;->a(Z)Lcn/mucang/android/core/api/cache/c;

    move-result-object p1

    const-string v0, "/api/open/device/get-paas-info.htm"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/core/api/cache/b;->httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "httpGet(\n            Jky\u2026(DeviceAgent::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;

    return-object p1
.end method
