.class public Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field public static final DEFAULT_EXTEND:I = 0x5


# instance fields
.field private final extend:I

.field private final interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private final period:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;D)V
    .locals 1

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    .line 4
    iput p4, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v2, 0x0

    .line 3
    aget-wide v11, v1, v2

    .line 4
    array-length v3, v1

    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 5
    new-array v13, v3, [D

    .line 6
    new-array v14, v3, [D

    const/4 v15, 0x0

    .line 7
    :goto_0
    array-length v5, v1

    if-ge v15, v5, :cond_0

    .line 8
    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    add-int v16, v15, v5

    .line 9
    aget-wide v5, v1, v15

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v5

    aput-wide v5, v13, v16

    .line 10
    aget-wide v5, p2, v15

    aput-wide v5, v14, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 11
    :goto_1
    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    if-ge v15, v5, :cond_1

    .line 12
    array-length v6, v1

    sub-int/2addr v6, v5

    add-int v16, v6, v15

    .line 13
    aget-wide v5, v1, v16

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    sub-double/2addr v5, v7

    aput-wide v5, v13, v15

    .line 14
    aget-wide v5, p2, v16

    aput-wide v5, v14, v15

    .line 15
    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    sub-int v5, v3, v5

    add-int v16, v5, v15

    .line 16
    aget-wide v5, v1, v15

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    add-double/2addr v5, v7

    aput-wide v5, v13, v16

    .line 17
    aget-wide v5, p2, v15

    aput-wide v5, v14, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v4, [[D

    aput-object v14, v1, v2

    .line 18
    invoke-static {v13, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 19
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v1, v13, v14}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    .line 20
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;

    invoke-direct {v2, v0, v1, v11, v12}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object v2

    .line 21
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method
