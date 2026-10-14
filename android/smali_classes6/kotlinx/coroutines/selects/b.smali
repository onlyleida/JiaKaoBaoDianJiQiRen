.class public final Lkotlinx/coroutines/selects/b;
.super Lkotlinx/coroutines/internal/l;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/a;
.implements Lkotlinx/coroutines/selects/f;
.implements Lkotlin/coroutines/c;
.implements Lkotlin/coroutines/jvm/internal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/b$d;,
        Lkotlinx/coroutines/selects/b$c;,
        Lkotlinx/coroutines/selects/b$a;,
        Lkotlinx/coroutines/selects/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/l;",
        "Lkotlinx/coroutines/selects/a<",
        "TR;>;",
        "Lkotlinx/coroutines/selects/f<",
        "TR;>;",
        "Lkotlin/coroutines/c<",
        "TR;>;",
        "Lkotlin/coroutines/jvm/internal/c;"
    }
.end annotation


# static fields
.field static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field volatile _result:Ljava/lang/Object;

.field volatile _state:Ljava/lang/Object;

.field private final d:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/selects/b;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_result"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/l;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic R(Lkotlinx/coroutines/selects/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->S()V

    return-void
.end method

.method private final S()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->T()Lkotlinx/coroutines/y0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/y0;->dispose()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->G()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/n;

    .line 3
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/selects/b$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/selects/b$b;

    .line 5
    iget-object v1, v1, Lkotlinx/coroutines/selects/b$b;->d:Lkotlinx/coroutines/y0;

    invoke-interface {v1}, Lkotlinx/coroutines/y0;->dispose()V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->H()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final T()Lkotlinx/coroutines/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/y0;

    return-object v0
.end method

.method private final W()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/t1;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    new-instance v4, Lkotlinx/coroutines/selects/b$d;

    invoke-direct {v4, p0, v1}, Lkotlinx/coroutines/selects/b$d;-><init>(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/t1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/t1$a;->d(Lkotlinx/coroutines/t1;ZZLkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/b;->X(Lkotlinx/coroutines/y0;)V

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/y0;->dispose()V

    :cond_0
    return-void
.end method

.method private final X(Lkotlinx/coroutines/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/selects/b;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final U()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->W()V

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 6
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 7
    instance-of v1, v0, Lkotlinx/coroutines/y;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    check-cast v0, Lkotlinx/coroutines/y;

    iget-object v0, v0, Lkotlinx/coroutines/y;->a:Ljava/lang/Throwable;

    throw v0

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final V(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->U()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/y;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/y;

    iget-object v0, v0, Lkotlinx/coroutines/y;->a:Ljava/lang/Throwable;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/l0;->d()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/internal/x;->m(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/l0;->d()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->m(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_1
    if-eq v0, v1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/f0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public f(JLkotlin/jvm/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->o()Lkotlin/coroutines/c;

    invoke-static {p3, p0}, Lkotlinx/coroutines/a3/b;->c(Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lkotlinx/coroutines/selects/b$e;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/selects/b$e;-><init>(Lkotlinx/coroutines/selects/b;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/s0;->b(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r0;

    move-result-object p3

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {p3, p1, p2, v0, v1}, Lkotlinx/coroutines/r0;->g(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/y0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/b;->h(Lkotlinx/coroutines/y0;)V

    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/c;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/c;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lkotlinx/coroutines/y0;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/b$b;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/b$b;-><init>(Lkotlinx/coroutines/y0;)V

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/n;->y(Lkotlinx/coroutines/internal/n;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/y0;->dispose()V

    return-void
.end method

.method public i(Lkotlinx/coroutines/internal/n$c;)Ljava/lang/Object;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/b$c;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/b$c;-><init>(Lkotlinx/coroutines/internal/n$c;)V

    .line 5
    sget-object v1, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/selects/b$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 7
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b;->S()V

    .line 8
    sget-object p1, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    return-object p1

    .line 9
    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v1

    .line 11
    instance-of v2, v1, Lkotlinx/coroutines/selects/b$a;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/selects/b$a;

    iget-object v2, v2, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    if-eq v2, p0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use matching select clauses on the same object"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    :goto_1
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/u;->b(Lkotlinx/coroutines/internal/u;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    sget-object p1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    return-object p1

    .line 15
    :cond_6
    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    return-object v2

    .line 16
    :cond_8
    iget-object p1, p1, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    if-ne v0, p1, :cond_9

    sget-object p1, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    return-object p1

    :cond_9
    return-object v2
.end method

.method public j()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/b;->i(Lkotlinx/coroutines/internal/n$c;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected trySelectIdempotent result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public o()Lkotlin/coroutines/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/c<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public p(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 4
    new-instance v0, Lkotlinx/coroutines/y;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    .line 5
    invoke-static {}, Lkotlinx/coroutines/l0;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lkotlin/coroutines/jvm/internal/c;

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    check-cast v1, Lkotlin/coroutines/jvm/internal/c;

    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    move-object v1, p1

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/y;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/o;)V

    .line 8
    sget-object v1, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/b$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/b$a;-><init>(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/internal/b;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/b0;->d(Ljava/lang/Object;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    sget-object v0, Lkotlinx/coroutines/selects/b;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/selects/g;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 10
    invoke-static {}, Lkotlinx/coroutines/l0;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/c;

    if-nez v1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/jvm/internal/c;

    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Throwable;

    move-result-object p1

    .line 12
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lkotlinx/coroutines/selects/b;->d:Lkotlin/coroutines/c;

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/d<",
            "+TQ;>;",
            "Lkotlin/jvm/b/p<",
            "-TQ;-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lkotlinx/coroutines/selects/d;->f(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectInstance(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b;->_result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
