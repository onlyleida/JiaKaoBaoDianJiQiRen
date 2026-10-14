.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o$a;
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/r;->o:Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;-><init>(Lkotlin/reflect/jvm/internal/impl/name/c;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/r;->p:Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;-><init>(Lkotlin/reflect/jvm/internal/impl/name/c;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    return-void
.end method

.method public static final synthetic a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->d(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    invoke-static {p0}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lkotlin/collections/s;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    :goto_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "At least one Annotations object expected"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final e(Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/f;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->j(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v0, :cond_1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->j(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;

    .line 4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne p2, p1, :cond_5

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->f(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 7
    :cond_4
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne p2, p1, :cond_5

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->f(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 9
    :cond_5
    :goto_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->j(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method

.method private static final g(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method

.method private static final h(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->j(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->j(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->g(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->g(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final i(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/p;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/p;

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/m;->b(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p0

    return p0
.end method

.method private static final j(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method
