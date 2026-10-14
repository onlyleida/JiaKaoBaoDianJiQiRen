.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

.field private final d:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

.field private final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;)V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    .line 4
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    return-void
.end method

.method private final G(Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic B(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->F(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->H(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    return-object p1
.end method

.method protected E(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ZBCS"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_3

    const/16 v2, 0x43

    if-eq v0, v2, :cond_2

    const/16 v2, 0x53

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_4

    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "S"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-short p1, p2

    .line 6
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v0, "C"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-char p1, p2

    .line 8
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string v0, "B"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-byte p1, p2

    .line 10
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_4
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 12
    :cond_5
    :goto_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    return-object p1
.end method

.method protected F(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;
    .locals 1

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;

    move-result-object p1

    return-object p1
.end method

.method protected H(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "constant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;-><init>(B)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/x;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/x;-><init>(S)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/l;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/v;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/l;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/v;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/w;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/w;-><init>(J)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method protected w(Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/b;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o0;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;"
        }
    .end annotation

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->G(Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    invoke-direct {v0, p0, p1, p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V

    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->E(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    return-object p1
.end method
