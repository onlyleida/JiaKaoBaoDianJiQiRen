.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field private static final E1:D = 0.0012326388888888888

.field private static final E3:D = -0.0042527702905061394

.field private static final E4:D = 0.03697916666666667

.field private static final E5:D = -0.05086379716981132

.field private static final E6:D = 0.0419047619047619

.field private static final E7:D = -0.025

.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 5(4)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [D

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_C:[D

    new-array v1, v0, [[D

    const/4 v2, 0x1

    new-array v3, v2, [D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    aput-object v3, v1, v6

    const/4 v3, 0x2

    new-array v4, v3, [D

    .line 2
    fill-array-data v4, :array_1

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-array v4, v2, [D

    fill-array-data v4, :array_2

    aput-object v4, v1, v3

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_3

    aput-object v4, v1, v2

    const/4 v2, 0x5

    new-array v4, v2, [D

    fill-array-data v4, :array_4

    aput-object v4, v1, v3

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_A:[[D

    const/4 v0, 0x7

    new-array v0, v0, [D

    .line 3
    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_B:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe999999999999aL    # 0.8
        0x3fec71c71c71c71cL    # 0.8888888888888888
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb3333333333333L    # 0.075
        0x3fcccccccccccccdL    # 0.225
    .end array-data

    :array_2
    .array-data 8
        0x3fef49f49f49f49fL    # 0.9777777777777777
        -0x3ff2222222222222L    # -3.7333333333333334
        0x400c71c71c71c71cL    # 3.5555555555555554
    .end array-data

    :array_3
    .array-data 8
        0x40079eec0fc37181L    # 2.9525986892242035
        -0x3fd8cef42d6adf1cL    # -11.595793324188385
        0x4023a552363c5290L    # 9.822892851699436
        -0x402d636145e1ccbbL    # -0.2908093278463649
    .end array-data

    :array_4
    .array-data 8
        0x4006c52bf5a814b0L    # 2.8462752525252526
        -0x3fda7c1f07c1f07cL    # -10.757575757575758
        0x4021d016a3721e8bL    # 8.906422717743473
        0x3fd1d1745d1745d1L    # 0.2784090909090909
        -0x402e7e768f2633d1L    # -0.2735313036020583
    .end array-data

    :array_5
    .array-data 8
        0x3fb7555555555555L    # 0.09114583333333333
        0x0
        0x3fdcc0499a5605fbL    # 0.44923629829290207
        0x3fe4d55555555555L    # 0.6510416666666666
        -0x402b5e304d4873edL    # -0.322376179245283
        0x3fc0c30c30c30c31L    # 0.13095238095238096
    .end array-data

    :array_6
    .array-data 8
        0x3fb7555555555555L    # 0.09114583333333333
        0x0
        0x3fdcc0499a5605fbL    # 0.44923629829290207
        0x3fe4d55555555555L    # 0.6510416666666666
        -0x402b5e304d4873edL    # -0.322376179245283
        0x3fc0c30c30c30c31L    # 0.13095238095238096
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .line 1
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>()V

    const-string v1, "Dormand-Prince 5(4)"

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 13

    .line 2
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>()V

    const-string v1, "Dormand-Prince 5(4)"

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 14

    move-object v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v4, v5, :cond_1

    const-wide v5, 0x3f54320fedcba987L    # 0.0012326388888888888

    .line 2
    aget-object v7, p1, v1

    aget-wide v8, v7, v4

    mul-double v8, v8, v5

    const-wide v5, -0x408e94a5aaf5403cL    # -0.0042527702905061394

    const/4 v7, 0x2

    aget-object v7, p1, v7

    aget-wide v10, v7, v4

    mul-double v10, v10, v5

    add-double/2addr v8, v10

    const-wide v5, 0x3fa2eeeeeeeeeeefL    # 0.03697916666666667

    const/4 v7, 0x3

    aget-object v7, p1, v7

    aget-wide v10, v7, v4

    mul-double v10, v10, v5

    add-double/2addr v8, v10

    const-wide v5, -0x4055f52e2d35e7a8L    # -0.05086379716981132

    const/4 v7, 0x4

    aget-object v7, p1, v7

    aget-wide v10, v7, v4

    mul-double v10, v10, v5

    add-double/2addr v8, v10

    const-wide v5, 0x3fa5748a7bdaf0e2L    # 0.0419047619047619

    const/4 v7, 0x5

    aget-object v7, p1, v7

    aget-wide v10, v7, v4

    mul-double v10, v10, v5

    add-double/2addr v8, v10

    const-wide v5, -0x4066666666666666L    # -0.025

    const/4 v7, 0x6

    aget-object v7, p1, v7

    aget-wide v10, v7, v4

    mul-double v10, v10, v5

    add-double/2addr v8, v10

    .line 3
    aget-wide v5, p2, v4

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    aget-wide v10, p3, v4

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    .line 4
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v7, :cond_0

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_1

    :cond_0
    aget-wide v10, v7, v4

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v12, v7, v4

    :goto_1
    mul-double v12, v12, v5

    add-double/2addr v10, v12

    mul-double v5, p4, v8

    div-double/2addr v5, v10

    mul-double v5, v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double v4, v5

    div-double/2addr v2, v4

    .line 5
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
