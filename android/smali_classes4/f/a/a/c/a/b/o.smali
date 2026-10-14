.class public Lf/a/a/c/a/b/o;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lf/a/a/c/a/b/o;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Z
    .locals 3

    .line 1
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-static {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-static {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-static {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-static {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-static {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-direct {p0, p3}, Lf/a/a/c/a/b/o;->J(Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private J(Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected E()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lf/a/a/c/a/b/o;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p4, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p4, :cond_1

    .line 4
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 7
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    :cond_1
    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;

    invoke-direct {p0, p1, p2, p3}, Lf/a/a/c/a/b/o;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;

    invoke-virtual {p0, p1, p2, p3}, Lf/a/a/c/a/b/o;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;

    invoke-virtual {p0, p1, p2, p3, p4}, Lf/a/a/c/a/b/o;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/p;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
