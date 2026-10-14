.class public Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;,
        Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;,
        Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

.field public B:Z

.field public C:Z

.field public D:Ljava/lang/Boolean;

.field private final E:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field public s:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public t:I

.field public u:Z

.field public v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

.field private w:Z

.field private x:Z

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->s:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->u:Z

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;->Start:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->A:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->B:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->C:Z

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    const-wide/16 v0, 0xbb8

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->E:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method

.method static synthetic G(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;)Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->A:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    return-object p1
.end method

.method static synthetic H(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)Lcn/mucang/android/jiakaoyi/engine/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->E:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-object p0
.end method

.method private J(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->z:Z

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->A:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;->Start:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->E:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->m(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;->Starting:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->A:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->K()V

    :cond_2
    return-void
.end method

.method private K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->E:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->E:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;->Start:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->A:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    :cond_0
    return-void
.end method

.method private L(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->s:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->s:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected E()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7d0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x1388

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    .line 4
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 5
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    .line 6
    :cond_1
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->L(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V

    .line 7
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->u:Z

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_14

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->D:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide v0

    cmpl-double v7, v0, v5

    if-lez v7, :cond_2

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v7, v1, v9, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->D:Ljava/lang/Boolean;

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->D:Ljava/lang/Boolean;

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr v0, v4

    goto :goto_2

    .line 16
    :cond_5
    iget-object v0, p4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    goto :goto_2

    .line 17
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    :goto_2
    if-eqz v0, :cond_14

    .line 18
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 19
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 20
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    double-to-int v1, v7

    sub-int/2addr v0, v2

    .line 21
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v1, v2

    .line 22
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 23
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_7

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    goto :goto_3

    .line 25
    :cond_7
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 26
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    goto :goto_3

    .line 27
    :cond_8
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v2, :cond_9

    .line 28
    iput v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    goto :goto_3

    .line 29
    :cond_9
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    add-int/2addr v0, v1

    .line 30
    div-int/2addr v0, v2

    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    goto :goto_3

    .line 31
    :cond_a
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    .line 33
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53f3\u8fb9\u7ebf\u8ddd\u79bb\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    int-to-double v7, v1

    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 34
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    .line 36
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v10, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    cmpl-double v0, v7, v5

    if-gez v0, :cond_d

    cmpl-double v0, v9, v5

    if-ltz v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_e

    .line 37
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;->More50:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    goto :goto_6

    .line 38
    :cond_e
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;->Less50:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    :goto_6
    add-double/2addr v7, v9

    double-to-int v0, v7

    .line 39
    div-int/2addr v0, v2

    goto :goto_8

    .line 40
    :cond_f
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;->Middle:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    .line 42
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->w:Z

    if-nez v0, :cond_10

    .line 43
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->w:Z

    .line 44
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->stop_right:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {p0, v0, v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->B(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_10
    const/4 v0, 0x0

    goto :goto_8

    .line 45
    :cond_11
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 46
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;->Less50:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    goto :goto_7

    .line 47
    :cond_12
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;->More50:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    .line 48
    :goto_7
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 49
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 50
    div-int/2addr v0, v2

    .line 51
    :goto_8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->v:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    sget-object v6, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;->Middle:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$StopPosition;

    if-eq v5, v6, :cond_13

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f66\u5934\u5230\u6869\u6746\u7ebf\u7684\u8ddd\u79bb\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;-><init>()V

    .line 54
    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->c:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 56
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 57
    :cond_13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/d/a;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/d/a;-><init>(I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 59
    :cond_14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_15

    .line 60
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    goto/16 :goto_9

    .line 61
    :cond_15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 62
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->x:Z

    if-nez v0, :cond_16

    .line 63
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->x:Z

    .line 64
    :cond_16
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    goto :goto_9

    .line 65
    :cond_17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1a

    .line 66
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_19

    .line 67
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 68
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    .line 69
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    if-eqz v1, :cond_1a

    int-to-double v0, v0

    cmpl-double v9, v5, v0

    if-gez v9, :cond_18

    cmpl-double v5, v7, v0

    if-ltz v5, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_9

    .line 70
    :cond_19
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_1c

    .line 71
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShangPoChecker isEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1b

    .line 74
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->x:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    goto :goto_a

    .line 75
    :cond_1b
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 76
    :cond_1c
    :goto_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_25

    .line 77
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->z:Z

    if-nez v0, :cond_1e

    .line 78
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->y:J

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gtz v7, :cond_1d

    .line 79
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->y:J

    .line 80
    :cond_1d
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 81
    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->y:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_1e

    sub-long/2addr v0, v7

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1e

    .line 82
    invoke-direct {p0, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->J(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 83
    :cond_1e
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 84
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->z:Z

    if-nez p1, :cond_1f

    const-string p1, ""

    .line 85
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 86
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/d/a;

    invoke-direct {p1, v3}, Lcn/mucang/android/jiakaoyi/examk2/d/a;-><init>(I)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 87
    :cond_1f
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->z:Z

    .line 88
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_22

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->B:Z

    if-nez p1, :cond_22

    .line 89
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 90
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 91
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, p4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 92
    invoke-static {v0, v1, p4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_21

    :cond_20
    const/4 v3, 0x1

    :cond_21
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->B:Z

    goto :goto_b

    .line 93
    :cond_22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_25

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->C:Z

    if-nez p1, :cond_25

    .line 94
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 95
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 96
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, p4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 97
    invoke-static {v0, v1, p4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_23
    const/4 v3, 0x1

    :cond_24
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->C:Z

    .line 98
    :cond_25
    :goto_b
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 99
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;-><init>()V

    .line 100
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8ddd\u79bb3\u30014\u7ebf\u7684\u8ddd\u79bb:\u53f3\u8fb9="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u5de6\u8fb9="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 101
    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->b:Ljava/lang/String;

    .line 102
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ddd\u79bb5\u30016\u7ebf\u7684\u8ddd\u79bb:\u53f3\u8fb9="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 103
    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->c:Ljava/lang/String;

    .line 104
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ddd\u79bb7\u30018\u7ebf\u7684\u8ddd\u79bb:\u53f3\u8fb9="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 105
    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->d:Ljava/lang/String;

    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ddd\u79bb9\u300110\u7ebf\u7684\u8ddd\u79bb:\u53f3\u8fb9="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 107
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->a:Ljava/lang/String;

    .line 108
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8ddd\u79bb\u53f3\u8fb9\u7ebf\u7ebf\u7684\u8ddd\u79bb:\u524d\u8fb9="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u540e\u8fb9="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 109
    invoke-static {p2, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->e:Ljava/lang/String;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u53f3\u8fb9\u7ebf\u8ddd\u79bb:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;->f:Ljava/lang/String;

    .line 111
    const-class p2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->s:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->D:Ljava/lang/Boolean;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    return-void
.end method
