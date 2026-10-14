.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isInit:Z

.field private isRunOver:Z

.field private lastPressLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->isInit:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->lastPressLine:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->isRunOver:Z

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressBanMaLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " pressLine "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dsh"

    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->isInit:Z

    if-nez p2, :cond_1

    .line 6
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->isInit:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->lastPressLine:Z

    return v1

    .line 8
    :cond_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->lastPressLine:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->isRunOver:Z

    .line 9
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->lastPressLine:Z

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->isRunOver:Z

    return p1
.end method
