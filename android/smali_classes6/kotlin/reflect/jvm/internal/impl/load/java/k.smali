.class public final Lkotlin/reflect/jvm/internal/impl/load/java/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "nullabilityQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifierApplicabilityTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    .line 4
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    .line 5
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object p3

    sget-object p6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne p3, p6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, p3

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/k;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZ)V

    return-void
.end method

.method public static synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/k;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/k;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;",
            ">;ZZ)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/k;"
        }
    .end annotation

    const-string v0, "nullabilityQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifierApplicabilityTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/k;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Ljava/util/Collection;ZZ)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/k;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    iget-boolean v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    return-object v0
.end method

.method public final g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaDefaultQualifiers(nullabilityQualifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qualifierApplicabilityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", affectsTypeParameterBasedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", affectsStarProjection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/k;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
