.class Lkotlinx/coroutines/channels/AbstractChannel$b;
.super Lkotlinx/coroutines/channels/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field public final d:Lkotlinx/coroutines/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/o;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

    iput p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->e:I

    return-void
.end method


# virtual methods
.method public T(Lkotlinx/coroutines/channels/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

    const/4 v0, 0x0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

    .line 3
    sget-object v1, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    iget-object p1, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    .line 4
    new-instance v1, Lkotlinx/coroutines/channels/x$a;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/x$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Lkotlinx/coroutines/channels/x;->a(Ljava/lang/Object;)Lkotlinx/coroutines/channels/x;

    move-result-object p1

    .line 6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/j;->Y()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final U(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlinx/coroutines/channels/x;->a(Ljava/lang/Object;)Lkotlinx/coroutines/channels/x;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

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
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$b;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v3, p2, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/o;->S(Ljava/lang/Object;)Lkotlin/jvm/b/l;

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

    const-string v1, "ReceiveElement@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
