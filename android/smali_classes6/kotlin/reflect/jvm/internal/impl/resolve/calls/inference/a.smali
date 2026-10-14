.class public final Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;
.super Lkotlin/reflect/jvm/internal/impl/types/f0;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/b;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/types/s0;

.field private final c:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

.field private final d:Z

.field private final e:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;-><init>()V

    .line 5
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->b:Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 6
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->c:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

    .line 7
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->d:Z

    .line 8
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/c;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/c;-><init>(Lkotlin/reflect/jvm/internal/impl/types/s0;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p4

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-void
.end method


# virtual methods
.method public H0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I0()Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->R0()Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

    move-result-object v0

    return-object v0
.end method

.method public J0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->d:Z

    return v0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic M0(Z)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->S0(Z)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->U0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->S0(Z)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->U0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    move-result-object p1

    return-object p1
.end method

.method public R0()Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->c:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

    return-object v0
.end method

.method public S0(Z)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->J0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->b:Lkotlin/reflect/jvm/internal/impl/types/s0;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->R0()Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method

.method public T0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->b:Lkotlin/reflect/jvm/internal/impl/types/s0;

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->b(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->R0()Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->J0()Z

    move-result v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method

.method public U0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;
    .locals 4

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->b:Lkotlin/reflect/jvm/internal/impl/types/s0;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->R0()Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->J0()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-object v0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 2

    const-string v0, "No member resolution should be done on captured type, it used only during constraint system resolution"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/t;->i(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    const-string v1, "createErrorScope(\n      \u2026solution\", true\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Captured("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->b:Lkotlin/reflect/jvm/internal/impl/types/s0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->J0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
