.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final isSeriesCheck:Z

.field private final limitTime:J

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;JZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->limitTime:J

    .line 5
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->isSeriesCheck:Z

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-wide/16 v2, -0x1

    if-ne p1, v0, :cond_4

    .line 3
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    .line 4
    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->isSeriesCheck:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 6
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    sub-long/2addr p1, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->limitTime:J

    cmp-long v6, p1, v4

    if-lez v6, :cond_5

    .line 7
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    return v0

    .line 8
    :cond_2
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    sub-long/2addr p1, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->limitTime:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 9
    :cond_4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearTimeLimitChecker;->startTime:J

    :cond_5
    return v1
.end method
