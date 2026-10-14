.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;
    }
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

.field public final b:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final d:Landroid/os/Handler;

.field private final e:Lcn/mucang/android/jiakaoyi/engine/c;

.field public final f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation
.end field

.field public i:J

.field public j:F

.field public final k:Z

.field private l:Z

.field private volatile m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

.field public final n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

.field private o:Lcn/mucang/android/jiakaoyi/engine/i/a;

.field private p:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field private q:I

.field private r:Z

.field public final s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/c;ZLcn/mucang/android/jiakaoyi/engine/i/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->h:Ljava/util/Set;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    invoke-direct {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/f/b;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 8
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 9
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;

    invoke-direct {p2, p3, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/f/a;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    .line 11
    iget p3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->c:I

    iput p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    .line 12
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->e:Lcn/mucang/android/jiakaoyi/engine/c;

    .line 13
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->k:Z

    .line 14
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->d:Landroid/os/Handler;

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->f()I

    .line 16
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->canCheckGlobalEvent()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    goto :goto_0

    .line 18
    :cond_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    .line 19
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Idle:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    .line 20
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->q:I

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r:Z

    .line 22
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    return-void
.end method

.method private synthetic A(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/f/a;->onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    const-class p2, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/engine/i/f/a;-><init>(ZZI)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic C(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    return-void
.end method

.method private E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->k:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopped:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->F()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->F()V

    :cond_1
    :goto_0
    return-void
.end method

.method private F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->e:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->n()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->G()V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b()Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->d:Landroid/os/Handler;

    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->c:I

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->b:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    return-void
.end method

.method private k(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->o:Z

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private l(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->o:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eq p1, v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->o(Z)V

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-virtual {v1, p0, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eq p1, v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_2

    .line 14
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->o(Z)V

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-virtual {v1, p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private m(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/signal/c/e;ZLjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Z",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    .line 2
    invoke-virtual {p1, p2, p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p2

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->o:Z

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 5
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-direct {p0, p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->k(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->K()V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v2, v3, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic B(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->A(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method

.method public synthetic D(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->C(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    return-void
.end method

.method public H(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->J(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    return-void
.end method

.method public I(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->J(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    return-void
.end method

.method public J(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public L(Lcn/mucang/android/jiakaoyi/engine/model/Step;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->e(Lcn/mucang/android/jiakaoyi/engine/model/Step;J)V

    return-void
.end method

.method public a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteDeduct "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->K()V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->K()V

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopped:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-static {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Q(Ljava/lang/String;Ljava/lang/String;J)V

    .line 4
    :cond_1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Idle:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->j:F

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Running:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->d()V

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 14
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\u5f00\u59cb\u6267\u884c\u5168\u5c40\u4e8b\u4ef6"

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 17
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v5

    if-nez v5, :cond_4

    .line 18
    invoke-direct {p0, v2, p1, v4, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/signal/c/e;ZLjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 20
    :cond_5
    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    if-nez v5, :cond_3

    .line 21
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v2, v5, :cond_3

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v2, v5, :cond_3

    .line 22
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    .line 23
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 26
    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->j:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_16

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v1, 0x0

    .line 27
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_10

    .line 28
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->needOrderExe()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r:Z

    if-nez v6, :cond_9

    .line 29
    iget v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->q:I

    if-eq v1, v6, :cond_8

    add-int/lit8 v7, v6, 0x1

    if-eq v1, v7, :cond_8

    add-int/lit8 v6, v6, 0x2

    if-ne v1, v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_9

    goto :goto_5

    .line 30
    :cond_9
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 31
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    .line 32
    :cond_a
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p0, v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v7

    if-nez v7, :cond_b

    .line 33
    invoke-direct {p0, v6, p1, v5, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/signal/c/e;ZLjava/util/List;)Z

    .line 34
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 35
    iput v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->q:I

    goto :goto_4

    .line 36
    :cond_b
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 37
    iput v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->q:I

    .line 38
    :cond_c
    :goto_4
    iget-boolean v7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    if-nez v7, :cond_d

    .line 39
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v7, v8, :cond_d

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v7, v8, :cond_d

    .line 40
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    .line 41
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 42
    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 43
    :cond_d
    iget-boolean v7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r:Z

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 44
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r:Z

    .line 45
    iput v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->q:I

    .line 46
    :cond_e
    iget-boolean v7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r:Z

    if-nez v7, :cond_f

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v1, v6, :cond_f

    .line 47
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r:Z

    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 48
    :cond_10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o:Lcn/mucang/android/jiakaoyi/engine/i/a;

    if-eqz v0, :cond_16

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 51
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->n()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->h:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 53
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_13
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 54
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Running:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v6, v7, :cond_13

    .line 55
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-interface {v6, v3}, Lcn/mucang/android/jiakaoyi/engine/i/a;->onStepEnd(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_13

    .line 57
    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_7

    .line 58
    :cond_14
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->h:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    if-eqz v1, :cond_16

    .line 59
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 60
    :cond_16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopping:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v0, v1, :cond_17

    .line 61
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopped:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    .line 62
    :cond_17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 63
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    :cond_18
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;

    .line 66
    invoke-interface {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 68
    :cond_19
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->l:Z

    if-eqz v0, :cond_1a

    .line 69
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eqz v0, :cond_1a

    .line 70
    invoke-virtual {v0, p1, p0, v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 71
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->K()V

    .line 72
    :cond_1a
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->E()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exeThisStep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; currentSignal time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 3
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ; diffTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " ; state = "

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 8
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exeThisStep step "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ; isEnd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eqz v0, :cond_3

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exeThisStep  syncExeList \u5df2\u7ecf\u6709 step "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \uff1b stepHandler state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exeThisStep  syncExeList steps "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v2, v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManualIntervene step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; codes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    if-nez v0, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 9
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v3, p1, :cond_2

    move-object v0, v2

    :cond_3
    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0, p2, p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->m([ILcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->K()V

    :cond_5
    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "successThisStep step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 6
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v3, p1, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->p:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    :cond_2
    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    .line 4
    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->o:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->o:F

    .line 5
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->n:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->n:Z

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->d:Landroid/os/Handler;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;

    invoke-direct {v1, p0, v0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Running:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->K()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    return v0
.end method

.method public n(I)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getDeduct(I)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object p1

    return-object p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->e:Lcn/mucang/android/jiakaoyi/engine/c;

    return-object v0
.end method

.method public p()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->l:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 10
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Idle:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    return-void
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopping:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    return-void
.end method

.method public t(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 8
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, v2, :cond_2

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public v()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopped:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->l:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->isManual()Z

    move-result v0

    return v0
.end method

.method public y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, v2, :cond_0

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopped:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->m:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;->Stopping:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
