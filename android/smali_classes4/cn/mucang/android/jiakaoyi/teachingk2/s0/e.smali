.class public Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public s:Z

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public u:Z

.field public v:Z

.field public w:D


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->u:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->v:Z

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->w:D

    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->s:Z

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->s:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 7
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->s:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 7
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->t(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_2

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

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

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_0

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->H(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;)V

    .line 4
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;)V

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    .line 6
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->u:Z

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, v0, :cond_3

    .line 8
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->v:Z

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->v:Z

    .line 10
    :cond_2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 11
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->w:D

    .line 13
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 15
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 16
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    if-nez p1, :cond_3

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    :cond_3
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
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->s:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
