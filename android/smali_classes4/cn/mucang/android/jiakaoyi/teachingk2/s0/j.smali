.class public Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public s:Z

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public u:Z

.field public v:D

.field public w:F

.field public x:D

.field public y:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->u:Z

    const-wide/16 p2, 0x0

    .line 5
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->v:D

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    .line 7
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->y:Z

    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->s:Z

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

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->s:Z

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

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->s:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method

.method private I()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    :cond_0
    return-void
.end method

.method private K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_2

    .line 10
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected J(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 8

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_3

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->r:D

    const-wide/16 v2, 0x0

    cmpl-double p4, v0, v2

    if-eqz p4, :cond_0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

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

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 7
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p4, :cond_1

    .line 8
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v6, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 9
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    add-double/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    move-object v1, v5

    goto :goto_0

    .line 10
    :cond_1
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float p4, v2

    div-float/2addr p4, v0

    .line 11
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->a(F)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

    goto :goto_1

    .line 12
    :cond_2
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 13
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 14
    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 15
    iget-object v4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 16
    invoke-virtual {v3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p4, v3

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p4

    float-to-double v3, p4

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    mul-double v3, v3, v1

    const-wide v1, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v1

    double-to-float p4, v3

    div-float/2addr p4, v0

    .line 17
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->a(F)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

    .line 18
    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->H(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V

    .line 19
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)V

    .line 20
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_8

    .line 21
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->y:Z

    if-nez p4, :cond_4

    .line 22
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p4

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->y:Z

    .line 23
    :cond_4
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->u:Z

    const/4 v0, 0x0

    if-nez p4, :cond_5

    .line 24
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p4

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->u:Z

    if-eqz p4, :cond_5

    .line 25
    iget p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    cmpl-float p4, p4, v0

    if-nez p4, :cond_5

    .line 26
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    .line 27
    :cond_5
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->v:D

    .line 28
    iget p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    const/4 v1, 0x4

    cmpl-float p4, p4, v0

    if-eqz p4, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    if-eq p4, v1, :cond_6

    .line 29
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    sub-float/2addr p4, v0

    float-to-double v2, p4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

    cmpl-double p4, v2, v4

    if-ltz p4, :cond_6

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->I()V

    goto :goto_2

    .line 31
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    if-ne p1, v1, :cond_8

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 32
    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    :cond_7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->I()V

    :cond_8
    :goto_2
    return-void
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

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->J(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->s:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
