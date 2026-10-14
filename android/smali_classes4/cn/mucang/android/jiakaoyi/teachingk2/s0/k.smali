.class public Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field public x:Z

.field public y:Z

.field public z:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->s:I

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->t:I

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->u:Z

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->v:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->w:Z

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->x:Z

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->z:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-void
.end method

.method private I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->y:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->y:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->z:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->z:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 6
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->z:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_2

    .line 7
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method


# virtual methods
.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p4, v0, :cond_0

    .line 2
    sget-object p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->I(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)V

    .line 4
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->J(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)V

    .line 5
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_2

    .line 6
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->t:I

    if-lez v2, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v3, :cond_1

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->w:Z

    :cond_2
    if-eqz p4, :cond_3

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 10
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->w:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 11
    :cond_3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    .line 13
    :cond_4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->v:Z

    const/4 p3, 0x2

    const/4 p4, 0x3

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, v2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->t:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->t:I

    if-ne p1, p4, :cond_5

    .line 15
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->s:I

    if-ne p1, p3, :cond_5

    add-int/2addr p1, v1

    .line 16
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->s:I

    .line 17
    :cond_5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->u:Z

    .line 18
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->v:Z

    goto :goto_1

    .line 19
    :cond_6
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->u:Z

    if-eqz p2, :cond_7

    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->t:I

    if-lez p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 20
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, v2, :cond_7

    .line 21
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, v2, :cond_7

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, v2, :cond_7

    .line 23
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->s:I

    .line 25
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->u:Z

    .line 26
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->v:Z

    .line 27
    :cond_7
    :goto_1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->t:I

    if-gt p1, p4, :cond_8

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->s:I

    if-le p1, p3, :cond_9

    .line 28
    :cond_8
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->x:Z

    :cond_9
    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method
