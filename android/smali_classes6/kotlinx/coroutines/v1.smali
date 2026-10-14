.class public Lkotlinx/coroutines/v1;
.super Lkotlinx/coroutines/a2;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/w;


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/t1;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/a2;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a2;->n0(Lkotlinx/coroutines/t1;)V

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/v1;->R0()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/v1;->b:Z

    return-void
.end method

.method private final R0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a2;->j0()Lkotlinx/coroutines/q;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/r;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    check-cast v0, Lkotlinx/coroutines/a2;

    if-eqz v0, :cond_3

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->g0()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->j0()Lkotlinx/coroutines/q;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/r;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lkotlinx/coroutines/r;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lkotlinx/coroutines/z1;->d:Lkotlinx/coroutines/t1;

    check-cast v0, Lkotlinx/coroutines/a2;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/v1;->b:Z

    return v0
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
