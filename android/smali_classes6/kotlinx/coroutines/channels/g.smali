.class public Lkotlinx/coroutines/channels/g;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "Lkotlin/v;",
        ">;",
        "Lkotlinx/coroutines/channels/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final d:Lkotlinx/coroutines/channels/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/f<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    return-void
.end method

.method static synthetic Z0(Lkotlinx/coroutines/channels/g;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/p;->v(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a1(Lkotlinx/coroutines/channels/g;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/p;->A(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b1(Lkotlinx/coroutines/channels/g;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/g;->a1(Lkotlinx/coroutines/channels/g;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/t;->D(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/g;->b1(Lkotlinx/coroutines/channels/g;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/t;->G()Z

    move-result v0

    return v0
.end method

.method public T(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/a2;->K0(Lkotlinx/coroutines/a2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/p;->a(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a2;->R(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final X0()Lkotlinx/coroutines/channels/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/f<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method protected final Y0()Lkotlinx/coroutines/channels/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/a2;->K(Lkotlinx/coroutines/a2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/t1;)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/g;->T(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/p;->g()Z

    move-result v0

    return v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/t;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/p;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public t(Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/t;->t(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public v(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/channels/x<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/g;->Z0(Lkotlinx/coroutines/channels/g;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/p;->y()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public z()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/g;->d:Lkotlinx/coroutines/channels/f;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/p;->z()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method
