.class public abstract Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_VALUE:I = -0x5f5e0ff


# instance fields
.field public config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public rpmRate:I

.field public startAngel:F

.field private final startAngleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startEstimateDistance:F

.field public startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x5f5e0ff

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    const v0, -0x334143e0    # -1.0E8f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    return-void
.end method

.method private meanStart()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method protected beforeGyroCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->beforeGyroCount()I

    move-result p2

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    const-wide/32 v2, -0x5f5e0ff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 3
    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    .line 4
    :cond_0
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    const p3, -0x334143e0    # -1.0E8f

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    .line 6
    :cond_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    cmpg-double v0, p2, v2

    if-gez v0, :cond_2

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngleList:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->meanStart()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    :cond_2
    return-void
.end method
