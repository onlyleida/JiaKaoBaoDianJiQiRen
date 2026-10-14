.class public Lcn/mucang/android/jiakaoyi/examk2/collision/h;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/collision/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field public C:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field private D:J

.field public E:F

.field public F:D

.field private G:Z

.field protected H:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:D

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->s:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->t:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->u:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->v:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->w:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->x:Z

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->y:D

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->z:Ljava/lang/Boolean;

    .line 10
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->C:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->D:J

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    .line 13
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    .line 14
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->G:Z

    .line 15
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H:Z

    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->D:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->D:J

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->D:J

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->x(Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->x(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->u:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->u:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->u:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method

.method private K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->C:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->C:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 6
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->C:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_2

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Z
    .locals 0

    .line 1
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz p1, :cond_0

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 9

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_3

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->r:D

    const-wide/16 v4, 0x0

    cmpl-double p4, v2, v4

    if-eqz p4, :cond_0

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p4

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p4, :cond_2

    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 7
    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_1

    .line 8
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 9
    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    add-double/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    move-object v2, v6

    goto :goto_0

    .line 10
    :cond_1
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    add-double/2addr v4, v2

    double-to-float p4, v4

    div-float/2addr p4, v0

    .line 11
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->a(F)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    goto :goto_1

    .line 12
    :cond_2
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 13
    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 14
    iget-object v4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 15
    iget-object v5, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 16
    invoke-virtual {v4, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float p4, v4

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p4

    float-to-double v4, p4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v2

    double-to-float p4, v4

    div-float/2addr p4, v0

    .line 17
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->a(F)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    .line 18
    :cond_3
    :goto_1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_17

    .line 19
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p4

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->t:Z

    .line 20
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p4

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->s:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    .line 21
    iget p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    cmpl-float p4, p4, v0

    if-nez p4, :cond_4

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    .line 23
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 24
    const-class p4, Lcn/mucang/android/jiakaoyi/examk2/collision/h$a;

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p4

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/collision/h$a;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    iget v5, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    float-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/examk2/collision/h$a;-><init>(DD)V

    invoke-virtual {p4, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 25
    :cond_4
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V

    .line 26
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V

    .line 27
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->x:Z

    const/4 v2, 0x1

    if-nez p4, :cond_5

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->s:Z

    if-eqz p4, :cond_5

    .line 28
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->x:Z

    .line 29
    :cond_5
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->x:Z

    if-eqz p4, :cond_8

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->w:Z

    if-nez p4, :cond_8

    .line 30
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_6

    .line 31
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->w:Z

    goto :goto_2

    .line 32
    :cond_6
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    int-to-double v3, p4

    .line 33
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p4, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 34
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p4, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double p4, v5, v3

    if-gez p4, :cond_7

    cmpl-double p4, v7, v3

    if-ltz p4, :cond_8

    .line 35
    :cond_7
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->w:Z

    .line 36
    :cond_8
    :goto_2
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->w:Z

    if-eqz p4, :cond_b

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->z:Ljava/lang/Boolean;

    if-nez p4, :cond_b

    .line 37
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p4, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p4, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_3

    :cond_9
    const/4 p4, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 p4, 0x1

    :goto_4
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->z:Ljava/lang/Boolean;

    .line 38
    :cond_b
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->y:D

    .line 39
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 40
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    if-eqz p4, :cond_c

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->v:Z

    if-nez v3, :cond_c

    .line 41
    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p4

    .line 42
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p4, v3, :cond_c

    .line 43
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->v:Z

    .line 44
    :cond_c
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->s:Z

    if-nez p4, :cond_d

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->u:Z

    if-eqz p4, :cond_e

    .line 45
    :cond_d
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->A:Z

    .line 46
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->B:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 47
    :cond_e
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->t:Z

    if-eqz p4, :cond_f

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->A:Z

    if-nez p4, :cond_f

    .line 48
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->A:Z

    .line 49
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->B:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 50
    :cond_f
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p4

    if-eqz p4, :cond_11

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->y:D

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    int-to-double v5, p4

    cmpg-double p4, v3, v5

    if-gtz p4, :cond_11

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    .line 51
    :cond_10
    iget p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    cmpl-float p4, p4, v0

    if-eqz p4, :cond_11

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget v5, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    sub-float/2addr p4, v5

    float-to-double v5, p4

    sub-double/2addr v3, v5

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-double v5, p4

    cmpg-double p4, v3, v5

    if-gtz p4, :cond_11

    goto :goto_5

    .line 52
    :cond_11
    :goto_6
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_12

    if-eqz v1, :cond_12

    .line 53
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->G:Z

    if-nez p4, :cond_12

    .line 54
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->G:Z

    .line 55
    sget p4, Lcn/mucang/android/jiakaoyi/examk2/R$string;->exit_suidao:I

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {p0, p4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->B(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 56
    :cond_12
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v1, 0x2

    if-ne p4, v1, :cond_13

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-lez p4, :cond_13

    .line 57
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H:Z

    .line 58
    :cond_13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 59
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, v2, :cond_14

    .line 60
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->t:Z

    if-eqz p2, :cond_17

    .line 61
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_7

    .line 62
    :cond_14
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 63
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_7

    .line 64
    :cond_15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_16

    .line 65
    iget p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_17

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    sub-float/2addr p2, p3

    float-to-double p2, p2

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    cmpl-double p4, p2, v0

    if-ltz p4, :cond_17

    .line 66
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_7

    .line 67
    :cond_16
    iget p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_17

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    sub-float/2addr p2, p3

    float-to-double p2, p2

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    sub-double/2addr p2, v0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    cmpl-double p4, p2, v0

    if-ltz p4, :cond_17

    .line 68
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    :cond_17
    :goto_7
    return-void
.end method

.method protected c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->H:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 1

    .line 1
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

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
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 0

    return-void
.end method
