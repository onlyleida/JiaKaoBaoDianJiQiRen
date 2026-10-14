.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;
.super Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;
.source "SourceFile"


# instance fields
.field private k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    return-void
.end method


# virtual methods
.method protected g()Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/teachingk2/v0/a<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v2, v1, v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget-object v7, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step9:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v3, v1, v5, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/a;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/a;-><init>()V

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method

.method protected h(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 4
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    .line 5
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-double/2addr v1, v3

    invoke-static {v0, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v0, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
