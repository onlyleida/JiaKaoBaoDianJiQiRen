.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;
.super Lcn/mucang/android/core/api/upload/FileUploadApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B+\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0003H\u0014J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0014J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0007\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;",
        "Lcn/mucang/android/core/api/upload/FileUploadApi;",
        "bucket",
        "",
        "contentType",
        "signKey",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "version1",
        "version2",
        "getApiHost",
        "getSignKey",
        "path",
        "uploadVideo",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;",
        "entity",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
        "UploadVideoResult",
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


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;->a:Ljava/lang/String;

    const-string p1, "2"

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;->b:Ljava/lang/String;

    .line 4
    invoke-super {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->getExtraParams()Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/g;->b()Ljava/util/Map;

    move-result-object p2

    const-string p3, "getExtraParams()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/engine/R$string;->product:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContext().resources.getString(R.string.product)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "params"

    .line 3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "product"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getXyToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "version"

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    sget-object p1, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;

    invoke-virtual {p0, v0, p1, v1}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    const-string v0, "upload(file, FileType.Fi\u2026dVideoResult::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;

    return-object p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://user-data-collection.ttt.mucang.cn"

    goto :goto_0

    :cond_0
    const-string v0, "https://udc.kakamobi.cn"

    :goto_0
    return-object v0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#iXNqfHM9eJlxcJh9j316gqic"

    return-object v0
.end method

.method protected path()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/open/track/upload-highlights.htm"

    return-object v0
.end method
