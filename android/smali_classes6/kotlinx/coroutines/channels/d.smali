.class public Lkotlinx/coroutines/channels/d;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private e:[Ljava/lang/Object;

.field private f:I

.field private final g:I

.field private final h:Lkotlinx/coroutines/channels/BufferOverflow;

.field private volatile size:I


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/b/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/b/l;)V

    iput p1, p0, Lkotlinx/coroutines/channels/d;->g:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    .line 3
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/k;->j([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    sget-object p3, Lkotlin/v;->a:Lkotlin/v;

    iput-object p1, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    .line 4
    iput p2, p0, Lkotlinx/coroutines/channels/d;->size:I

    return-void

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final c0(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/d;->g:I

    if-ge p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/d;->d0(I)V

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v2, p0, Lkotlinx/coroutines/channels/d;->f:I

    array-length v3, v0

    rem-int v3, v2, v3

    const/4 v4, 0x0

    aput-object v4, v0, v3

    add-int/2addr p1, v2

    .line 6
    array-length v3, v0

    rem-int/2addr p1, v3

    aput-object p2, v0, p1

    add-int/2addr v2, v1

    .line 7
    array-length p1, v0

    rem-int/2addr v2, p1

    iput v2, p0, Lkotlinx/coroutines/channels/d;->f:I

    :goto_2
    return-void
.end method

.method private final d0(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 2
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lkotlinx/coroutines/channels/d;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 4
    iget-object v4, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/2addr v5, v3

    array-length v6, v4

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/y;

    invoke-static {v1, v3, p1, v0}, Lkotlin/collections/k;->i([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    .line 7
    iput v2, p0, Lkotlinx/coroutines/channels/d;->f:I

    :cond_1
    return-void
.end method

.method private final e0(I)Lkotlinx/coroutines/internal/y;
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/d;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v2

    .line 2
    iput p1, p0, Lkotlinx/coroutines/channels/d;->size:I

    return-object v1

    .line 3
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v0, Lkotlinx/coroutines/channels/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 5
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/y;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/a;->c:Lkotlinx/coroutines/internal/y;

    :goto_0
    return-object v1
.end method


# virtual methods
.method protected N(Lkotlinx/coroutines/channels/o;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/o<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->N(Lkotlinx/coroutines/channels/o;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/d;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected S(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget v2, p0, Lkotlinx/coroutines/channels/d;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 5
    iget-object v6, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/d;->f:I

    aget-object v6, v6, v7

    if-eqz v0, :cond_0

    .line 6
    sget-object v7, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/y;

    if-eq v6, v7, :cond_0

    .line 7
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->c(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v4

    .line 8
    :cond_0
    iget-object v6, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/d;->f:I

    sget-object v8, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/y;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    .line 9
    array-length v6, v6

    rem-int/2addr v7, v6

    iput v7, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iput v3, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 11
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->S(Z)V

    if-nez v4, :cond_2

    return-void

    .line 13
    :cond_2
    throw v4

    :catchall_0
    move-exception p1

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected V()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 5
    :cond_1
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/channels/d;->f:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 6
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 7
    iput v2, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 8
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    .line 9
    iget v3, p0, Lkotlinx/coroutines/channels/d;->g:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v3, :cond_7

    move-object v3, v5

    .line 10
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->E()Lkotlinx/coroutines/channels/s;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 11
    invoke-static {v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lkotlinx/coroutines/channels/s;->U(Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 12
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne v3, v2, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 13
    :cond_4
    :goto_2
    invoke-static {v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/s;->S()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    const/4 v6, 0x1

    goto :goto_3

    .line 14
    :cond_5
    invoke-static {v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/s;->V()V

    move-object v3, v8

    goto :goto_1

    :cond_6
    move-object v5, v3

    .line 15
    :cond_7
    :goto_3
    sget-object v3, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-eq v2, v3, :cond_8

    instance-of v3, v2, Lkotlinx/coroutines/channels/j;

    if-nez v3, :cond_8

    .line 16
    iput v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 17
    iget-object v3, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    .line 18
    :cond_8
    iget v1, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/2addr v1, v7

    iget-object v2, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/channels/d;->f:I

    .line 19
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v6, :cond_9

    .line 20
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/s;->R()V

    :cond_9
    return-object v4

    :catchall_0
    move-exception v1

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected W(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 5
    :cond_1
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/channels/d;->f:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 6
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 7
    iput v2, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 8
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    .line 9
    iget v3, p0, Lkotlinx/coroutines/channels/d;->g:I

    const/4 v6, 0x1

    if-ne v1, v3, :cond_7

    .line 10
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->L()Lkotlinx/coroutines/channels/AbstractChannel$g;

    move-result-object v3

    .line 11
    invoke-interface {p1, v3}, Lkotlinx/coroutines/selects/f;->q(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 12
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n$d;->o()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/channels/s;

    .line 13
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/s;->S()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    .line 14
    :cond_2
    sget-object v3, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-ne v7, v3, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    sget-object v3, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne v7, v3, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object v2

    if-ne v7, v2, :cond_5

    .line 17
    iput v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 18
    iget-object p1, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/d;->f:I

    aput-object v4, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v7

    .line 20
    :cond_5
    :try_start_2
    instance-of v2, v7, Lkotlinx/coroutines/channels/j;

    if-eqz v2, :cond_6

    .line 21
    move-object v5, v7

    check-cast v5, Lkotlinx/coroutines/channels/s;

    move-object v2, v7

    goto :goto_2

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    const/4 v3, 0x0

    .line 23
    :goto_4
    sget-object v7, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-eq v2, v7, :cond_8

    instance-of v7, v2, Lkotlinx/coroutines/channels/j;

    if-nez v7, :cond_8

    .line 24
    iput v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 25
    iget-object p1, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/2addr v7, v1

    array-length v1, p1

    rem-int/2addr v7, v1

    aput-object v2, p1, v7

    goto :goto_5

    .line 26
    :cond_8
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->j()Z

    move-result p1

    if-nez p1, :cond_9

    .line 27
    iput v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 28
    iget-object p1, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/d;->f:I

    aput-object v4, p1, v1

    .line 29
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 30
    :cond_9
    :goto_5
    :try_start_3
    iget p1, p0, Lkotlinx/coroutines/channels/d;->f:I

    add-int/2addr p1, v6

    iget-object v1, p0, Lkotlinx/coroutines/channels/d;->e:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/channels/d;->f:I

    .line 31
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v3, :cond_a

    .line 32
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/s;->R()V

    :cond_a
    return-object v4

    :catchall_0
    move-exception p1

    .line 33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected d(Lkotlinx/coroutines/channels/s;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/b;->d(Lkotlinx/coroutines/channels/s;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->g()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected final q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final r()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/d;->size:I

    iget v1, p0, Lkotlinx/coroutines/channels/d;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/d;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/d;->e0(I)Lkotlinx/coroutines/internal/y;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_1
    if-nez v1, :cond_7

    .line 6
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->C()Lkotlinx/coroutines/channels/q;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 7
    instance-of v3, v2, Lkotlinx/coroutines/channels/j;

    if-eqz v3, :cond_3

    .line 8
    iput v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 10
    :cond_3
    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lkotlinx/coroutines/channels/q;->s(Ljava/lang/Object;Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_6
    :goto_1
    iput v1, p0, Lkotlinx/coroutines/channels/d;->size:I

    .line 13
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/q;->g(Ljava/lang/Object;)V

    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/channels/q;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7
    :try_start_4
    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/channels/d;->c0(ILjava/lang/Object;)V

    .line 17
    sget-object p1, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/y;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
