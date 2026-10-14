.class public Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;"
    }
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

.field private final c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

.field private d:Z

.field public e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field public i:Z

.field public j:Ljava/lang/Boolean;

.field private k:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->g:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    .line 8
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->k:Ljava/lang/ref/Reference;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    .line 6
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Start:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne p1, p2, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b()V

    :cond_3
    return-void

    .line 10
    :cond_4
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$a;->a:[I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 11
    :pswitch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez p2, :cond_5

    instance-of p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    if-eqz p1, :cond_1e

    .line 12
    :cond_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 13
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->e:Z

    .line 14
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1, v8}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->x(Z)V

    .line 16
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->v()V

    goto/16 :goto_6

    .line 17
    :pswitch_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->v:Landroidx/lifecycle/z;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p2, v8}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->x(Z)V

    .line 20
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {p2, p1, v0, v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->n(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 22
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->End:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    const/4 p2, 0x0

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez p2, :cond_1e

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    if-nez p2, :cond_1e

    .line 25
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-direct {p2, v8, v8, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 26
    :pswitch_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->ClutchTime:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->data:Ljava/lang/Object;

    .line 27
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;)V

    .line 29
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {p2, p1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->f:Z

    if-eqz p2, :cond_7

    goto :goto_0

    .line 30
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->p(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_a

    .line 31
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 32
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    .line 33
    iget p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 34
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-eq p2, p3, :cond_a

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Start:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-eq p2, p3, :cond_a

    .line 35
    :cond_8
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-direct {p2, v8, v8, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 36
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_9
    :goto_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Start:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 38
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iput-object p0, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 39
    iget p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->r(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    .line 40
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iput-boolean v7, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    .line 41
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    if-nez p2, :cond_a

    .line 42
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    .line 43
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-direct {p2, v8, v7, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 44
    :cond_a
    :goto_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->g:Z

    if-nez p2, :cond_b

    .line 45
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->g:Z

    .line 46
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez p3, :cond_b

    instance-of p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    if-nez p3, :cond_b

    .line 47
    new-instance p3, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p2

    invoke-direct {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 48
    :cond_b
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {p2, p1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 49
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->e:Z

    goto/16 :goto_6

    .line 50
    :pswitch_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 51
    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 52
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 53
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-nez p1, :cond_d

    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 54
    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 55
    :cond_d
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    goto/16 :goto_6

    .line 56
    :pswitch_4
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->g:Z

    .line 57
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->f:Z

    if-nez p2, :cond_e

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {p2, p1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_e
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->f:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 58
    :cond_f
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->i:Z

    .line 59
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->j()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 60
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->n()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 61
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->m(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "Tag"

    const-string p2, "lian-ku"

    .line 62
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 63
    :cond_10
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->k()Z

    move-result p1

    if-eqz p1, :cond_11

    goto/16 :goto_6

    .line 64
    :cond_11
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->l()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 65
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e()V

    goto :goto_2

    .line 66
    :cond_12
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->o()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 67
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->f()V

    goto :goto_2

    .line 68
    :cond_13
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->b(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    goto/16 :goto_6

    .line 69
    :cond_14
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->l()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 70
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e()V

    goto/16 :goto_6

    .line 71
    :cond_15
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 72
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->r(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    .line 73
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    if-nez p1, :cond_1e

    .line 74
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    .line 75
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez p2, :cond_1e

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    if-nez p2, :cond_1e

    .line 76
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-direct {p2, v8, v7, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 77
    :cond_16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 78
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->v()V

    .line 79
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->i:Z

    goto/16 :goto_6

    .line 80
    :cond_17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 81
    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 82
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 83
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p2, v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 84
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p2, v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 85
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 86
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 87
    invoke-static {p2, p3, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_3

    .line 88
    :cond_18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_3

    .line 89
    :cond_19
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Invalid:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u975e\u6cd5\u95ef\u5165"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u533a\u57df"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    const-class p2, Lcn/mucang/android/jiakaoyi/hpmap/model/b;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance p3, Lcn/mucang/android/jiakaoyi/hpmap/model/b;

    invoke-direct {p3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 92
    :goto_3
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->i:Z

    goto/16 :goto_6

    .line 93
    :cond_1a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->i:Z

    goto/16 :goto_6

    .line 94
    :pswitch_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 95
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 96
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_4

    .line 97
    :cond_1b
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Start:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    goto :goto_5

    .line 98
    :cond_1c
    :goto_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 99
    :goto_5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->r(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    .line 100
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    if-nez p1, :cond_1e

    .line 101
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->d:Z

    .line 102
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez p2, :cond_1e

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    if-nez p2, :cond_1e

    .line 103
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-direct {p2, v8, v7, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_6

    .line 104
    :cond_1d
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 105
    :cond_1e
    :goto_6
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->l()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 106
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->e()V

    .line 107
    :cond_1f
    iget p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->h:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->w()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->x(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->w()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->End:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-direct {v2, v1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->k:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Start:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->WaitingStart:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->WaitingStart:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    return-void
.end method
