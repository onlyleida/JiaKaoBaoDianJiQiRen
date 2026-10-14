.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;
.super Lcn/mucang/android/jiakaoyi/mapcollect/render/f;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;


# static fields
.field private static final TAG:Ljava/lang/String; = "K3Data"


# instance fields
.field public allDashPah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field public allFullPah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field public final banMaLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public carData:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

.field public final centerCircleFullModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final centerCircleModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final centerDashedModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field public final crossRoadMarkModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final dashFullLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final dashedModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final diaoTouAreaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private diaoTouCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

.field private examSiteId:Ljava/lang/String;

.field private final gpsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public final gridLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public volatile hasData:Z

.field private hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;

.field private hpLeftRightLinesCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;

.field private hpPressBanMaLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressBanMaLineCalculator;

.field private hpPressCenterCircleCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCenterCircleCalculator;

.field private hpPressCenterDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

.field private hpPressDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

.field private hpPressGridLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressGridLineCalculator;

.field private hpPressStopLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressStopLineCalculator;

.field private hpSideDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;

.field private hpStopLineDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;

.field public final jinTingAreaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private jinTingCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

.field private judgeLineCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

.field public final judgeLineFullModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mapBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field private noEnterAreaCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

.field public final noEnterAreaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final nonMotorVehicleDashLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final nonMotorVehicleLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private pressCenterCircleLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

.field private pressCrossRoadMarkLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;

.field private pressFullLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

.field private pressNonMotorVehicleDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

.field private pressNonMotorVehicleLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

.field public final renderModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/j0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final shuangHuangFullLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final sideLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final singleFullLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private srcDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            ">;"
        }
    .end annotation
.end field

.field public final stopLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final tingCheAreaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private tingCheCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->renderModels:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerDashedModels:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->singleFullLineModels:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->shuangHuangFullLineModels:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->sideLineModels:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleLineModels:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleDashLineModels:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->stopLineModels:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gridLineModels:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerCircleModels:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->banMaLineModels:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->crossRoadMarkModels:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerCircleFullModels:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->judgeLineFullModels:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->diaoTouAreaModels:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->jinTingAreaModels:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->tingCheAreaModels:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->noEnterAreaModels:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashFullLineModels:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gpsList:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allDashPah:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allFullPah:Ljava/util/List;

    return-void
.end method

.method private addSingleLinePaths(Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allDashPah:Ljava/util/List;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allDashPah:Ljava/util/List;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allDashPah:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allDashPah:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allFullPah:Ljava/util/List;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allFullPah:Ljava/util/List;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allFullPah:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allFullPah:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private createConvert()Lcn/mucang/android/jiakaoyi/signal/i/a;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    .line 4
    iget-wide v3, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v7, v3, v5

    if-gez v7, :cond_2

    iget-wide v7, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    cmpg-double v9, v7, v5

    if-gez v9, :cond_2

    .line 5
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gpsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gpsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v7, v3

    move-wide v9, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    add-double/2addr v3, v12

    .line 8
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    add-double/2addr v7, v12

    .line 9
    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    add-double/2addr v9, v11

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gpsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11
    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    int-to-double v11, v2

    div-double v2, v3, v11

    div-double/2addr v7, v11

    div-double v16, v9, v11

    move-object v11, v14

    move-wide v12, v2

    move-object v2, v14

    move-wide v14, v7

    invoke-direct/range {v11 .. v17}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    .line 12
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->examSiteId:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->examSiteId:Ljava/lang/String;

    iget-wide v7, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;

    invoke-direct {v3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 14
    :cond_2
    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 15
    iget-wide v3, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 16
    :cond_3
    :goto_1
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-object v1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadSrcData(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/q/h;->l(J)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string p1, "\u83b7\u53d6\u672c\u5730\u5730\u56fe\u6570\u636e\u662fnull"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v4

    .line 5
    :cond_0
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query K3 DB Data spend time : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v5, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K3Data"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "examSiteId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u8003\u573a,\u6ca1\u6709\u9ad8\u7cbe\u5ea6\u6570\u636e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u6790\u5230\u5730\u56fe\u6570\u636e "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6761"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    .line 12
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gpsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6709\u95ee\u9898\u7684\u5730\u56fe\u6570\u636e\uff1a"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53c2\u4e0e\u663e\u793a\u7684\u5730\u56fe\u6570\u636e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse K3SrcDataList spend time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private parseCarData()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->bodyData:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->generateCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->carData:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u8f66\u5b50\u6ca1\u6709\u8f66\u8eab\u6570\u636e"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public calculateBiandao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateSingleBianDao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object p1

    return-object p1
.end method

.method public carBodyInArea(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->FullInDiaoTouArea:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->diaoTouCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInArea(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->FullInTingCheArea:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p3, v0, :cond_3

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->tingCheCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInArea(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public checkPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressJudgeLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_0

    .line 2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->judgeLineCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressJinTingArea:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_1

    .line 4
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->jinTingCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->renderModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;

    const/4 v2, 0x0

    .line 3
    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4
    :pswitch_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;)V

    goto :goto_1

    .line 5
    :pswitch_2
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;)V

    goto :goto_1

    .line 6
    :pswitch_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;)V

    goto :goto_1

    .line 7
    :pswitch_4
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;)V

    goto :goto_1

    .line 8
    :pswitch_5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;)V

    goto :goto_1

    .line 9
    :pswitch_6
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;)V

    goto :goto_1

    .line 10
    :pswitch_7
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;)V

    goto :goto_1

    .line 11
    :pswitch_8
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;)V

    goto :goto_1

    .line 12
    :pswitch_9
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;)V

    goto :goto_1

    .line 13
    :pswitch_a
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/k;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;)V

    goto :goto_1

    .line 14
    :pswitch_b
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    invoke-direct {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;)V

    :goto_1
    if-eqz v2, :cond_0

    .line 15
    iput-boolean p2, v2, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    .line 16
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public distanceToStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpStopLineDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->calculate(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D

    move-result-wide p1

    return-wide p1
.end method

.method public getAllPaths(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allDashPah:Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->allFullPah:Ljava/util/List;

    return-object p1
.end method

.method public getCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->carData:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    return-object v0
.end method

.method public getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->createConvert()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v0

    return-object v0
.end method

.method public getExamSiteId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->examSiteId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpLeftRightLinesCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;->getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    move-result-object p1

    return-object p1
.end method

.method public getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->mapBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public getTwoSideOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpSideDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->getSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object p1

    return-object p1
.end method

.method public isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_0

    .line 2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressFullLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_1

    .line 4
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressNonMotorVehicleLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_2

    .line 6
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressNonMotorVehicleLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressNonMotorVehicleDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_3

    .line 8
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressNonMotorVehicleDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressCenterDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_4

    .line 10
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressCenterDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    .line 11
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressCenterCircle:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_5

    .line 12
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressCenterCircleCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCenterCircleCalculator;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1

    .line 13
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressGridLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_6

    .line 14
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressGridLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressGridLineCalculator;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1

    .line 15
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressBanMaLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_7

    .line 16
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressBanMaLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressBanMaLineCalculator;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1

    .line 17
    :cond_7
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressCenterCircleFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_8

    .line 18
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressCenterCircleLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1

    .line 19
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressNoEnterArea:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    if-ne p4, v0, :cond_9

    .line 20
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->noEnterAreaCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    invoke-virtual {p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public isPressStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressStopLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressStopLineCalculator;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "\u5730\u56fe\u539f\u70b9\u6570\u636e\u6709\u95ee\u9898"

    const-string v2, "K3Data"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v6, p1

    .line 2
    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->examSiteId:Ljava/lang/String;

    .line 3
    iput-boolean v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hasData:Z

    .line 4
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->parseCarData()V

    .line 5
    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->carData:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    if-eqz v7, :cond_10

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    const/16 v8, 0x18

    if-eq v7, v8, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "k3 parseData spend time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->loadSrcData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->srcDataList:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->srcDataList:Ljava/util/List;

    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->setProxy(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;)V

    return-void

    .line 11
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->createConvert()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v6

    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v6, :cond_2

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5730\u56fe\u539f\u70b9 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->srcDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, "dsh"

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gps "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-class v6, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v6

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {v6, v7}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 19
    :cond_4
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->srcDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    .line 20
    iget v8, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p;->a(I)Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 21
    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v8, v6, v9}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    .line 22
    invoke-interface {v8}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;

    move-result-object v9

    .line 23
    invoke-interface {v8}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object v8

    if-nez v8, :cond_6

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6709\u95ee\u9898\u7684\u5730\u56fe\u6570\u636e\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_6
    instance-of v10, v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    const-wide v11, 0x4062c00000000000L    # 150.0

    if-eqz v10, :cond_8

    .line 26
    move-object v10, v8

    check-cast v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 27
    iget-boolean v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-nez v13, :cond_7

    iget-object v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v14, v13, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v13, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpg-double v15, v13, v11

    if-gez v15, :cond_7

    goto :goto_0

    .line 28
    :cond_7
    iget-boolean v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v13, :cond_a

    iget-object v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpg-double v7, v13, v11

    if-gez v7, :cond_a

    goto :goto_0

    .line 29
    :cond_8
    instance-of v10, v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v10, :cond_a

    .line 30
    move-object v10, v8

    check-cast v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 31
    iget-boolean v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-nez v13, :cond_9

    iget-object v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v14, v13, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v13, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpg-double v15, v13, v11

    if-gez v15, :cond_9

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-boolean v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v13, :cond_a

    iget-object v13, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpg-double v7, v13, v11

    if-gez v7, :cond_a

    goto/16 :goto_0

    .line 33
    :cond_a
    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->renderModels:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->mapBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v7, :cond_b

    .line 35
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-direct {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/a;)V

    iput-object v7, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->mapBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_1

    .line 36
    :cond_b
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 37
    :goto_1
    iget v7, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 38
    :pswitch_1
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashFullLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :pswitch_2
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->noEnterAreaModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :pswitch_3
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->tingCheAreaModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :pswitch_4
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->jinTingAreaModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :pswitch_5
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->diaoTouAreaModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :pswitch_6
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->judgeLineFullModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :pswitch_7
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerCircleFullModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 45
    :pswitch_8
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->crossRoadMarkModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46
    :pswitch_9
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerDashedModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :pswitch_a
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->stopLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 48
    :pswitch_b
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gridLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :pswitch_c
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerCircleModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :pswitch_d
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->banMaLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :pswitch_e
    check-cast v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget-boolean v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isDashed:Z

    if-eqz v6, :cond_c

    .line 52
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleDashLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :cond_c
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :pswitch_f
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->sideLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    check-cast v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    invoke-direct {v1, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->addSingleLinePaths(Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;)V

    goto/16 :goto_0

    .line 56
    :pswitch_10
    check-cast v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget-boolean v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    if-eqz v6, :cond_d

    .line 57
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_d
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->shuangHuangFullLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :pswitch_11
    check-cast v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget-boolean v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isDashed:Z

    if-eqz v6, :cond_e

    .line 60
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    :cond_e
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->singleFullLineModels:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_2
    check-cast v8, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    invoke-direct {v1, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->addSingleLinePaths(Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;)V

    goto/16 :goto_0

    .line 63
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790\u5730\u56fe\u6570\u636elayer\u6570\u636e "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->renderModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u6761"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "k3 transforms spend time : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->setProxy(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;)V

    .line 66
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleDashLineModels:Ljava/util/List;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashFullLineModels:Ljava/util/List;

    invoke-direct {v0, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;

    .line 68
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->stopLineModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpStopLineDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;

    .line 69
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->singleFullLineModels:Ljava/util/List;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->shuangHuangFullLineModels:Ljava/util/List;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->sideLineModels:Ljava/util/List;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashFullLineModels:Ljava/util/List;

    invoke-direct {v0, v2, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressFullLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    .line 70
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleLineModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressNonMotorVehicleLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    .line 71
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleDashLineModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressNonMotorVehicleDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    .line 72
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerCircleFullModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressCenterCircleLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    .line 73
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCenterCircleCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerCircleModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCenterCircleCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressCenterCircleCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCenterCircleCalculator;

    .line 74
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressGridLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->gridLineModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressGridLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressGridLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressGridLineCalculator;

    .line 75
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressBanMaLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->banMaLineModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressBanMaLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressBanMaLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressBanMaLineCalculator;

    .line 76
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashFullLineModels:Ljava/util/List;

    invoke-direct {v0, v2, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

    .line 77
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->centerDashedModels:Ljava/util/List;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashFullLineModels:Ljava/util/List;

    invoke-direct {v0, v2, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressCenterDashLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;

    .line 78
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressStopLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->stopLineModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressStopLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpPressStopLineCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressStopLineCalculator;

    .line 79
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->crossRoadMarkModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressCrossRoadMarkLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;

    .line 80
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->sideLineModels:Ljava/util/List;

    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->singleFullLineModels:Ljava/util/List;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->shuangHuangFullLineModels:Ljava/util/List;

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    iget-object v13, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleLineModels:Ljava/util/List;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpSideDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;

    .line 81
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;

    iget-object v15, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->sideLineModels:Ljava/util/List;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->singleFullLineModels:Ljava/util/List;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->shuangHuangFullLineModels:Ljava/util/List;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->dashedModels:Ljava/util/List;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->nonMotorVehicleLineModels:Ljava/util/List;

    move-object v14, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hpLeftRightLinesCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpLeftRightLinesCalculator;

    .line 82
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->judgeLineFullModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->judgeLineCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

    .line 83
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->diaoTouAreaModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->diaoTouCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

    .line 84
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->tingCheAreaModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->tingCheCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;

    .line 85
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->jinTingAreaModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->jinTingCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineCollisionChecker;

    .line 86
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->noEnterAreaModels:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;-><init>(Ljava/util/List;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->noEnterAreaCollisionChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressFullLineCalculator;

    .line 87
    iput-boolean v7, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hasData:Z

    goto :goto_4

    :cond_10
    :goto_3
    const-string v0, "\u8f66\u8eab\u6570\u636e\u6709\u95ee\u9898"

    .line 88
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string v0, "\u89e3\u6790\u8f66\u8eab\u6570\u636e\u6709\u95ee\u9898"

    .line 89
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790\u79d1\u4e09\u8003\u8bd5\u6570\u636e\u5f02\u5e38:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "\u89e3\u6790\u6570\u636e\u51fa\u9519"

    .line 92
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 93
    iput-boolean v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hasData:Z

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pressMarkLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            "Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->pressCrossRoadMarkLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->setProxy(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;)V

    return-void
.end method
