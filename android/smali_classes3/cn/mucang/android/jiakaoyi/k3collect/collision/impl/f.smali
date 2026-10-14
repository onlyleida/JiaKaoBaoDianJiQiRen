.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;
.super Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.source "SourceFile"


# instance fields
.field public d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 3
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    if-ne p3, p2, :cond_2

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 5
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    return p1
.end method

.method public c(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 2
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_LEFT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT_AROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_3

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_3

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    .line 7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_6

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_6

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_LEFT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_6

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_AROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 10
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-ne p1, v2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    const/4 v2, 0x4

    if-ne p1, v2, :cond_b

    .line 11
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_AROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_9

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_AROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 12
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_9

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 13
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_9

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT_TURN_LEFT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 14
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_9

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 15
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq p1, v2, :cond_9

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT_AROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-ne p1, v2, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    return v1
.end method
