.class public Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final PROCESS_STATS_FORMAT:[I

.field private static final PROCESS_STAT_STIME:I = 0x3

.field private static final PROCESS_STAT_UTIME:I = 0x2

.field private static final PROC_COMBINE:I = 0x100

.field private static final PROC_OUT_LONG:I = 0x2000

.field private static final PROC_PARENS:I = 0x200

.field private static final PROC_SPACE_TERM:I = 0x20

.field static final SYSTEM_CPU_FORMAT:[I


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mMyPidPercent:D

.field private mPidStatFile:Ljava/lang/String;

.field private mProcessBaseSystemTime:J

.field private mProcessBaseUserTime:J

.field private mProcessRelSystemTime:I

.field private mProcessRelUserTime:I

.field private mProcessSystemTime:J

.field private mProcessUserTime:J

.field private mReadProcFile:Ljava/lang/reflect/Method;

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mStatsData:[J

.field private final mSysCpu:[J

.field private mTotalSysPercent:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mTotalSysPercent:D

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mMyPidPercent:D

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mSysCpu:[J

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mStatsData:[J

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    const-class v0, Landroid/os/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "readProcFile"

    const/4 v2, 0x5

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, [I

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, [Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-class v5, [J

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-class v5, [F

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private getCPUIndex(Ljava/lang/String;)I
    .locals 3

    const-string v0, "CPU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getCpuFromTopCmd()F
    .locals 8

    const-string v0, "%"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top -n 1 -p "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->getCPUIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v5, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-gt v7, v5, :cond_4

    goto :goto_0

    :cond_4
    aget-object v1, v6, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_6
    return v0

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_8
    const/4 v0, 0x0

    return v0

    :goto_2
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_9
    throw v0
.end method

.method public getMyPicCpuPercent()D
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mMyPidPercent:D

    return-wide v0
.end method

.method public getTotalSysCpuPercent()D
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mTotalSysPercent:D

    return-wide v0
.end method

.method public updateCpuUsages(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_6

    iget-object v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v2, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "/proc/stat"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const/4 v7, 0x0

    aput-object v7, v3, v4

    iget-object v8, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mSysCpu:[J

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const/4 v8, 0x4

    aput-object v7, v3, v8

    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mReadProcFile:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mPidStatFile:Ljava/lang/String;

    aput-object v10, v3, v5

    sget-object v10, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    aput-object v10, v3, v6

    aput-object v7, v3, v4

    iget-object v10, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mStatsData:[J

    aput-object v10, v3, v9

    aput-object v7, v3, v8

    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mStatsData:[J

    aget-wide v10, v1, v4

    iput-wide v10, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessUserTime:J

    aget-wide v12, v1, v9

    iput-wide v12, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessSystemTime:J

    iget-wide v14, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessBaseUserTime:J

    cmp-long v1, v10, v14

    if-ltz v1, :cond_1

    iget-wide v2, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessBaseSystemTime:J

    cmp-long v1, v12, v2

    if-ltz v1, :cond_1

    sub-long/2addr v10, v14

    long-to-int v1, v10

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessRelUserTime:I

    sub-long/2addr v12, v2

    long-to-int v1, v12

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessRelSystemTime:I

    goto :goto_0

    :cond_1
    iput v5, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessRelUserTime:I

    iput v5, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessRelSystemTime:I

    :goto_0
    iget-object v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mSysCpu:[J

    aget-wide v2, v1, v5

    aget-wide v6, v1, v6

    add-long/2addr v2, v6

    aget-wide v6, v1, v4

    aget-wide v9, v1, v9

    aget-wide v11, v1, v8

    const/4 v4, 0x5

    aget-wide v13, v1, v4

    const/4 v4, 0x6

    move-wide v15, v6

    aget-wide v5, v1, v4

    iget-wide v7, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseUserTime:J

    cmp-long v1, v2, v7

    if-ltz v1, :cond_3

    move-wide/from16 v17, v2

    iget-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseSystemTime:J

    cmp-long v3, v15, v1

    if-ltz v3, :cond_4

    iget-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseIoWaitTime:J

    cmp-long v19, v11, v3

    if-ltz v19, :cond_4

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseIrqTime:J

    cmp-long v21, v13, v3

    if-ltz v21, :cond_4

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseSoftIrqTime:J

    cmp-long v23, v5, v3

    if-ltz v23, :cond_4

    move-wide/from16 v23, v3

    iget-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseIdleTime:J

    cmp-long v25, v9, v3

    if-ltz v25, :cond_4

    sub-long v7, v17, v7

    long-to-int v8, v7

    iput v8, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelUserTime:I

    sub-long v1, v15, v1

    long-to-int v2, v1

    iput v2, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelSystemTime:I

    move v7, v2

    sub-long v1, v11, v19

    long-to-int v2, v1

    iput v2, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelIoWaitTime:I

    move-wide/from16 v19, v11

    sub-long v11, v13, v21

    long-to-int v1, v11

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelIrqTime:I

    sub-long v11, v5, v23

    long-to-int v12, v11

    iput v12, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelSoftIrqTime:I

    sub-long v3, v9, v3

    long-to-int v4, v3

    iput v4, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v1

    add-int/2addr v8, v12

    add-int/2addr v8, v4

    int-to-long v1, v8

    const-wide/16 v3, 0x1

    cmp-long v7, v1, v3

    if-lez v7, :cond_5

    iget v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessRelUserTime:I

    iget v4, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessRelSystemTime:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    div-long/2addr v3, v1

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    iput-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mMyPidPercent:D

    iget v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelUserTime:I

    iget v4, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    div-long/2addr v3, v1

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mTotalSysPercent:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double v7, v1, v3

    if-lez v7, :cond_2

    iput-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mTotalSysPercent:D

    :cond_2
    iget-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mMyPidPercent:D

    iget-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mTotalSysPercent:D

    cmpl-double v7, v1, v3

    if-lez v7, :cond_5

    iput-wide v3, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mMyPidPercent:D

    goto :goto_1

    :cond_3
    move-wide/from16 v17, v2

    :cond_4
    move-wide/from16 v19, v11

    const/4 v1, 0x0

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelUserTime:I

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelSystemTime:I

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelIoWaitTime:I

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelIrqTime:I

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelSoftIrqTime:I

    iput v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mRelIdleTime:I

    :cond_5
    :goto_1
    iget-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessUserTime:J

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessBaseUserTime:J

    iget-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessSystemTime:J

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mProcessBaseSystemTime:J

    move-wide/from16 v2, v17

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseUserTime:J

    move-wide v1, v15

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseSystemTime:J

    move-wide/from16 v1, v19

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseIoWaitTime:J

    iput-wide v13, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseIrqTime:J

    iput-wide v5, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseSoftIrqTime:J

    iput-wide v9, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mBaseIdleTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->getCpuFromTopCmd()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->mMyPidPercent:D

    :catch_0
    :cond_7
    :goto_2
    return-void
.end method
