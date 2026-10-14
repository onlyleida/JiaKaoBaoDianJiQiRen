.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private startTime:J

.field private final stepTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->types:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->stepTypes:Ljava/util/List;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->v()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    iget v1, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->number:I

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->types:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->stepTypes:Ljava/util/List;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->number:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 6
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    return v0

    .line 7
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p1, :cond_4

    .line 8
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    .line 9
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    .line 10
    :cond_3
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    sub-long/2addr v1, v3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_5

    .line 11
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->startTime:J

    :cond_5
    return v0
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->types:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401168:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300109_Event;->stepTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
