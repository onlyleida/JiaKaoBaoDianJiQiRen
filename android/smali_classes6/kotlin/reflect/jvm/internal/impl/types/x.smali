.class public final Lkotlin/reflect/jvm/internal/impl/types/x;
.super Lkotlin/reflect/jvm/internal/impl/types/v;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/z0;


# instance fields
.field private final d:Lkotlin/reflect/jvm/internal/impl/types/v;

.field private final e:Lkotlin/reflect/jvm/internal/impl/types/a0;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/v;Lkotlin/reflect/jvm/internal/impl/types/a0;)V
    .locals 2

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/v;->Q0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/v;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/v;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/x;->d:Lkotlin/reflect/jvm/internal/impl/types/v;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/x;->e:Lkotlin/reflect/jvm/internal/impl/types/a0;

    return-void
.end method


# virtual methods
.method public bridge synthetic B0()Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->T0()Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/x;->U0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/x;

    move-result-object p1

    return-object p1
.end method

.method public M0(Z)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->T0()Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/c1;->M0(Z)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->e0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/c1;->M0(Z)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/a1;->e(Lkotlin/reflect/jvm/internal/impl/types/c1;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/x;->U0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/x;

    move-result-object p1

    return-object p1
.end method

.method public O0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->T0()Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/c1;->O0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->e0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/a1;->e(Lkotlin/reflect/jvm/internal/impl/types/c1;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    return-object p1
.end method

.method public P0()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->T0()Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v;->P0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    return-object v0
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->e0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->w(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->T0()Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/v;->S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public T0()Lkotlin/reflect/jvm/internal/impl/types/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/x;->d:Lkotlin/reflect/jvm/internal/impl/types/v;

    return-object v0
.end method

.method public U0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/x;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/x;

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->T0()Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/g;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/v;

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/x;->e0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/g;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    .line 4
    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/x;-><init>(Lkotlin/reflect/jvm/internal/impl/types/v;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object v0
.end method

.method public e0()Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/x;->e:Lkotlin/reflect/jvm/internal/impl/types/a0;

    return-object v0
.end method
