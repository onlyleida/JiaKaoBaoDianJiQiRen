.class public final Lcn/mucang/android/jiakaoyi/signal/communicate/n$a;
.super Lcn/mucang/android/jiakaoyi/framework/e/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/AiCommandAdapter$ReportDeviceApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;",
        "()V",
        "reportDeviceInfo",
        "",
        "signal_release"
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
.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "/api/open/device/report-device-info.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    return-void
.end method
