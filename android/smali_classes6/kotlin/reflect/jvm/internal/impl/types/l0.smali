.class public final Lkotlin/reflect/jvm/internal/impl/types/l0;
.super Lkotlin/reflect/jvm/internal/impl/types/e;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/h;


# instance fields
.field private final e:Lkotlin/reflect/jvm/internal/impl/types/q0;

.field private final f:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/q0;ZLkotlin/reflect/jvm/internal/impl/types/q0;)V
    .locals 1

    const-string v0, "originalTypeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/e;-><init>(Lkotlin/reflect/jvm/internal/impl/types/q0;Z)V

    .line 2
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/l0;->e:Lkotlin/reflect/jvm/internal/impl/types/q0;

    .line 3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/l0;->f:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-void
.end method


# virtual methods
.method public I0()Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/l0;->e:Lkotlin/reflect/jvm/internal/impl/types/q0;

    return-object v0
.end method

.method public S0(Z)Lkotlin/reflect/jvm/internal/impl/types/e;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/l0;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/e;->R0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/l0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/q0;ZLkotlin/reflect/jvm/internal/impl/types/q0;)V

    return-object v0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/l0;->f:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stub (BI): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/e;->R0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/e;->J0()Z

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
