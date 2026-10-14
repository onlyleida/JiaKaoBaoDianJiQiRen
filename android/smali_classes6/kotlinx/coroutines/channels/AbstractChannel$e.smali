.class final Lkotlinx/coroutines/channels/AbstractChannel$e;
.super Lkotlinx/coroutines/channels/o;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/o<",
        "TE;>;",
        "Lkotlinx/coroutines/y0;"
    }
.end annotation


# instance fields
.field public final d:Lkotlinx/coroutines/channels/AbstractChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/AbstractChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/selects/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final f:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/AbstractChannel<",
            "TE;>;",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/o;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->d:Lkotlinx/coroutines/channels/AbstractChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    iput-object p3, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->f:Lkotlin/jvm/b/p;

    iput p4, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->g:I

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
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->d:Lkotlinx/coroutines/channels/AbstractChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-interface {v1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object v1

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-interface {v0}, Lkotlinx/coroutines/selects/f;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->g:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->f:Lkotlin/jvm/b/p;

    sget-object v0, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    iget-object p1, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    .line 4
    new-instance v0, Lkotlinx/coroutines/channels/x$a;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/x$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlinx/coroutines/channels/x;->a(Ljava/lang/Object;)Lkotlinx/coroutines/channels/x;

    move-result-object v3

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/a3/a;->d(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->f:Lkotlin/jvm/b/p;

    const/4 v2, 0x0

    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/a3/a;->d(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/j;->Y()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/selects/f;->p(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/j;->Y()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/selects/f;->p(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->d:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/AbstractChannel;->T()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->f:Lkotlin/jvm/b/p;

    .line 2
    iget v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlinx/coroutines/channels/x;->a(Ljava/lang/Object;)Lkotlinx/coroutines/channels/x;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 4
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-interface {v2}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$e;->S(Ljava/lang/Object;)Lkotlin/jvm/b/l;

    move-result-object p1

    .line 6
    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/a3/a;->c(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public s(Ljava/lang/Object;Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/n$c;",
            ")",
            "Lkotlinx/coroutines/internal/y;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/f;->i(Lkotlinx/coroutines/internal/n$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/y;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveSelect@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->e:Lkotlinx/coroutines/selects/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
