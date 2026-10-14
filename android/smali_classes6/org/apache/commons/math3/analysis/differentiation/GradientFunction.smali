.class public Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 10

    .line 1
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v8, v2, :cond_0

    .line 3
    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v3, p1

    const/4 v4, 0x1

    aget-wide v6, p1, v8

    move-object v2, v9

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v9, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 5
    array-length v2, p1

    new-array v2, v2, [D

    .line 6
    array-length v3, p1

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 7
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    const/4 v5, 0x1

    .line 8
    aput v5, v3, v4

    .line 9
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 10
    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method
