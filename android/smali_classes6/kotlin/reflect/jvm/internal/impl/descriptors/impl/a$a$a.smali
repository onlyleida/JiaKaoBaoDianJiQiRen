.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;->a()Lkotlin/reflect/jvm/internal/impl/types/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/types/checker/g;",
        "Lkotlin/reflect/jvm/internal/impl/types/f0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->c:Lkotlin/reflect/jvm/internal/impl/storage/h;

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-object p1

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    if-eqz v1, :cond_1

    .line 4
    move-object p1, v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/y0;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->b(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v1

    .line 7
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;->e0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/y0;->v(Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method
