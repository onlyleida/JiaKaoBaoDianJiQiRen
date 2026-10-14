.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_3
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void
.end method

.method private getCalculateLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 5
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v3, :cond_1

    .line 6
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v2, :cond_0

    .line 12
    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 13
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v3, :cond_3

    .line 14
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->allLines:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->getCalculateLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    invoke-direct {p1, v1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 8
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v6, 0x4072c00000000000L    # 300.0

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 9
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v8, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 10
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v8, v4, v5, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 11
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 12
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, p1, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 13
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v5, v4, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 19
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v6, :cond_3

    .line 20
    move-object v6, v4

    check-cast v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 21
    iget-boolean v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v7, :cond_2

    .line 22
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-static {v5, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->h(Lcn/mucang/android/jiakaoyi/signal/pos/c;Ljava/util/List;Z)Z

    move-result v7

    .line 23
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-static {v8, v6, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->h(Lcn/mucang/android/jiakaoyi/signal/pos/c;Ljava/util/List;Z)Z

    move-result v6

    goto/16 :goto_1

    .line 24
    :cond_2
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v9, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v7

    .line 25
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v9, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    goto :goto_1

    .line 26
    :cond_3
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v6, :cond_8

    .line 27
    move-object v6, v4

    check-cast v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 28
    iget-boolean v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v7, :cond_5

    .line 29
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-static {v5, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->h(Lcn/mucang/android/jiakaoyi/signal/pos/c;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_4

    .line 30
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-static {v5, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->h(Lcn/mucang/android/jiakaoyi/signal/pos/c;Ljava/util/List;Z)Z

    move-result v7

    .line 31
    :cond_4
    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-static {v8, v9, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->h(Lcn/mucang/android/jiakaoyi/signal/pos/c;Ljava/util/List;Z)Z

    move-result v9

    if-nez v9, :cond_7

    .line 32
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-static {v8, v6, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->h(Lcn/mucang/android/jiakaoyi/signal/pos/c;Ljava/util/List;Z)Z

    move-result v6

    goto :goto_1

    .line 33
    :cond_5
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v9, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 34
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v9, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v7

    .line 35
    :cond_6
    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v10, v9}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 36
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v9, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    goto :goto_1

    :cond_7
    move v6, v9

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_9

    .line 37
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_a

    .line 38
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39
    :cond_b
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 40
    :cond_c
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    invoke-direct {p1, v1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 41
    :cond_d
    :goto_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    invoke-direct {p1, v1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
