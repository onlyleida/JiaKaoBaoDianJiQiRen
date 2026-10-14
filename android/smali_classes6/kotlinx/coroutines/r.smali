.class public final Lkotlinx/coroutines/r;
.super Lkotlinx/coroutines/u1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/u1<",
        "Lkotlinx/coroutines/a2;",
        ">;",
        "Lkotlinx/coroutines/q;"
    }
.end annotation


# instance fields
.field public final e:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/a2;Lkotlinx/coroutines/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/u1;-><init>(Lkotlinx/coroutines/t1;)V

    iput-object p2, p0, Lkotlinx/coroutines/r;->e:Lkotlinx/coroutines/s;

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/r;->e:Lkotlinx/coroutines/s;

    iget-object v0, p0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    check-cast v0, Lkotlinx/coroutines/h2;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/s;->j(Lkotlinx/coroutines/h2;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    check-cast v0, Lkotlinx/coroutines/a2;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/a2;->X(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/r;->R(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/r;->e:Lkotlinx/coroutines/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
