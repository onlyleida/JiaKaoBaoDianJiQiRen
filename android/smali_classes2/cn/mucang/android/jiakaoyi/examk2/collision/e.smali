.class public Lcn/mucang/android/jiakaoyi/examk2/collision/e;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field private final B:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public y:Ljava/lang/Boolean;

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->s:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->t:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->u:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->v:Z

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->z:Ljava/lang/Boolean;

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->B:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method

.method static synthetic G(Lcn/mucang/android/jiakaoyi/examk2/collision/e;)Lcn/mucang/android/jiakaoyi/engine/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-object p0
.end method

.method private I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->w:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->w:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    return-void
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    return-void
.end method


# virtual methods
.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 9

    .line 1
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;)V

    .line 4
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;)V

    .line 5
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->s:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->s:Z

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v6, Lcn/mucang/android/jiakaoyi/examk2/collision/e$a;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/e$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/e;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v7, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 9
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->t:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 15
    :cond_2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->A:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 19
    :cond_3
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->u:Z

    .line 20
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->z:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->B:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->B:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->z:Ljava/lang/Boolean;

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->B:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    goto :goto_0

    .line 25
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez p1, :cond_6

    .line 26
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->z:Ljava/lang/Boolean;

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->B:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 28
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->v:Z

    if-nez p1, :cond_7

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 30
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->v:Z

    .line 31
    :cond_7
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz p1, :cond_8

    .line 32
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->u:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->v:Z

    if-eqz p1, :cond_8

    .line 33
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    :cond_8
    return-void
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->w:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
