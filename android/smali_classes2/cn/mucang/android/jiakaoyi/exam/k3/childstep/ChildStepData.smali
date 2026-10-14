.class public Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AroundCarStep:I = 0x1

.field public static FingerPrintStep:I = 0x0

.field public static PlayingLinetStep:I = 0x3

.field public static ShangCheStep:I = 0x4

.field public static ThreeTouchStep:I = 0x2


# instance fields
.field public dialogDesc:Ljava/lang/String;

.field public endTime:J

.field public volatile finish:Z

.field public finishTime:J

.field private forceEnd:Z

.field public volatile isEnd:Z

.field public volatile isFinishLightExam:Z

.field public volatile isPause:Z

.field public isPlayEndVoice:Z

.field public isPlayStartVoice:Z

.field public isShowDialog:Z

.field public volatile isStart:Z

.field public isTimeOut:Z

.field public name:Ljava/lang/String;

.field public nextStepStartTime:J

.field public playingStartVoiceEnd:J

.field public startTime:J

.field public stepId:I

.field public stepTime:J

.field public waitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->waitTime:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->forceEnd:Z

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->stepId:I

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 6
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->waitTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public setEnd()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->endTime:J

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->waitTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->nextStepStartTime:J

    :cond_0
    return-void
.end method

.method public setFinish()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finishTime:J

    :cond_0
    return-void
.end method

.method public setForceEnd()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->forceEnd:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->endTime:J

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->nextStepStartTime:J

    return-void
.end method

.method public setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->stepTime:J

    :cond_0
    return-void
.end method
