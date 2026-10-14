.class Lcn/mucang/android/core/task/SubTask$DownloadSubTask;
.super Lcn/mucang/android/core/task/SubTask;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/task/SubTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadSubTask"
.end annotation


# instance fields
.field private md5:Ljava/lang/String;

.field private subTaskId:J

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/task/SubTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTaskId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->subTaskId:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->md5:Ljava/lang/String;

    return-void
.end method

.method public setSubTaskId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->subTaskId:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->url:Ljava/lang/String;

    return-void
.end method
