.class public Lcn/mucang/android/core/api/upload/FileUploadApi;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;
    }
.end annotation


# static fields
.field public static final TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final TYPE_APPLICATION_ZIP:Ljava/lang/String; = "application/zip"

.field public static final TYPE_AUDIO_AAC:Ljava/lang/String; = "audio/x-aac"

.field public static final TYPE_IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final TYPE_IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final TYPE_IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final TYPE_VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final TYPE_VIDEO_MPEG:Ljava/lang/String; = "video/mpeg"


# instance fields
.field private fileType:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

.field private final paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;

.field private final server:Ljava/lang/String;

.field private final signKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->server:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->path:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->signKey:Ljava/lang/String;

    .line 5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->paramsMap:Ljava/util/Map;

    const-string v0, "bucket"

    .line 6
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentType"

    .line 7
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    .line 9
    iput-object p1, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->server:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->path:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->signKey:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->paramsMap:Ljava/util/Map;

    const-string p2, "bucket"

    .line 13
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentType"

    .line 14
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->server:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->server:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "https://upload-image.kakamobi.cn"

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->paramsMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getRequestConfig()Lcn/mucang/android/core/api/request/e/c;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/core/api/request/e/c;

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x2710

    const-wide/32 v5, 0x493e0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/core/api/request/e/c;-><init>(JJJ)V

    return-object v7
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->signKey:Ljava/lang/String;

    return-object v0
.end method

.method protected path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->path:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->path:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "/api/open/upload.htm"

    return-object v0
.end method

.method protected upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->fileType:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    .line 4
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Image:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-string v1, "type"

    if-ne p2, v0, :cond_0

    .line 5
    iget-object p2, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->paramsMap:Ljava/util/Map;

    const-string v0, "image"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Video:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Audio:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    if-ne p2, v0, :cond_2

    .line 7
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->paramsMap:Ljava/util/Map;

    const-string v0, "file"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->path()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method protected upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/api/upload/UploadResult;",
            ">(",
            "Ljava/io/File;",
            "Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method protected upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/api/upload/UploadResult;",
            ">(",
            "Ljava/io/File;",
            "Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/mucang/android/core/http/c/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p4}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/api/upload/UploadResult;

    return-object p1
.end method

.method public uploadAudio(Ljava/io/File;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Audio:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadResult;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadAudio(Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Audio:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadResult;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadFile(Ljava/io/File;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadResult;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadFile(Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadResult;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadGeneral(Ljava/io/File;Ljava/lang/String;Lcn/mucang/android/core/http/c/b;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/upload/FileUploadApi;->paramsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "contentType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->valueOf(Ljava/lang/String;)Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p2, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->File:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public uploadImage(Ljava/io/File;)Lcn/mucang/android/core/api/upload/UploadImageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Image:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadImageResult;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/api/upload/UploadImageResult;

    return-object p1
.end method

.method public uploadImage(Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadImageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Image:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadImageResult;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/api/upload/UploadImageResult;

    return-object p1
.end method

.method public uploadVideo(Ljava/io/File;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Video:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadResult;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadVideo(Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;->Video:Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;

    const-class v1, Lcn/mucang/android/core/api/upload/UploadResult;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/mucang/android/core/api/upload/FileUploadApi;->upload(Ljava/io/File;Lcn/mucang/android/core/api/upload/FileUploadApi$FileType;Ljava/lang/Class;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method
