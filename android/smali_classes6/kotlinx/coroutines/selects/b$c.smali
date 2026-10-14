.class final Lkotlinx/coroutines/selects/b$c;
.super Lkotlinx/coroutines/internal/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/internal/n$c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/n$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/b$c;->a:Lkotlinx/coroutines/internal/n$c;

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
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$c;->a:Lkotlinx/coroutines/internal/n$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/selects/b;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$c;->a:Lkotlinx/coroutines/internal/n$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n$c;->d()V

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$c;->a:Lkotlinx/coroutines/internal/n$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n$c;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/selects/b$c;->a:Lkotlinx/coroutines/internal/n$c;

    iget-object v1, v1, Lkotlinx/coroutines/internal/n$c;->c:Lkotlinx/coroutines/internal/n$a;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v1

    .line 5
    :goto_0
    sget-object v2, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method
