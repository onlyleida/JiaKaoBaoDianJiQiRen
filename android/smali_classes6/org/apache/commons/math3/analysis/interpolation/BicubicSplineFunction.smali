.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D

.field private final partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method constructor <init>([D)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    return-void
.end method

.method constructor <init>([DZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    const-class v1, D

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    .line 4
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v7, v7, v4

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v6

    aget-wide v8, p1, v8

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    new-array v4, v2, [I

    .line 5
    fill-array-data v4, :array_1

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-array v6, v2, [I

    .line 6
    fill-array-data v6, :array_2

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    new-array v7, v2, [I

    .line 7
    fill-array-data v7, :array_3

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    new-array v8, v2, [I

    .line 8
    fill-array-data v8, :array_4

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_5

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_2

    .line 10
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v10, v10, v2

    aget-wide v11, v10, v9

    .line 11
    aget-object v10, v4, v2

    int-to-double v13, v2

    mul-double v13, v13, v11

    aput-wide v13, v10, v9

    .line 12
    aget-object v10, v6, v2

    int-to-double v13, v9

    mul-double v11, v11, v13

    aput-wide v11, v10, v9

    .line 13
    aget-object v10, v7, v2

    add-int/lit8 v11, v2, -0x1

    int-to-double v11, v11

    aget-object v15, v4, v2

    aget-wide v16, v15, v9

    mul-double v11, v11, v16

    aput-wide v11, v10, v9

    .line 14
    aget-object v10, v8, v2

    add-int/lit8 v11, v9, -0x1

    int-to-double v11, v11

    aget-object v15, v6, v2

    aget-wide v16, v15, v9

    mul-double v11, v11, v16

    aput-wide v11, v10, v9

    .line 15
    aget-object v10, v1, v2

    aget-object v11, v4, v2

    aget-wide v15, v11, v9

    mul-double v13, v13, v15

    aput-wide v13, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 16
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;

    invoke-direct {v2, v0, v4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 17
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 18
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;

    invoke-direct {v2, v0, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 19
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;

    invoke-direct {v2, v0, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 20
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 22
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 23
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 24
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 25
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method

.method private apply([D[D[[D)D
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 1
    aget-object v6, p3, v3

    aget-wide v7, v6, v5

    aget-wide v9, p1, v3

    mul-double v7, v7, v9

    aget-wide v9, p2, v5

    mul-double v7, v7, v9

    add-double/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public value(DD)D
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    cmpg-double v6, p1, v0

    if-ltz v6, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, p1, v6

    if-gtz v8, :cond_1

    cmpg-double v8, p3, v0

    if-ltz v8, :cond_0

    cmpl-double v0, p3, v6

    if-gtz v0, :cond_0

    mul-double v0, p1, p1

    mul-double v8, v0, p1

    const/4 v3, 0x4

    new-array v5, v3, [D

    aput-wide v6, v5, v4

    aput-wide p1, v5, v2

    const/4 p1, 0x2

    aput-wide v0, v5, p1

    const/4 p2, 0x3

    aput-wide v8, v5, p2

    mul-double v0, p3, p3

    mul-double v8, v0, p3

    new-array v3, v3, [D

    aput-wide v6, v3, v4

    aput-wide p3, v3, v2

    aput-wide v0, v3, p1

    aput-wide v8, v3, p2

    .line 2
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    invoke-direct {p0, v5, v3, p1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2, v5, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 4
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1, v5, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p3
.end method
