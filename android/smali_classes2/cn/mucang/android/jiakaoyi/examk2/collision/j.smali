.class public Lcn/mucang/android/jiakaoyi/examk2/collision/j;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public A:I

.field private B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public C:Z

.field public D:D

.field public E:Z

.field public F:Z

.field private G:Z

.field private H:Z

.field public s:Z

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->v:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->w:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->y:Z

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->z:J

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->A:I

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->C:Z

    .line 11
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->E:Z

    .line 12
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->F:Z

    .line 13
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->G:Z

    .line 14
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->H:Z

    return-void
.end method

.method private G(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;F)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 11

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    div-double v7, v0, v7

    .line 3
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    div-double/2addr v7, v3

    double-to-float v7, v7

    neg-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_0

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    add-float/2addr p2, v2

    float-to-double v7, p2

    mul-double v7, v7, v3

    div-double/2addr v7, v5

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 6
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    neg-double v1, v2

    invoke-static {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    .line 8
    :cond_0
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    float-to-double v7, p2

    mul-double v7, v7, v3

    div-double/2addr v7, v5

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double v3, v3, v0

    .line 10
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    .line 12
    :cond_1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    .line 13
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    div-double v7, v9, v7

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    div-double/2addr v7, v3

    double-to-float v1, v7

    add-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 15
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    sub-float/2addr v0, p2

    float-to-double v7, v0

    mul-double v7, v7, v3

    div-double/2addr v7, v5

    .line 16
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    .line 17
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    neg-double v1, v3

    invoke-static {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    :cond_2
    sub-float/2addr p2, v2

    float-to-double v0, p2

    mul-double v0, v0, v3

    div-double/2addr v0, v5

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v0, v0, v9

    .line 20
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 21
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 22
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->s:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->s:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->s:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 7
    :cond_2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->s:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_3
    return-void
.end method

.method private K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 6
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_2

    .line 7
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 8
    :cond_2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_3

    .line 9
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_3
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->A()Z

    move-result v0

    return v0
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 2
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    :cond_0
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->E:Z

    .line 4
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 5
    :cond_2
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->q:Z

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    .line 6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v3, :cond_3

    .line 7
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v3

    .line 8
    invoke-direct {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->G(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;F)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    :cond_3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v3, :cond_4

    .line 10
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->C:Z

    .line 11
    :cond_4
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 12
    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v6, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    .line 13
    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    .line 14
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v10}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 15
    iget-boolean v12, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    const-wide/high16 v15, 0x402e000000000000L    # 15.0

    if-eqz v12, :cond_5

    sub-double/2addr v3, v8

    cmpl-double v8, v3, v15

    if-ltz v8, :cond_6

    :goto_0
    add-double/2addr v6, v13

    cmpg-double v3, v10, v6

    goto :goto_1

    :cond_5
    sub-double/2addr v8, v3

    cmpl-double v3, v8, v15

    if-ltz v3, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    :goto_1
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->w:Z

    if-nez v3, :cond_7

    .line 17
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->w:Z

    .line 18
    :cond_7
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->v:Z

    const/4 v4, 0x0

    if-nez v3, :cond_a

    .line 19
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v3

    .line 20
    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v3, v6, :cond_9

    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v3, v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->v:Z

    .line 21
    :cond_a
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    if-eqz v3, :cond_b

    .line 22
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v3

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    goto :goto_4

    .line 23
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v3

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    .line 24
    :goto_4
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    const-wide/16 v6, -0x1

    if-nez v3, :cond_c

    .line 25
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->z:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_d

    .line 26
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->z:J

    .line 27
    iget v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->A:I

    add-int/2addr v3, v5

    iput v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->A:I

    goto :goto_5

    .line 28
    :cond_c
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->z:J

    .line 29
    :cond_d
    :goto_5
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 30
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide v6

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->D:D

    .line 31
    :cond_e
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 32
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 33
    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v7, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    .line 34
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_f

    .line 35
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v8, v3

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_10

    .line 36
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->y:Z

    goto :goto_6

    .line 37
    :cond_f
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v8, v3

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_10

    .line 38
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->y:Z

    .line 39
    :cond_10
    :goto_6
    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;)V

    .line 40
    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->K(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->s()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_12

    .line 43
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->F:Z

    if-nez v3, :cond_11

    .line 44
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->F:Z

    .line 45
    :cond_11
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v4

    goto :goto_7

    .line 46
    :cond_12
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_15

    .line 47
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->H:Z

    if-nez v3, :cond_13

    .line 48
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v1, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->H:Z

    .line 49
    :cond_13
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->G:Z

    if-nez v3, :cond_14

    .line 50
    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->G:Z

    .line 51
    :cond_14
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->H:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->G:Z

    if-eqz v1, :cond_16

    const/4 v4, 0x1

    goto :goto_7

    .line 52
    :cond_15
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_16

    .line 53
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v4

    :cond_16
    :goto_7
    if-eqz v4, :cond_18

    .line 54
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 55
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_17

    .line 56
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->F:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    goto :goto_8

    .line 57
    :cond_17
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 58
    :cond_18
    :goto_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->s:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
