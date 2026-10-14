.class final Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixents/sdk/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilePrintRunnableError"
.end annotation


# static fields
.field private static printWriter:Ljava/io/PrintWriter;


# instance fields
.field private level:I

.field private msg:Ljava/lang/String;

.field private t:Ljava/lang/Throwable;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->level:I

    .line 4
    iput-object p2, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->tag:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->msg:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->t:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/sixents/sdk/utils/LogUtils$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "|"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOGUTILS = "

    .line 3
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Rtcm"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 7
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RtcmErrLog.log"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    .line 9
    :cond_1
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    iget v3, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->level:I

    invoke-static {v3}, Lcom/sixents/sdk/utils/LogUtils;->levelName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    sget-object v3, Lcom/sixents/sdk/utils/LogUtils;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->t:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 18
    sget-object v2, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 19
    :cond_2
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 20
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x1

    .line 22
    :goto_0
    invoke-static {}, Lcom/sixents/sdk/utils/LogUtils;->access$000()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lt v2, v1, :cond_3

    if-eqz v0, :cond_4

    .line 23
    :cond_3
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;->printWriter:Ljava/io/PrintWriter;

    :cond_4
    return-void
.end method
