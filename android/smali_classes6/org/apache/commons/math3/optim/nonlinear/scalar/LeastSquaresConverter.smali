.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

.field private final observations:[D

.field private final scale:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final weights:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 3
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[DLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    array-length v0, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 15
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 16
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    .line 18
    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 19
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 9
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    .line 10
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 12
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p3, p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method


# virtual methods
.method public value([D)D
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p1

    .line 2
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    array-length v1, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    aget-wide v5, v4, v1

    sub-double/2addr v2, v5

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 5
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    if-eqz v3, :cond_1

    .line 6
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 7
    aget-wide v3, p1, v0

    .line 8
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->weights:[D

    aget-wide v6, v5, v0

    mul-double v6, v6, v3

    mul-double v6, v6, v3

    add-double/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object p1

    array-length v3, p1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-wide v4, p1, v0

    mul-double v4, v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_2
    array-length v3, p1

    :goto_3
    if-ge v0, v3, :cond_3

    aget-wide v4, p1, v0

    mul-double v4, v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-wide v1

    .line 12
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LeastSquaresConverter;->observations:[D

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
