.class public Lcn/mucang/android/jiakaoyi/examk2/collision/i;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private final C:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field public D:J

.field public E:J

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->s:I

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->t:I

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->u:I

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->v:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->w:Z

    .line 7
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->x:Z

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->y:Z

    .line 9
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->z:Z

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->A:Z

    .line 11
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->B:Z

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->C:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->D:J

    .line 14
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->E:J

    .line 15
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->F:Z

    .line 16
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->G:Z

    .line 17
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->H:Z

    .line 18
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-void
.end method

.method private I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->F:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->F:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->F:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v1, :cond_1

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 6
    :cond_1
    invoke-static {p1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_2

    .line 7
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 8

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_0

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->t:I

    .line 4
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->s:I

    .line 5
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->C:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 6
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)V

    .line 7
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_2

    .line 8
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 9
    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->v:I

    if-lez v2, :cond_7

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v3, :cond_1

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 11
    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->y:Z

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, v1, :cond_3

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p4, v2, :cond_6

    .line 14
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 15
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 16
    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p4

    if-eqz p4, :cond_6

    :goto_1
    const/4 p4, 0x1

    goto :goto_2

    .line 17
    :cond_3
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v2, 0x2

    if-ne p4, v2, :cond_6

    .line 18
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 19
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->z:Z

    if-nez v2, :cond_4

    .line 20
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v2, p2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->z:Z

    .line 21
    :cond_4
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->A:Z

    if-nez v2, :cond_5

    .line 22
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v2, p2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->A:Z

    .line 23
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq v2, v3, :cond_6

    if-eqz p4, :cond_6

    .line 24
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 25
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->z:Z

    if-eqz p4, :cond_6

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->A:Z

    if-eqz p4, :cond_6

    goto :goto_1

    :cond_6
    const/4 p4, 0x0

    :cond_7
    :goto_2
    if-eqz p4, :cond_9

    .line 26
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 27
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_8

    .line 28
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->y:Z

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    goto :goto_3

    .line 29
    :cond_8
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 30
    :cond_9
    :goto_3
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->x:Z

    if-eqz p4, :cond_b

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p4, v2, :cond_b

    .line 31
    iget p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->v:I

    add-int/2addr p4, v1

    iput p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->v:I

    .line 32
    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->t:I

    if-ne p4, v2, :cond_a

    iget p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->u:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->s:I

    if-ne p4, v2, :cond_a

    add-int/2addr p4, v1

    .line 33
    iput p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->u:I

    .line 34
    :cond_a
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->w:Z

    .line 35
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->x:Z

    goto :goto_4

    .line 36
    :cond_b
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->w:Z

    if-eqz p4, :cond_c

    iget p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->v:I

    if-lez p4, :cond_c

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p4, v2, :cond_c

    .line 37
    iget p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->u:I

    add-int/2addr p4, v1

    iput p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->u:I

    .line 38
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->w:Z

    .line 39
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->x:Z

    .line 40
    :cond_c
    :goto_4
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz p4, :cond_d

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_d

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v2, :cond_d

    .line 41
    invoke-direct {p0, p2, p4, v0, v2}, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V

    goto :goto_5

    .line 42
    :cond_d
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p2, p4, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V

    .line 43
    :goto_5
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->B:Z

    if-nez p2, :cond_e

    .line 44
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->C:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 45
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->C:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 46
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v5, Lcn/mucang/android/jiakaoyi/examk2/collision/i$a;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/i$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/i;)V

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v6, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 47
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 49
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->B:Z

    .line 50
    :cond_e
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->H:Z

    if-eqz p2, :cond_11

    .line 51
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->D:J

    const-wide/16 v2, 0x0

    cmp-long p4, p2, v2

    if-nez p4, :cond_f

    .line 52
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->D:J

    goto :goto_6

    .line 54
    :cond_f
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 55
    :cond_10
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->E:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_11

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->E:J

    .line 57
    :cond_11
    :goto_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->B:Z

    if-eqz p1, :cond_13

    .line 58
    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->v:I

    iget p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->t:I

    if-gt p1, p2, :cond_12

    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->u:I

    iget p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->s:I

    if-le p1, p2, :cond_13

    .line 59
    :cond_12
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->G:Z

    :cond_13
    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
