.class final Lkotlinx/coroutines/selects/b$d;
.super Lkotlinx/coroutines/u1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/u1<",
        "Lkotlinx/coroutines/t1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lkotlinx/coroutines/selects/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/t1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/t1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/selects/b$d;->e:Lkotlinx/coroutines/selects/b;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/u1;-><init>(Lkotlinx/coroutines/t1;)V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/selects/b$d;->e:Lkotlinx/coroutines/selects/b;

    invoke-virtual {p1}, Lkotlinx/coroutines/selects/b;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/selects/b$d;->e:Lkotlinx/coroutines/selects/b;

    iget-object v0, p0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    invoke-interface {v0}, Lkotlinx/coroutines/t1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/selects/b;->p(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/b$d;->R(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectOnCancelling["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b$d;->e:Lkotlinx/coroutines/selects/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
