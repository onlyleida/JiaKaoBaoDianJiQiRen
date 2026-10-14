.class public Lorg/apache/commons/math3/analysis/function/Sinc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# static fields
.field private static final SHORTCUT:D = 0.006


# instance fields
.field private final normalized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/function/Sinc;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    mul-double p1, p1, p1

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    sub-double v0, p1, v0

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x405e000000000000L    # 120.0

    add-double/2addr v0, p1

    :goto_0
    div-double/2addr v0, p1

    return-wide v0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4
    iget-boolean v1, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    mul-double v6, v6, v8

    mul-double v8, v6, v6

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    new-array v11, v1, [D

    .line 6
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f789374bc6a7efaL    # 0.006

    const/16 v16, 0x0

    cmpg-double v17, v12, v14

    if-gtz v17, :cond_5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_4

    .line 7
    div-int/lit8 v13, v12, 0x2

    and-int/lit8 v14, v12, 0x1

    if-nez v14, :cond_2

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, -0x1

    :goto_2
    int-to-double v13, v13

    add-int/lit8 v15, v12, 0x1

    int-to-double v2, v15

    div-double v2, v4, v2

    mul-int/lit8 v15, v12, 0x2

    add-int/lit8 v15, v15, 0x6

    move-object/from16 v18, v11

    int-to-double v10, v15

    div-double v10, v4, v10

    mul-int/lit8 v15, v12, 0x18

    add-int/lit8 v15, v15, 0x78

    int-to-double v4, v15

    div-double v4, v8, v4

    sub-double/2addr v10, v4

    mul-double v10, v10, v8

    sub-double/2addr v2, v10

    mul-double v13, v13, v2

    .line 8
    aput-wide v13, v18, v12

    goto :goto_4

    :cond_2
    move-object/from16 v18, v11

    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    neg-double v2, v6

    goto :goto_3

    :cond_3
    move-wide v2, v6

    :goto_3
    add-int/lit8 v4, v12, 0x2

    int-to-double v4, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v4, v10, v4

    mul-int/lit8 v13, v12, 0x6

    add-int/lit8 v13, v13, 0x18

    int-to-double v13, v13

    div-double v13, v10, v13

    mul-int/lit8 v10, v12, 0x78

    add-int/lit16 v10, v10, 0x2d0

    int-to-double v10, v10

    div-double v10, v8, v10

    sub-double/2addr v13, v10

    mul-double v13, v13, v8

    sub-double/2addr v4, v13

    mul-double v2, v2, v4

    .line 9
    aput-wide v2, v18, v12

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v18

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v18, v11

    move/from16 v25, v1

    goto/16 :goto_7

    :cond_5
    move-wide v2, v4

    move-object/from16 v18, v11

    div-double v4, v2, v6

    .line 10
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v10

    .line 11
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v12

    mul-double v14, v4, v12

    .line 12
    aput-wide v14, v18, v16

    .line 13
    new-array v14, v1, [D

    .line 14
    aput-wide v2, v14, v16

    move-wide/from16 v19, v4

    const/4 v2, 0x1

    :goto_5
    if-ge v2, v1, :cond_8

    and-int/lit8 v3, v2, 0x1

    const-wide/16 v21, 0x0

    if-nez v3, :cond_6

    .line 15
    aput-wide v21, v14, v2

    move v3, v2

    move-wide/from16 v23, v21

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v2, -0x1

    .line 16
    aget-wide v23, v14, v3

    aput-wide v23, v14, v2

    .line 17
    aget-wide v23, v14, v2

    :goto_6
    const/4 v15, 0x1

    if-le v3, v15, :cond_7

    sub-int v15, v3, v2

    move/from16 v25, v1

    int-to-double v0, v15

    .line 18
    aget-wide v26, v14, v3

    mul-double v0, v0, v26

    add-int/lit8 v15, v3, -0x1

    aget-wide v26, v14, v15

    sub-double v0, v0, v26

    aput-wide v0, v14, v3

    mul-double v21, v21, v8

    .line 19
    aget-wide v0, v14, v3

    add-double v21, v21, v0

    sub-int v0, v15, v2

    int-to-double v0, v0

    .line 20
    aget-wide v26, v14, v15

    mul-double v0, v0, v26

    add-int/lit8 v26, v3, -0x2

    aget-wide v26, v14, v26

    add-double v0, v0, v26

    aput-wide v0, v14, v15

    mul-double v23, v23, v8

    .line 21
    aget-wide v0, v14, v15

    add-double v23, v23, v0

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    goto :goto_6

    :cond_7
    move/from16 v25, v1

    .line 22
    aget-wide v0, v14, v16

    neg-int v3, v2

    move v15, v2

    int-to-double v2, v3

    mul-double v0, v0, v2

    aput-wide v0, v14, v16

    mul-double v21, v21, v8

    .line 23
    aget-wide v0, v14, v16

    add-double v21, v21, v0

    mul-double v19, v19, v4

    mul-double v21, v21, v12

    mul-double v23, v23, v6

    mul-double v23, v23, v10

    add-double v21, v21, v23

    mul-double v21, v21, v19

    .line 24
    aput-wide v21, v18, v15

    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    goto :goto_5

    :cond_8
    move/from16 v25, v1

    move-object/from16 v0, p0

    .line 25
    :goto_7
    iget-boolean v1, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v1, :cond_9

    move/from16 v1, v25

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const/4 v10, 0x1

    :goto_8
    if-ge v10, v1, :cond_9

    .line 26
    aget-wide v4, v18, v10

    mul-double v4, v4, v2

    aput-wide v4, v18, v10

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v1, p1

    move-object/from16 v2, v18

    .line 27
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    return-object v1
.end method
