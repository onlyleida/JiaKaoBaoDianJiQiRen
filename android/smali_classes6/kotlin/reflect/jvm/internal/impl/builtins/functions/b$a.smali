.class final Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;
.super Lkotlin/reflect/jvm/internal/impl/types/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->L0(Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;)Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/b;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->v()Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->K0(Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Q0()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    new-array v0, v3, [Lkotlin/reflect/jvm/internal/impl/name/b;

    .line 2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->J0()Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/h;->d:Lkotlin/reflect/jvm/internal/impl/name/c;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->M0()I

    move-result v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/name/b;-><init>(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->I0()Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v3, [Lkotlin/reflect/jvm/internal/impl/name/b;

    .line 4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->J0()Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/h;->l:Lkotlin/reflect/jvm/internal/impl/name/c;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->M0()I

    move-result v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/name/b;-><init>(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->I0()Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->H0(Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/b;

    .line 10
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Lkotlin/collections/s;->I0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 14
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    .line 15
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v7

    invoke-direct {v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Built-in class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_6
    invoke-static {v2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lkotlin/reflect/jvm/internal/impl/descriptors/r0;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r0$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/r0$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->v()Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->v()Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    move-result-object v0

    return-object v0
.end method

.method public v()Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->d:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    return-object v0
.end method
