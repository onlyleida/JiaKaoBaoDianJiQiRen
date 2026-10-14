.class public Lcn/mucang/android/jiakaoyi/speech/semantic/g;
.super Lcn/mucang/android/core/api/upload/FileUploadApi;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/g;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/g;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/upload/FileUploadApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/upload/UploadResult;
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/semantic/g;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sessionId"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "text"

    .line 3
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/upload/FileUploadApi;->uploadFile(Ljava/io/File;)Lcn/mucang/android/core/api/upload/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://device-monitor.ttt.mucang.cn"

    return-object v0

    :cond_0
    const-string v0, "https://device-monitor.kakamobi.cn"

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 2
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
    invoke-super {p0}, Lcn/mucang/android/core/api/upload/FileUploadApi;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/g;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#anmdQ6ZEc6ZrhHWORUmMfHx5"

    return-object v0
.end method

.method protected path()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/open/voice-file-record/upload-file-record.htm?deviceType=2"

    return-object v0
.end method
