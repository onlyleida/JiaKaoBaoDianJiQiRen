.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;,
        Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;,
        Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calCarToLineDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;",
            ")",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->Max:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-eq p2, v1, :cond_1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->Min:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->getDistanceCalResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->FrontWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    invoke-static {p0, p1, v2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->getDistanceCalResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    move-result-object v2

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->BackWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    invoke-static {p0, p1, v3, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->getDistanceCalResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    move-result-object p0

    .line 6
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->distance:D

    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, p1

    cmpl-double p3, v3, v5

    if-eqz p3, :cond_5

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->distance:D

    int-to-double v7, p1

    cmpl-double p3, v5, v7

    if-eqz p3, :cond_5

    if-ne p2, v1, :cond_3

    const-wide/16 p1, 0x0

    cmpl-double p3, v5, p1

    if-lez p3, :cond_3

    cmpl-double p3, v3, p1

    if-lez p3, :cond_3

    cmpl-double p1, v3, v5

    if-lez p1, :cond_2

    return-object v2

    :cond_2
    return-object p0

    :cond_3
    cmpg-double p1, v3, v5

    if-gez p1, :cond_4

    return-object v2

    :cond_4
    return-object p0

    :cond_5
    int-to-double p2, p1

    cmpl-double v1, v3, p2

    if-eqz v1, :cond_6

    return-object v2

    .line 7
    :cond_6
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->distance:D

    int-to-double v1, p1

    cmpl-double p1, p2, v1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method

.method private static getDistanceCalResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;",
            ")",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v0, v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 3
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_a

    .line 4
    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 5
    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->TingCheFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-ne p3, v7, :cond_1

    .line 6
    iget-boolean v7, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-nez v7, :cond_4

    iget v7, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    if-eq v7, v6, :cond_2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v7, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-eqz v7, :cond_3

    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-eq p3, v8, :cond_2

    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-ne p3, v8, :cond_3

    :cond_2
    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    if-nez v7, :cond_4

    .line 8
    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->FullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-eq p3, v7, :cond_2

    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-ne p3, v7, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v5, :cond_0

    .line 9
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->FrontWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-eq p2, v5, :cond_7

    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->BackWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-ne p2, v6, :cond_5

    goto :goto_4

    .line 10
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarFrontCenter:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-ne p2, v5, :cond_6

    .line 11
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 12
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 13
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 14
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 15
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 16
    sget v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    .line 17
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_3
    move-object v2, v3

    goto/16 :goto_0

    .line 18
    :cond_6
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarBack:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-ne p2, v5, :cond_0

    .line 19
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 21
    sget v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    .line 22
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_3

    :cond_7
    :goto_4
    if-ne p2, v5, :cond_8

    .line 23
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 24
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->isLineCross(Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v7

    goto :goto_5

    .line 25
    :cond_8
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 26
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->isLineCross(Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v7

    .line 27
    :goto_5
    sget v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v8, v8

    cmpl-double v10, v5, v8

    if-eqz v10, :cond_0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-eqz v7, :cond_9

    neg-double v5, v5

    .line 28
    iget v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->l:I

    goto :goto_6

    .line 29
    :cond_9
    iget v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->l:I

    :goto_6
    int-to-double v10, v4

    mul-double v10, v10, v8

    sub-double/2addr v5, v10

    cmpg-double v4, v5, v0

    if-gez v4, :cond_0

    move-object v2, v3

    move-wide v0, v5

    goto/16 :goto_0

    .line 30
    :cond_a
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v4, :cond_0

    .line 31
    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 32
    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->FullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-eq p3, v7, :cond_b

    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    if-ne p3, v7, :cond_c

    :cond_b
    const/4 v5, 0x1

    :cond_c
    if-eqz v5, :cond_0

    .line 33
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarFrontCenter:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-ne p2, v5, :cond_d

    .line 34
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 35
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 36
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 37
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 38
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 39
    sget v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    .line 40
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto/16 :goto_3

    .line 41
    :cond_d
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarBack:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    if-ne p2, v5, :cond_e

    .line 42
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 43
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 44
    sget v6, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    .line 45
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto/16 :goto_3

    .line 46
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53cc\u9ec4\u7ebf\u4e0d\u652f\u6301\u8fd9\u79cd\u8ba1\u7b97\u6a21\u5f0f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 47
    :cond_f
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;-><init>(DLcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)V

    return-object p0
.end method

.method private static isLineCross(Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Z)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0
.end method
