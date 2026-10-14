.class final Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;
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
    name = "FileSaveRunnableData"
.end annotation


# static fields
.field private static printWriter:Ljava/io/PrintWriter;


# instance fields
.field private msg:Ljava/lang/String;

.field private t:Ljava/lang/Throwable;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->tag:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->msg:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->t:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/sixents/sdk/utils/LogUtils$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "|"

    .line 1
    :try_start_0
    sget-object v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Rtcm"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 6
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GGAData"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sixents/sdk/utils/LogUtils;->TIME_FORMAT_LOG:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    .line 8
    :cond_1
    sget-object v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    sget-object v2, Lcom/sixents/sdk/utils/LogUtils;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->t:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 13
    sget-object v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 14
    :cond_2
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 15
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
