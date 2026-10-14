.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/d0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "TK;TV;TE;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Lkotlin/jvm/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/p<",
            "-TK;-TV;+TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->d:Lkotlin/jvm/b/p;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->c()V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/f;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/debug/internal/f;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/f;->a:Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_0

    .line 5
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->c:Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public e()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/debug/internal/a;->c()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->a:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;->a(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->d:Lkotlin/jvm/b/p;

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->c:Ljava/lang/Object;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1, v3}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->c()V

    return-object v0

    :cond_0
    const-string v0, "value"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "key"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;->e()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method
