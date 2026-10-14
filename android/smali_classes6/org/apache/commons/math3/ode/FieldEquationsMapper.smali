.class public Lorg/apache/commons/math3/ode/FieldEquationsMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337b4aL


# instance fields
.field private final start:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, 0x2

    .line 3
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    if-nez p1, :cond_1

    .line 4
    aput v0, v2, v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 p1, v1, 0x1

    .line 6
    aget v0, v2, v1

    add-int/2addr v0, p2

    aput v0, v2, p1

    return-void
.end method

.method private checkIndex(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    .line 1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    iget-object p1, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->checkIndex(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    .line 4
    array-length v0, p2

    if-lt v0, p1, :cond_0

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    .line 5
    aget-object v2, p2, v0

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getNumberOfEquations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTotalDimension()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->checkIndex(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->start:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget p1, v0, p1

    sub-int v0, p1, v1

    .line 4
    array-length v2, p3

    if-lt v2, p1, :cond_1

    .line 5
    array-length p1, p2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-static {p2, p1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 8
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p3, p3

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method

.method public mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getDerivative()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getSecondaryDerivative(I)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getSecondaryState(I)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public mapStateAndDerivative(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2
    array-length v0, p3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 5
    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 6
    new-instance p2, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {p2, p1, v4, v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object p2

    .line 7
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, -0x1

    invoke-static {v2, v0, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[Lorg/apache/commons/math3/RealFieldElement;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v0

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    .line 10
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v6, v0

    .line 11
    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v7, v0

    goto :goto_0

    .line 12
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object p2

    .line 13
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method
