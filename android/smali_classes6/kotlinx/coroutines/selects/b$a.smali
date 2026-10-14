.class final Lkotlinx/coroutines/selects/b$a;
.super Lkotlinx/coroutines/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:J

.field public final c:Lkotlinx/coroutines/selects/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lkotlinx/coroutines/internal/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/internal/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Lkotlinx/coroutines/internal/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/d;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    iput-object p2, p0, Lkotlinx/coroutines/selects/b$a;->d:Lkotlinx/coroutines/internal/b;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->b()Lkotlinx/coroutines/selects/h;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/selects/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/selects/b$a;->b:J

    .line 3
    invoke-virtual {p2, p0}, Lkotlinx/coroutines/internal/b;->d(Lkotlinx/coroutines/internal/d;)V

    return-void
.end method

.method private final j(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    sget-object v2, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    invoke-static {p1}, Lkotlinx/coroutines/selects/b;->R(Lkotlinx/coroutines/selects/b;)V

    :cond_2
    return-void
.end method

.method private final k()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/selects/b;->_state:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    return-object v2

    .line 3
    :cond_1
    instance-of v3, v1, Lkotlinx/coroutines/internal/u;

    if-eqz v3, :cond_2

    check-cast v1, Lkotlinx/coroutines/internal/u;

    iget-object v2, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    sget-object v3, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 6
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$a;->c:Lkotlinx/coroutines/selects/b;

    sget-object v1, Lkotlinx/coroutines/selects/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/selects/g;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/selects/b$a;->j(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/selects/b$a;->d:Lkotlinx/coroutines/internal/b;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/internal/b;->a(Lkotlinx/coroutines/internal/d;Ljava/lang/Object;)V

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/selects/b$a;->b:J

    return-wide v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b$a;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$a;->d:Lkotlinx/coroutines/internal/b;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/b;->c(Lkotlinx/coroutines/internal/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/selects/b$a;->l()V

    .line 4
    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtomicSelectOp(sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/b$a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
