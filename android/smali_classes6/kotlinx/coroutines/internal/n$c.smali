.class public final Lkotlinx/coroutines/internal/n$c;
.super Lkotlinx/coroutines/internal/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/internal/n;

.field public final b:Lkotlinx/coroutines/internal/n;

.field public final c:Lkotlinx/coroutines/internal/n$a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n$c;->a:Lkotlinx/coroutines/internal/n;

    iput-object p2, p0, Lkotlinx/coroutines/internal/n$c;->b:Lkotlinx/coroutines/internal/n;

    iput-object p3, p0, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/internal/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->b()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->a:Lkotlinx/coroutines/internal/n;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/n;

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/n$a;->j(Lkotlinx/coroutines/internal/n$c;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lkotlinx/coroutines/internal/o;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->b:Lkotlinx/coroutines/internal/n;

    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/internal/n;->x(Lkotlinx/coroutines/internal/n;)Lkotlinx/coroutines/internal/v;

    move-result-object v3

    .line 7
    sget-object v4, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object v3, p0, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/n$a;->k(Lkotlinx/coroutines/internal/n;)V

    .line 9
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/n;->u(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/u;)Lkotlinx/coroutines/internal/n;

    :cond_3
    return-object v1

    :cond_4
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/d;->f()Ljava/lang/Object;

    move-result-object v0

    .line 12
    :goto_2
    sget-object v1, Lkotlinx/coroutines/internal/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    iget-object v1, p0, Lkotlinx/coroutines/internal/n$c;->b:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/internal/n$a;->n(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 14
    :cond_7
    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->b:Lkotlinx/coroutines/internal/n;

    .line 15
    :goto_3
    sget-object v1, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/n$a;->g(Lkotlinx/coroutines/internal/n$c;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareOp(op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
