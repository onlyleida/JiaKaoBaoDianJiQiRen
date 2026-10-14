.class public abstract Lkotlin/reflect/jvm/internal/impl/types/d1;
.super Lkotlin/reflect/jvm/internal/impl/types/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;-><init>(Lkotlin/jvm/internal/o;)V

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
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public I0()Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    return-object v0
.end method

.method public J0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result v0

    return v0
.end method

.method public final L0()Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/d1;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/d1;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/c1;

    return-object v0
.end method

.method protected abstract M0()Lkotlin/reflect/jvm/internal/impl/types/a0;
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    return-object v0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/d1;->M0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    :goto_0
    return-object v0
.end method
