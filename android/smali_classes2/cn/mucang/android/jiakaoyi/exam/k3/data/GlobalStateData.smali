.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANGLE_VALUE:I = -0xf423f

.field private static final COUNT:I = 0x15

.field private static final LimitTime:I = 0x1f40

.field public static isStepFinish:Z = false


# instance fields
.field public autoFinishedStepManager:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;

.field public gearSpeedDistance:D

.field private gearSpeedDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;

.field private final globalBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;

.field private final globalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;

.field public final hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

.field private final hpPressLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;

.field public isChangeOneRoad:Z

.field public isChangeTwoRoad:Z

.field private final lastAngles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public realState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->lastAngles:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;-><init>(IIZ)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->gearSpeedDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->globalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->globalBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpPressLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;

    return-void
.end method

.method private initState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->lastAngles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    const v0, -0x368bdc10    # -999999.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isChangeTwoRoad:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isChangeOneRoad:Z

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->globalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->reset()V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->globalBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->reset()V

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;-><init>()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpPressLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;

    invoke-virtual {v1, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;

    move-result-object v1

    .line 5
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressDashedLine:Z

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressDashLineTime:J

    sub-long/2addr v4, v1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u538b\u865a\u7ebf("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->pressDesc:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 10
    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressFullLine:Z

    if-eqz v1, :cond_1

    const-string v1, "\u538b\u5b9e\u7ebf"

    .line 11
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->pressDesc:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "\u672a\u538b\u7ebf"

    .line 12
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->pressDesc:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    invoke-virtual {v1, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningLeft:Z

    if-eqz v1, :cond_2

    const-string v1, "\u5de6\u53d8\u9053"

    .line 15
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 16
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->bianDaoDesc:Ljava/lang/String;

    .line 17
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningRight:Z

    if-eqz v1, :cond_3

    const-string v1, "\u53f3\u53d8\u9053"

    .line 18
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 19
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->bianDaoDesc:Ljava/lang/String;

    .line 20
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningLeft:Z

    if-nez v2, :cond_4

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningRight:Z

    if-nez v1, :cond_4

    .line 21
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    const-string v1, "\u672a\u53d8\u9053"

    .line 22
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->bianDaoDesc:Ljava/lang/String;

    .line 23
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;->currentDistance:F

    .line 24
    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/HpGlobalData;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 25
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 26
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->get(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 27
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->gearSpeedDistanceCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startCalculate(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->gearSpeedDistance:D

    .line 28
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isStepFinish:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isStepFinish:Z

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->initState()V

    .line 31
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-eq v0, v1, :cond_8

    if-nez v0, :cond_9

    .line 32
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->initState()V

    .line 33
    :cond_9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto :goto_1

    .line 35
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->globalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 36
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->globalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->isChangeTwoRoad:Z

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isChangeTwoRoad:Z

    .line 37
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->isChangeOneRoad:Z

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isChangeOneRoad:Z

    .line 38
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 39
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->realState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 40
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->autoFinishedStepManager:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->autoFinishedStepManager:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;

    .line 42
    :cond_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->autoFinishedStepManager:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->startCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 43
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->v()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 44
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->initState()V

    .line 45
    :cond_c
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLight:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightError:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    .line 46
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightLongDistance:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    .line 47
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 48
    :cond_d
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->initState()V

    :cond_e
    return-void
.end method
