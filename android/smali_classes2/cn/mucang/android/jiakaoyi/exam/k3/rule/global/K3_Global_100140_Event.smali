.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private lastSpeed:F

.field private needCheck:Z

.field private startTime:J

.field private thresholdSpeed:I

.field private thresholdTime:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->startTime:J

    const/high16 p2, -0x40800000    # -1.0f

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->lastSpeed:F

    const/4 p2, 0x3

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->thresholdTime:I

    const/16 p2, 0xf

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->thresholdSpeed:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->needCheck:Z

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200262:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\*"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 10
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->thresholdTime:I

    .line 11
    aget-object p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->thresholdSpeed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "config.p200262 \u914d\u7f6e\u9519\u8bef\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200262:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "200262 \u914d\u7f6e\u9519\u8bef\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200262:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 2
    iget-boolean p3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz p3, :cond_0

    .line 3
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->startTime:J

    sub-long v0, p2, v0

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->thresholdTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->lastSpeed:F

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->thresholdSpeed:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 4
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->startTime:J

    .line 5
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->lastSpeed:F

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->startTime:J

    .line 7
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100140_Event;->lastSpeed:F

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
