.class public Lcn/mucang/android/jiakaoyi/examk2/collision/g;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public s:Z

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public u:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p4, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    :cond_0
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->s:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    if-nez p1, :cond_2

    .line 5
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->s:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    :cond_2
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->H(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p4, :cond_7

    const/4 p1, 0x0

    .line 9
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_3

    .line 10
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    .line 11
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->u:Z

    if-nez p4, :cond_5

    .line 12
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->u:Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, v0, :cond_5

    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 14
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_4

    .line 15
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p4, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    .line 16
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-double v1, p4

    cmpl-double p4, p2, v1

    if-lez p4, :cond_5

    :cond_4
    const/4 p1, 0x1

    :cond_5
    :goto_0
    if-eqz p1, :cond_7

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6

    .line 19
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->u:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    goto :goto_1

    .line 20
    :cond_6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    :cond_7
    :goto_1
    return-void
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->s:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
