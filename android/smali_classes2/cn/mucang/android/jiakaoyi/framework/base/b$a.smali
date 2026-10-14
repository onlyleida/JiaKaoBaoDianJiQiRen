.class public final Lcn/mucang/android/jiakaoyi/framework/base/b$a;
.super Lcn/mucang/android/jiakaoyi/framework/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/ExceptionReporter$UploadExceptionApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;",
        "()V",
        "uploadException",
        "",
        "file",
        "Ljava/io/File;",
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/io/g;->b(Ljava/io/File;)[B

    move-result-object p1

    const-string v0, "/api/open/error-info/add-error-info.htm"

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[B)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1

    return p1
.end method
