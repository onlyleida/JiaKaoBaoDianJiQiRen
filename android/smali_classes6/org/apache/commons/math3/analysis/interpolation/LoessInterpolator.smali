.class public Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ACCURACY:D = 1.0E-12

.field public static final DEFAULT_BANDWIDTH:D = 0.3

.field public static final DEFAULT_ROBUSTNESS_ITERS:I = 0x2

.field private static final serialVersionUID:J = 0x483b9da904604c5dL


# instance fields
.field private final accuracy:D

.field private final bandwidth:D

.field private final robustnessIters:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_1

    .line 7
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    if-ltz p3, :cond_0

    .line 8
    iput p3, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 9
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void

    .line 10
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROBUSTNESS_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 11
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p3, p4, p1, p2, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p3
.end method

.method private static checkAllFiniteReal([D)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkFinite(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static nextNonzero([DI)I
    .locals 5

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static tricube(D)D
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    sub-double/2addr v0, v2

    mul-double p0, v0, v0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static updateBandwidthInterval([D[DI[I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 2
    aget v3, p3, v2

    .line 3
    invoke-static {p1, v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v3

    .line 4
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-wide v4, p0, v3

    aget-wide v6, p0, p2

    sub-double/2addr v4, v6

    aget-wide v6, p0, p2

    aget-wide v8, p0, v1

    sub-double/2addr v6, v8

    cmpg-double p0, v4, v6

    if-gez p0, :cond_0

    .line 5
    aget p0, p3, v0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result p0

    .line 6
    aput p0, p3, v0

    .line 7
    aput v3, p3, v2

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D)[D

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final smooth([D[D)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 39
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 40
    array-length v0, p1

    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 41
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D[D)[D

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public final smooth([D[D[D)[D
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_f

    .line 2
    array-length v4, v1

    if-eqz v4, :cond_e

    .line 3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 4
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 5
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 6
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    new-array v1, v6, [D

    .line 7
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    return-object v1

    :cond_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    new-array v1, v7, [D

    .line 8
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    aget-wide v3, v2, v6

    aput-wide v3, v1, v6

    return-object v1

    .line 9
    :cond_1
    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    int-to-double v10, v4

    mul-double v8, v8, v10

    double-to-int v8, v8

    if-lt v8, v7, :cond_d

    .line 10
    new-array v9, v4, [D

    .line 11
    new-array v10, v4, [D

    .line 12
    new-array v11, v4, [D

    .line 13
    new-array v12, v4, [D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-static {v12, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    const/4 v15, 0x0

    .line 15
    :goto_0
    iget v13, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-gt v15, v13, :cond_c

    new-array v13, v7, [I

    aput v5, v13, v5

    add-int/lit8 v14, v8, -0x1

    aput v14, v13, v6

    const/4 v14, 0x0

    :goto_1
    const-wide/16 v18, 0x0

    if-ge v14, v4, :cond_7

    .line 16
    aget-wide v20, v1, v14

    if-lez v14, :cond_2

    .line 17
    invoke-static {v1, v3, v14, v13}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->updateBandwidthInterval([D[DI[I)V

    .line 18
    :cond_2
    aget v22, v13, v5

    .line 19
    aget v7, v13, v6

    .line 20
    aget-wide v23, v1, v14

    aget-wide v25, v1, v22

    sub-double v23, v23, v25

    aget-wide v25, v1, v7

    aget-wide v27, v1, v14

    sub-double v25, v25, v27

    cmpl-double v27, v23, v25

    if-lez v27, :cond_3

    move/from16 v23, v22

    goto :goto_2

    :cond_3
    move/from16 v23, v7

    .line 21
    :goto_2
    aget-wide v23, v1, v23

    sub-double v23, v23, v20

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v23, v16, v23

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    move-wide/from16 v26, v18

    move-wide/from16 v28, v26

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    move-wide/from16 v34, v32

    move/from16 v6, v22

    :goto_3
    if-gt v6, v7, :cond_5

    .line 22
    aget-wide v36, v1, v6

    .line 23
    aget-wide v38, v2, v6

    if-ge v6, v14, :cond_4

    sub-double v40, v20, v36

    goto :goto_4

    :cond_4
    sub-double v40, v36, v20

    :goto_4
    mul-double v40, v40, v23

    .line 24
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->tricube(D)D

    move-result-wide v40

    aget-wide v42, v12, v6

    mul-double v40, v40, v42

    aget-wide v42, v3, v6

    mul-double v40, v40, v42

    mul-double v42, v36, v40

    add-double v28, v28, v40

    add-double v26, v26, v42

    mul-double v36, v36, v42

    add-double v34, v34, v36

    mul-double v40, v40, v38

    add-double v30, v30, v40

    mul-double v38, v38, v42

    add-double v32, v32, v38

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    div-double v26, v26, v28

    div-double v30, v30, v28

    div-double v32, v32, v28

    div-double v34, v34, v28

    mul-double v6, v26, v26

    sub-double v34, v34, v6

    .line 25
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    iget-wide v12, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v24, v6, v12

    if-gez v24, :cond_6

    goto :goto_5

    :cond_6
    mul-double v6, v26, v30

    sub-double v32, v32, v6

    div-double v18, v32, v34

    :goto_5
    mul-double v26, v26, v18

    sub-double v30, v30, v26

    mul-double v18, v18, v20

    add-double v18, v18, v30

    .line 26
    aput-wide v18, v9, v14

    .line 27
    aget-wide v6, v2, v14

    aget-wide v12, v9, v14

    sub-double/2addr v6, v12

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    aput-wide v6, v10, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v22, v12

    .line 28
    iget v6, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-ne v15, v6, :cond_8

    goto :goto_8

    .line 29
    :cond_8
    invoke-static {v10, v5, v11, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v11}, Ljava/util/Arrays;->sort([D)V

    .line 31
    div-int/lit8 v6, v4, 0x2

    aget-wide v6, v11, v6

    .line 32
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    move-wide/from16 v20, v6

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v7, v12, v5

    if-gez v7, :cond_9

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_b

    .line 33
    aget-wide v6, v10, v5

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    mul-double v12, v12, v20

    div-double/2addr v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v6, v12

    if-ltz v16, :cond_a

    .line 34
    aput-wide v18, v22, v5

    goto :goto_7

    :cond_a
    mul-double v6, v6, v6

    sub-double v6, v12, v6

    mul-double v6, v6, v6

    .line 35
    aput-wide v6, v22, v5

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v22

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_c
    :goto_8
    return-object v9

    .line 36
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 37
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1

    .line 38
    :cond_f
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3
.end method
