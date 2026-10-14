.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager$Holder;
    }
.end annotation


# instance fields
.field private proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager$Holder;->access$100()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calculateBiandao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->calculateBiandao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public carBodyInArea(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->carBodyInArea(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->checkPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public distanceToStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->distanceToStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getAllPaths(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->getAllPaths(Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->getLeftRightLines(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/LeftRightLinesResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTwoSideOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->getTwoSideOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPressStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->isPressStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;->pressMarkLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setProxy(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->proxy:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionMethod;

    return-void
.end method
