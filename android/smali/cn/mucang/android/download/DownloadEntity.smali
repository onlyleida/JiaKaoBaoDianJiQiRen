.class public Lcn/mucang/android/download/DownloadEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private allowNetworkType:I

.field private contentLength:J

.field private downloadGroup:Ljava/lang/String;

.field private downloadStatus:I

.field private downloadedLength:J

.field private etag:Ljava/lang/String;

.field private finishTime:J

.field private headers:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private notification:Z

.field private startTime:J

.field private storePath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public static createFromRequest(Lcn/mucang/android/download/client/DownloadManager$Request;)Lcn/mucang/android/download/DownloadEntity;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/download/DownloadEntity;

    invoke-direct {v0}, Lcn/mucang/android/download/DownloadEntity;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->d:I

    iput v1, v0, Lcn/mucang/android/download/DownloadEntity;->allowNetworkType:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->title:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->url:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->e:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->downloadGroup:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->f:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->mimeType:Ljava/lang/String;

    .line 7
    iget-boolean v2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->h:Z

    iput-boolean v2, v0, Lcn/mucang/android/download/DownloadEntity;->notification:Z

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->url:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/download/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->mimeType:Ljava/lang/String;

    .line 13
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->g:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/download/DownloadEntity;->storePath:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object p0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/download/DownloadEntity;->headers:Ljava/lang/String;

    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/download/DownloadEntity;->startTime:J

    return-object v0
.end method


# virtual methods
.method public getAllowNetworkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/download/DownloadEntity;->allowNetworkType:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadEntity;->contentLength:J

    return-wide v0
.end method

.method public getDownloadGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->downloadGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/download/DownloadEntity;->downloadStatus:I

    return v0
.end method

.method public getDownloadedLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadEntity;->downloadedLength:J

    return-wide v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadEntity;->finishTime:J

    return-wide v0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->headers:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadEntity;->startTime:J

    return-wide v0
.end method

.method public getStorePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->storePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/DownloadEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isNotification()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/download/DownloadEntity;->notification:Z

    return v0
.end method

.method public setAllowNetworkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/download/DownloadEntity;->allowNetworkType:I

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/download/DownloadEntity;->contentLength:J

    return-void
.end method

.method public setDownloadGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->downloadGroup:Ljava/lang/String;

    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/download/DownloadEntity;->downloadStatus:I

    return-void
.end method

.method public setDownloadedLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/download/DownloadEntity;->downloadedLength:J

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->etag:Ljava/lang/String;

    return-void
.end method

.method public setFinishTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/download/DownloadEntity;->finishTime:J

    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->headers:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setNotification(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/download/DownloadEntity;->notification:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/download/DownloadEntity;->startTime:J

    return-void
.end method

.method public setStorePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->storePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/DownloadEntity;->url:Ljava/lang/String;

    return-void
.end method
