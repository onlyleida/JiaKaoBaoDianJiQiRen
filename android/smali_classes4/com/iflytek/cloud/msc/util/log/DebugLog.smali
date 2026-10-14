.class public Lcom/iflytek/cloud/msc/util/log/DebugLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/msc/util/log/DebugLog$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "MscSpeechLog"

.field private static b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->c:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    sput-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->c:Z

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogE(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LogI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogS(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LogS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogS(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static LogW(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LogW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getLogLevel()Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->c:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->e:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getLogLevel()Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getLogLevel()Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/iflytek/cloud/msc/util/log/DebugLog$a;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getLogLevel()Lcom/iflytek/cloud/msc/util/log/DebugLog$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    return-object v0
.end method

.method public static getShowLog()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->c:Z

    return v0
.end method

.method public static setLogLevel(Lcom/iflytek/cloud/msc/util/log/DebugLog$a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->updateJniLogStatus()V

    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->c:Z

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->updateJniLogStatus()V

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a:Ljava/lang/String;

    return-void
.end method

.method public static updateJniLogStatus()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->getShowLog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/iflytek/msc/MSC;->DebugLog(Z)I

    .line 4
    sget-object v0, Lcom/iflytek/cloud/msc/util/log/DebugLog;->b:Lcom/iflytek/cloud/msc/util/log/DebugLog$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->SetLogLevel(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateJniLogStatus exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
