.class public abstract Lkotlinx/coroutines/internal/n$a;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/d;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/d<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n$a;->h()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n$a;->i()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/internal/n$a;->n(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 4
    :goto_1
    sget-object v3, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/internal/n$a;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    xor-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void

    .line 7
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    xor-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public final c(Lkotlinx/coroutines/internal/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/n$a;->m(Lkotlinx/coroutines/internal/u;)Lkotlinx/coroutines/internal/n;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, v0, Lkotlinx/coroutines/internal/n;->_next:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    return-object v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 4
    :cond_2
    instance-of v3, v1, Lkotlinx/coroutines/internal/u;

    if-eqz v3, :cond_4

    .line 5
    check-cast v1, Lkotlinx/coroutines/internal/u;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/internal/u;->b(Lkotlinx/coroutines/internal/u;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    sget-object p1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/n$a;->e(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    .line 9
    :cond_5
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/n$a;->l(Lkotlinx/coroutines/internal/n;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    new-instance v3, Lkotlinx/coroutines/internal/n$c;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/internal/n;

    invoke-direct {v3, v0, v4, p0}, Lkotlinx/coroutines/internal/n$c;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n$a;)V

    .line 11
    sget-object v4, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/internal/n$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 13
    sget-object v5, Lkotlinx/coroutines/internal/o;->a:Ljava/lang/Object;

    if-ne v4, v5, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v4, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_2
    return-object v2

    :catchall_0
    move-exception p1

    .line 15
    sget-object v2, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    throw p1

    .line 17
    :cond_b
    sget-object p1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract e(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
.end method

.method protected abstract f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)V
.end method

.method public abstract g(Lkotlinx/coroutines/internal/n$c;)V
.end method

.method protected abstract h()Lkotlinx/coroutines/internal/n;
.end method

.method protected abstract i()Lkotlinx/coroutines/internal/n;
.end method

.method public j(Lkotlinx/coroutines/internal/n$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/n$a;->g(Lkotlinx/coroutines/internal/n$c;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Lkotlinx/coroutines/internal/n;)V
    .locals 0

    return-void
.end method

.method protected abstract l(Lkotlinx/coroutines/internal/n;Ljava/lang/Object;)Z
.end method

.method protected abstract m(Lkotlinx/coroutines/internal/u;)Lkotlinx/coroutines/internal/n;
.end method

.method public abstract n(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
.end method
