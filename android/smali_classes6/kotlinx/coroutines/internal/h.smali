.class public final Lkotlinx/coroutines/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/y;

.field public static final b:Lkotlinx/coroutines/internal/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/y;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/y;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/y;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/h;->b:Lkotlinx/coroutines/internal/y;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/y;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/y;

    return-object v0
.end method

.method public static final b(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/g;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/internal/g;

    .line 2
    invoke-static {p1, p2}, Lkotlinx/coroutines/b0;->b(Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->A(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/internal/g;->d:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lkotlinx/coroutines/u0;->c:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/g;->g:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->y(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    .line 8
    sget-object v0, Lkotlinx/coroutines/r2;->b:Lkotlinx/coroutines/r2;

    invoke-virtual {v0}, Lkotlinx/coroutines/r2;->a()Lkotlinx/coroutines/c1;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/c1;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iput-object p2, p0, Lkotlinx/coroutines/internal/g;->d:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lkotlinx/coroutines/u0;->c:I

    .line 12
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/c1;->D(Lkotlinx/coroutines/u0;)V

    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/c1;->F(Z)V

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/t1;

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v2}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 16
    invoke-interface {v2}, Lkotlinx/coroutines/t1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    .line 17
    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/internal/g;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 18
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    .line 19
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    iget-object v2, p0, Lkotlinx/coroutines/internal/g;->f:Ljava/lang/Object;

    .line 20
    invoke-static {p2, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/g;->h:Lkotlin/coroutines/c;

    invoke-interface {v3, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 22
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-static {p2, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p2, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/c1;->L()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 p2, 0x0

    .line 25
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/u0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    :goto_2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/c1;->B(Z)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/c1;->B(Z)V

    throw p0

    .line 27
    :cond_4
    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/h;->b(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final d(Lkotlinx/coroutines/internal/g;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/g<",
            "-",
            "Lkotlin/v;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v1

    .line 3
    sget-object v1, Lkotlinx/coroutines/r2;->b:Lkotlinx/coroutines/r2;

    invoke-virtual {v1}, Lkotlinx/coroutines/r2;->a()Lkotlinx/coroutines/c1;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lkotlinx/coroutines/c1;->K()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/c1;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iput-object v0, p0, Lkotlinx/coroutines/internal/g;->d:Ljava/lang/Object;

    .line 7
    iput v4, p0, Lkotlinx/coroutines/u0;->c:I

    .line 8
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/c1;->D(Lkotlinx/coroutines/u0;)V

    const/4 v3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/c1;->F(Z)V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/u0;->run()V

    .line 11
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/c1;->L()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 12
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lkotlinx/coroutines/u0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :goto_0
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/c1;->B(Z)V

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Lkotlinx/coroutines/c1;->B(Z)V

    throw p0
.end method
