.class public Lcn/mucang/sundial/android/log/write/LogDirectory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/log/write/LogWriter;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogDirectory"


# instance fields
.field private final stopWriter:Lcn/mucang/sundial/android/log/write/end/StopWriter;

.field private final type:Lcn/mucang/sundial/android/log/LogType;

.field public final wrapOutput:Lcn/mucang/sundial/android/log/prefix/WrapOutput;

.field private writer:Lcn/mucang/sundial/android/log/write/LogFile;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/write/end/StopWriter;Lcn/mucang/sundial/android/log/prefix/WrapOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->stopWriter:Lcn/mucang/sundial/android/log/write/end/StopWriter;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->wrapOutput:Lcn/mucang/sundial/android/log/prefix/WrapOutput;

    return-void
.end method

.method private doWrite(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/sundial/android/log/write/LogFile;->write(Ljava/lang/Object;J)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/write/LogFile;->isFull()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/write/LogFile;->stop()V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->stopWriter:Lcn/mucang/sundial/android/log/write/end/StopWriter;

    iget-object p2, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    iget-object p2, p2, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    iget-object p3, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    invoke-interface {p1, p2, p3}, Lcn/mucang/sundial/android/log/write/end/StopWriter;->onStop(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    :cond_0
    return-void
.end method

.method private fileName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    invoke-static {v0}, Lcn/mucang/sundial/android/log/LUtils;->dir(Lcn/mucang/sundial/android/log/LogType;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/sundial/android/log/LUtils;->time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    iget-object v0, v0, Lcn/mucang/sundial/android/log/LogType;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryInit(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/log/write/LogFile;

    invoke-direct {p0}, Lcn/mucang/sundial/android/log/write/LogDirectory;->fileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/mucang/sundial/android/log/write/LogFile;-><init>(Ljava/lang/String;Lcn/mucang/sundial/android/log/LogType;J)V

    iput-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->wrapOutput:Lcn/mucang/sundial/android/log/prefix/WrapOutput;

    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    invoke-static {}, Lcn/mucang/sundial/android/log/LUtils;->getBasicInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1, p2}, Lcn/mucang/sundial/android/log/prefix/WrapOutput;->text(Lcn/mucang/sundial/android/log/LogType;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/sundial/android/log/write/LogFile;->write(Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public entityId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/log/write/LogFile;->entityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/log/write/LogFile;->stop()V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->stopWriter:Lcn/mucang/sundial/android/log/write/end/StopWriter;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    iget-object v1, v1, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    invoke-interface {v0, v1, v2}, Lcn/mucang/sundial/android/log/write/end/StopWriter;->onStop(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->writer:Lcn/mucang/sundial/android/log/write/LogFile;

    return-void
.end method

.method public write(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2, p3}, Lcn/mucang/sundial/android/log/write/LogDirectory;->tryInit(J)V

    .line 4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->wrapOutput:Lcn/mucang/sundial/android/log/prefix/WrapOutput;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    invoke-interface {v0, v1, p1, p2, p3}, Lcn/mucang/sundial/android/log/prefix/WrapOutput;->text(Lcn/mucang/sundial/android/log/LogType;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/sundial/android/log/write/LogDirectory;->doWrite(Ljava/lang/String;J)V

    return-void
.end method

.method public write([BLjava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Lcn/mucang/sundial/android/log/write/LogDirectory;->tryInit(J)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->wrapOutput:Lcn/mucang/sundial/android/log/prefix/WrapOutput;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/LogDirectory;->type:Lcn/mucang/sundial/android/log/LogType;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcn/mucang/sundial/android/log/prefix/WrapOutput;->signal(Lcn/mucang/sundial/android/log/LogType;[BLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcn/mucang/sundial/android/log/write/LogDirectory;->doWrite(Ljava/lang/String;J)V

    return-void
.end method
