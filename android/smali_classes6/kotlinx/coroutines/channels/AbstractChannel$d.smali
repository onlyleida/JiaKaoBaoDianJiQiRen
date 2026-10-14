.class Lkotlinx/coroutines/channels/AbstractChannel$d;
.super Lkotlinx/coroutines/channels/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/o<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lkotlinx/coroutines/channels/AbstractChannel$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/AbstractChannel$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/AbstractChannel$a;Lkotlinx/coroutines/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/AbstractChannel$a<",
            "TE;>;",
            "Lkotlinx/coroutines/k<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/o;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->d:Lkotlinx/coroutines/channels/AbstractChannel$a;

    iput-object p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/Object;)Lkotlin/jvm/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->d:Lkotlinx/coroutines/channels/AbstractChannel$a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/AbstractChannel$a;->b:Lkotlinx/coroutines/channels/AbstractChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    invoke-interface {v1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/b/l;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public T(Lkotlinx/coroutines/channels/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlinx/coroutines/k$a;->a(Lkotlinx/coroutines/k;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/j;->Y()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/k;->m(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->d:Lkotlinx/coroutines/channels/AbstractChannel$a;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel$a;->d(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/k;->J(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->d:Lkotlinx/coroutines/channels/AbstractChannel$a;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$a;->d(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    sget-object v0, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/k;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/Object;Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/n$c;",
            ")",
            "Lkotlinx/coroutines/internal/y;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$d;->e:Lkotlinx/coroutines/k;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v3, p2, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$d;->S(Ljava/lang/Object;)Lkotlin/jvm/b/l;

    move-result-object p1

    invoke-interface {v0, v1, v3, p1}, Lkotlinx/coroutines/k;->B(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/n$c;->d()V

    .line 4
    :cond_4
    sget-object p1, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveHasNext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
