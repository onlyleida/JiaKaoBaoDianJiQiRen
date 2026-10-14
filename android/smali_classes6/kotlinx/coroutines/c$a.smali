.class final Lkotlinx/coroutines/c$a;
.super Lkotlinx/coroutines/z1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/z1<",
        "Lkotlinx/coroutines/t1;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile _disposer:Ljava/lang/Object;

.field public e:Lkotlinx/coroutines/y0;

.field private final f:Lkotlinx/coroutines/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/k<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lkotlinx/coroutines/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/c;Lkotlinx/coroutines/k;Lkotlinx/coroutines/t1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlinx/coroutines/t1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/c$a;->g:Lkotlinx/coroutines/c;

    invoke-direct {p0, p3}, Lkotlinx/coroutines/z1;-><init>(Lkotlinx/coroutines/t1;)V

    iput-object p2, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/k;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/c$a;->_disposer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Throwable;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/k;->m(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/k;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/k;->J(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/c$a;->S()Lkotlinx/coroutines/c$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/c$b;->b()V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/c$a;->g:Lkotlinx/coroutines/c;

    sget-object v0, Lkotlinx/coroutines/c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/k;

    iget-object v0, p0, Lkotlinx/coroutines/c$a;->g:Lkotlinx/coroutines/c;

    invoke-static {v0}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/c;)[Lkotlinx/coroutines/p0;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 8
    invoke-interface {v4}, Lkotlinx/coroutines/p0;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final S()Lkotlinx/coroutines/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/c<",
            "TT;>.b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->_disposer:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/c$b;

    return-object v0
.end method

.method public final T()Lkotlinx/coroutines/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->e:Lkotlinx/coroutines/y0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "handle"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final U(Lkotlinx/coroutines/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/c$a;->_disposer:Ljava/lang/Object;

    return-void
.end method

.method public final V(Lkotlinx/coroutines/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/c$a;->e:Lkotlinx/coroutines/y0;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c$a;->R(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
