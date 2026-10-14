.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-void
.end method

.method private collectFooters(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v0, :cond_5

    .line 2
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 3
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 4
    :goto_0
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 9
    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 12
    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 15
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 17
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;ZZ)V
    .locals 4

    if-nez p2, :cond_0

    if-eqz p3, :cond_5

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;->leftLines:Ljava/util/List;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarFrontCenter:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-static {p1, p2, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->calCarToLineDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->collisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    goto :goto_0

    .line 4
    :cond_1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 5
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;->rightLines:Ljava/util/List;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarFrontCenter:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-static {p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;->calCarToLineDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->collisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    goto :goto_1

    .line 7
    :cond_3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 8
    :cond_4
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/u;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->collectFooters(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Ljava/util/List;)V

    .line 11
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->collectFooters(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Ljava/util/List;)V

    .line 12
    const-class p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/DebugFooterResult;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/DebugFooterResult;

    invoke-direct {p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/DebugFooterResult;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
