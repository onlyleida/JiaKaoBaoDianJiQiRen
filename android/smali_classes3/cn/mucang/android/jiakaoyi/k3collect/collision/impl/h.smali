.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;
.super Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.source "SourceFile"


# instance fields
.field public d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;-><init>()V

    return-void
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    if-ne p2, v0, :cond_2

    .line 4
    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 5
    :cond_2
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    return p1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    return p1
.end method
