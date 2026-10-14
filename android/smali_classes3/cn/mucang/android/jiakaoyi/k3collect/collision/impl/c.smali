.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;
.super Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.source "SourceFile"


# instance fields
.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public h:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    if-ne p3, p2, :cond_1

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p2, p3, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1
.end method
