.class public Lcn/mucang/android/core/webview/tracker/http/model/Track;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CODE_200:I = 0xc8

.field public static final CODE_302:I = 0x12e


# instance fields
.field private durationMs:J

.field private httpCode:I

.field private startMs:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/webview/tracker/a;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/tracker/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->url:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/tracker/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->startMs:J

    .line 4
    iput p2, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->httpCode:I

    .line 5
    iput-wide p3, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->durationMs:J

    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->durationMs:J

    return-wide v0
.end method

.method public getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->httpCode:I

    return v0
.end method

.method public getStartMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->startMs:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDurationMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->durationMs:J

    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->httpCode:I

    return-void
.end method

.method public setStartMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->startMs:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", httpCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->httpCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->startMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/core/webview/tracker/http/model/Track;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
