.class public final Lkotlin/reflect/jvm/internal/impl/types/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineClassType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->b(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/x0;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/g;",
            "Ljava/util/HashSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/k;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/model/g;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->W(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/k;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->q(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/types/model/l;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/x0;->P(Lkotlin/reflect/jvm/internal/impl/types/model/l;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->b(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->G(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->q0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/x0;->x0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p0

    move-object p1, p0

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/x0;->z(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/x0;->k0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v2

    .line 9
    :cond_4
    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->b(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p2

    if-nez p2, :cond_5

    return-object v2

    .line 10
    :cond_5
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->G(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 11
    :cond_7
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->G(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 12
    :cond_8
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/model/h;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/h;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->M(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 13
    :cond_9
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/x0;->x0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    :cond_a
    :goto_1
    return-object p1
.end method
