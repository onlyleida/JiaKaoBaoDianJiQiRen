.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public distance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->distance:D

    return-void
.end method


# virtual methods
.method public calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 2
    iget-object p4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;->rightLines:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;->leftLines:Ljava/util/List;

    :goto_0
    if-eqz p4, :cond_8

    .line 4
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;->overLayLines:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->distance:D

    goto/16 :goto_3

    .line 7
    :cond_2
    invoke-static {p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->calCarToLineDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 8
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->collisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p3, :cond_9

    .line 9
    iget-wide p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->distance:D

    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->distance:D

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/u;->b()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 11
    const-class p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->collisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    instance-of p4, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz p4, :cond_7

    .line 14
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 15
    iget-boolean p4, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz p4, :cond_6

    const/4 p4, 0x1

    .line 16
    :goto_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_7

    .line 17
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    add-int/lit8 v1, p4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 21
    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 24
    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 26
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p4, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 27
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p4, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 29
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_7
    const-class p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/DebugFooterResult;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/DebugFooterResult;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/DebugFooterResult;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_8
    :goto_2
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->distance:D

    .line 32
    :cond_9
    :goto_3
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->distance:D

    return-wide p1
.end method
