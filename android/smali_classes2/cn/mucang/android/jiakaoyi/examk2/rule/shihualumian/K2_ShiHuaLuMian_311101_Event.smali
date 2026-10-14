.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private speed:F

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->speed:F

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->startTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->speed:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->speed:F

    .line 3
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    .line 4
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->startTime:J

    .line 5
    :cond_1
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    const/4 p3, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->speed:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 7
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_2
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->startTime:J

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311101_Event;->speed:F

    :cond_3
    return p3
.end method
