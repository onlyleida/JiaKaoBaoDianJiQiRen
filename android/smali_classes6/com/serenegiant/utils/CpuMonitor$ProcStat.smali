.class final Lcom/serenegiant/utils/CpuMonitor$ProcStat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/CpuMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcStat"
.end annotation


# instance fields
.field private idleTime:J

.field private runTime:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->runTime:J

    .line 4
    iput-wide p3, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->idleTime:J

    return-void
.end method

.method synthetic constructor <init>(JJLcom/serenegiant/utils/CpuMonitor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/utils/CpuMonitor$ProcStat;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->set(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->runTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->idleTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/serenegiant/utils/CpuMonitor$ProcStat;Lcom/serenegiant/utils/CpuMonitor$ProcStat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->set(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)V

    return-void
.end method

.method private set(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->runTime:J

    .line 2
    iput-wide p3, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->idleTime:J

    return-void
.end method

.method private set(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)V
    .locals 2

    .line 3
    iget-wide v0, p1, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->runTime:J

    iput-wide v0, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->runTime:J

    .line 4
    iget-wide v0, p1, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->idleTime:J

    iput-wide v0, p0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->idleTime:J

    return-void
.end method
