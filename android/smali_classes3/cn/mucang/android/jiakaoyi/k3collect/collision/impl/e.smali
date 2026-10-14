.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;
.super Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public f:D

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;-><init>()V

    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->f:D

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_0

    return v5

    .line 3
    :cond_0
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v3

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v6

    mul-double v1, v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_1

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v1, v6

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, p1

    mul-double v1, v1, v6

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 2

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    const/4 v0, 0x0

    if-eq p3, p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 4
    :cond_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->d:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->d:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->g:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1

    :cond_3
    return v0

    .line 7
    :cond_4
    :goto_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p3

    .line 8
    :cond_5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    return p1
.end method
