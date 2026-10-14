.class public Lorg/apache/commons/math3/special/BesselJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    }
.end annotation


# static fields
.field private static final ENMTEN:D = 8.9E-308

.field private static final ENSIG:D = 1.0E16

.field private static final ENTEN:D = 1.0E308

.field private static final FACT:[D

.field private static final PI2:D = 0.6366197723675814

.field private static final RTNSIG:D = 1.0E-4

.field private static final TOWPI1:D = 6.28125

.field private static final TWOPI:D = 6.283185307179586

.field private static final TWOPI2:D = 0.001935307179586477

.field private static final X_MAX:D = 10000.0

.field private static final X_MIN:D


# instance fields
.field private final order:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [D

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
        0x43c0e1b3be415a00L    # 2.43290200817664E18
        0x4406283be9b5c620L    # 5.109094217170944E19
        0x444e77526159f06cL    # 1.1240007277776077E21
        0x4495e5c335f8a4ceL    # 2.585201673888498E22
        0x44e06c52687a7b9aL    # 6.204484017332394E23
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/special/BesselJ;->order:D

    return-void
.end method

.method public static rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    .locals 49

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    new-array v5, v4, [D

    double-to-int v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-lez v4, :cond_2f

    cmpl-double v11, v0, v8

    if-ltz v11, :cond_2f

    const-wide v12, 0x40c3880000000000L    # 10000.0

    cmpg-double v14, v0, v12

    if-gtz v14, :cond_2f

    cmpl-double v12, v2, v8

    if-ltz v12, :cond_2f

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v2, v13

    if-gez v15, :cond_2f

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v4, :cond_0

    .line 2
    aput-wide v8, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const-wide v15, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const-wide v17, 0x2fffba634018dbL    # 8.9E-308

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpg-double v21, v0, v15

    if-gez v21, :cond_a

    add-double v15, v2, v13

    cmpl-double v6, v0, v17

    if-lez v6, :cond_1

    mul-double v19, v19, v0

    move-wide/from16 v8, v19

    :cond_1
    if-eqz v12, :cond_2

    .line 3
    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v19

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v23

    mul-double v2, v2, v23

    div-double v19, v19, v2

    goto :goto_1

    :cond_2
    move-wide/from16 v19, v13

    :goto_1
    add-double v2, v0, v13

    cmpl-double v6, v2, v13

    if-lez v6, :cond_3

    neg-double v2, v8

    mul-double v2, v2, v8

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    mul-double v23, v19, v2

    div-double v23, v23, v15

    add-double v23, v19, v23

    .line 4
    aput-wide v23, v5, v7

    if-eqz v11, :cond_4

    .line 5
    aget-wide v11, v5, v7

    const-wide/16 v21, 0x0

    cmpl-double v6, v11, v21

    if-nez v6, :cond_5

    goto :goto_3

    :cond_4
    const-wide/16 v21, 0x0

    :cond_5
    move v7, v4

    :goto_3
    if-eq v4, v10, :cond_31

    cmpg-double v6, v0, v21

    if-gtz v6, :cond_6

    :goto_4
    if-ge v10, v4, :cond_31

    .line 6
    aput-wide v21, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    cmpl-double v6, v2, v21

    if-eqz v6, :cond_7

    div-double v17, v17, v2

    goto :goto_5

    :cond_7
    const-wide v11, 0x3fffba634018dbL    # 1.78E-307

    div-double v17, v11, v0

    :goto_5
    if-ge v10, v4, :cond_31

    div-double v19, v19, v15

    add-double/2addr v15, v13

    mul-double v0, v19, v8

    mul-double v11, v17, v15

    cmpg-double v6, v0, v11

    if-gtz v6, :cond_8

    const-wide/16 v19, 0x0

    goto :goto_6

    :cond_8
    move-wide/from16 v19, v0

    :goto_6
    mul-double v0, v19, v2

    div-double/2addr v0, v15

    add-double v0, v19, v0

    .line 7
    aput-wide v0, v5, v10

    .line 8
    aget-wide v0, v5, v10

    const-wide/16 v11, 0x0

    cmpl-double v6, v0, v11

    if-nez v6, :cond_9

    if-le v7, v10, :cond_9

    move v7, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    cmpl-double v12, v0, v8

    if-lez v12, :cond_11

    add-int/lit8 v8, v6, 0x1

    if-gt v4, v8, :cond_11

    const-wide v6, 0x3fe45f306dc9c883L    # 0.6366197723675814

    div-double v8, v6, v0

    .line 9
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v17, 0x3fc0000000000000L    # 0.125

    div-double v17, v17, v0

    mul-double v21, v17, v17

    const-wide v23, 0x4060400000000000L    # 130.0

    cmpl-double v12, v0, v23

    if-ltz v12, :cond_b

    const/4 v12, 0x4

    goto :goto_7

    :cond_b
    const-wide v23, 0x4041800000000000L    # 35.0

    cmpl-double v12, v0, v23

    if-ltz v12, :cond_c

    const/16 v12, 0x8

    goto :goto_7

    :cond_c
    const/16 v12, 0xb

    :goto_7
    int-to-double v13, v12

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    mul-double v13, v13, v25

    const-wide v27, 0x401921fb54442d18L    # 6.283185307179586

    div-double v27, v0, v27

    add-double v10, v27, v19

    double-to-int v10, v10

    int-to-double v10, v10

    const-wide v27, 0x4019200000000000L    # 6.28125

    mul-double v27, v27, v10

    sub-double v27, v0, v27

    const-wide v29, 0x3f5fb54442d1846aL    # 0.001935307179586477

    mul-double v10, v10, v29

    sub-double v27, v27, v10

    add-double v10, v2, v19

    div-double/2addr v10, v6

    sub-double v27, v27, v10

    .line 10
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    .line 11
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v10

    mul-double v2, v2, v15

    move-wide/from16 v29, v2

    const/4 v0, 0x2

    const/4 v15, 0x1

    :goto_8
    if-gt v15, v0, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v31, v13, v0

    sub-double v0, v31, v29

    add-double v31, v31, v29

    mul-double v0, v0, v31

    mul-double v0, v0, v21

    mul-double v0, v0, v19

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    sub-double v33, v13, v31

    sub-double v35, v29, v33

    add-double v33, v29, v33

    mul-double v35, v35, v33

    mul-double v33, v0, v35

    .line 12
    sget-object v16, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    mul-int/lit8 v37, v12, 0x2

    aget-wide v38, v16, v37

    div-double v33, v33, v38

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    add-double v38, v13, v23

    sub-double v40, v29, v38

    add-double v38, v29, v38

    mul-double v40, v40, v38

    mul-double v0, v0, v40

    add-int/lit8 v38, v37, 0x1

    .line 13
    aget-wide v38, v16, v38

    div-double v0, v0, v38

    move-wide/from16 v39, v13

    move/from16 v14, v37

    const/4 v13, 0x2

    move-wide/from16 v37, v35

    move-wide/from16 v35, v33

    move-wide/from16 v33, v39

    :goto_9
    if-gt v13, v12, :cond_d

    sub-double v39, v39, v25

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    sub-double v41, v39, v23

    sub-double v43, v41, v29

    add-double v41, v41, v29

    mul-double v43, v43, v41

    sub-double v41, v39, v31

    sub-double v45, v29, v41

    add-double v41, v29, v41

    mul-double v41, v41, v45

    .line 14
    sget-object v16, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    add-int/lit8 v45, v14, -0x2

    aget-wide v45, v16, v45

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    div-double v45, v23, v45

    add-double v35, v35, v45

    mul-double v35, v35, v43

    mul-double v35, v35, v41

    mul-double v35, v35, v21

    add-int/lit8 v45, v14, -0x1

    .line 15
    aget-wide v45, v16, v45

    div-double v45, v23, v45

    add-double v0, v0, v45

    mul-double v0, v0, v43

    mul-double v0, v0, v37

    mul-double v0, v0, v21

    add-int/lit8 v14, v14, -0x2

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v37, v41

    goto :goto_9

    :cond_d
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    add-double v35, v35, v23

    add-double v0, v0, v23

    mul-double v13, v29, v29

    sub-double v13, v13, v23

    mul-double v0, v0, v13

    mul-double v0, v0, v17

    add-int/lit8 v13, v15, -0x1

    mul-double v35, v35, v10

    mul-double v0, v0, v6

    sub-double v35, v35, v0

    mul-double v35, v35, v8

    .line 16
    aput-wide v35, v5, v13

    const/4 v0, 0x1

    if-ne v4, v0, :cond_e

    .line 17
    new-instance v0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    return-object v0

    :cond_e
    neg-double v0, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double v29, v29, v10

    add-int/lit8 v15, v15, 0x1

    move-wide v10, v6

    move-wide/from16 v13, v33

    move-wide v6, v0

    const/4 v0, 0x2

    goto/16 :goto_8

    :cond_f
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-le v4, v0, :cond_10

    add-double/2addr v2, v10

    const/4 v11, 0x2

    :goto_a
    if-ge v11, v4, :cond_10

    add-int/lit8 v0, v11, -0x1

    .line 18
    aget-wide v0, v5, v0

    mul-double v0, v0, v2

    div-double v0, v0, p0

    add-int/lit8 v6, v11, -0x2

    aget-wide v6, v5, v6

    sub-double/2addr v0, v6

    aput-wide v0, v5, v11

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_10
    move v7, v4

    goto/16 :goto_1c

    :cond_11
    sub-int v0, v4, v6

    add-int/lit8 v1, v6, 0x1

    int-to-double v8, v1

    add-double/2addr v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v10

    div-double v10, v8, p0

    const-wide v12, 0x4351c37937e08000L    # 2.0E16

    const/4 v14, 0x3

    if-lt v0, v14, :cond_18

    const-wide v8, 0x7c9008896bcf54faL    # 1.0E292

    const/4 v0, 0x2

    add-int/2addr v6, v0

    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v14, v6, -0x1

    int-to-double v14, v14

    add-double/2addr v14, v2

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v25

    move-wide/from16 v29, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :goto_b
    move/from16 v47, v6

    move v6, v1

    move/from16 v1, v47

    const-wide v31, 0x4341c37937e08000L    # 1.0E16

    if-gt v1, v0, :cond_16

    add-double v14, v14, v25

    mul-double v25, v14, v29

    div-double v25, v25, p0

    sub-double v25, v25, v10

    cmpl-double v6, v25, v8

    if-lez v6, :cond_15

    const-wide v10, 0x7fe1ccf385ebc8a0L    # 1.0E308

    div-double v33, v25, v10

    div-double v35, v29, v10

    add-int/lit8 v6, v1, 0x1

    move-wide/from16 v12, v33

    move-wide/from16 v8, v35

    :goto_c
    const/4 v0, 0x1

    add-int/2addr v1, v0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    add-double v14, v14, v25

    mul-double v25, v14, v12

    div-double v25, v25, p0

    sub-double v25, v25, v8

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v25, v23

    if-lez v0, :cond_14

    div-double v25, v14, p0

    mul-double v8, v8, v12

    mul-double v25, v25, v25

    div-double v25, v19, v25

    sub-double v25, v19, v25

    mul-double v8, v8, v25

    div-double v8, v8, v31

    mul-double v10, v10, v12

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    sub-double v14, v14, v25

    .line 19
    invoke-static {v4, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    :goto_d
    if-gt v6, v0, :cond_13

    mul-double v25, v14, v33

    div-double v25, v25, p0

    sub-double v25, v25, v35

    mul-double v29, v25, v33

    cmpl-double v16, v29, v8

    if-lez v16, :cond_12

    goto :goto_e

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v35, v33

    move-wide/from16 v33, v25

    goto :goto_d

    :cond_13
    :goto_e
    move v6, v1

    const/16 v16, 0x1

    move v1, v0

    move-wide/from16 v47, v8

    move-wide v8, v14

    move-wide v14, v12

    move-wide/from16 v12, v47

    goto :goto_f

    :cond_14
    move-wide v8, v12

    move-wide/from16 v12, v25

    goto :goto_c

    :cond_15
    add-int/lit8 v6, v1, 0x1

    move-wide/from16 v10, v29

    move-wide/from16 v29, v25

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    goto/16 :goto_b

    :cond_16
    move v1, v0

    move v0, v4

    move-wide v8, v14

    const/16 v16, 0x0

    move-wide v14, v10

    move-wide/from16 v10, v29

    :goto_f
    if-nez v16, :cond_17

    int-to-double v8, v1

    add-double/2addr v8, v2

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v25

    mul-double v31, v31, v14

    .line 20
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    mul-double v29, v10, v25

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v29

    move-wide/from16 v32, v8

    mul-double v7, v27, v29

    invoke-static {v12, v13, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    move v7, v0

    move-wide/from16 v8, v32

    goto :goto_10

    :cond_17
    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    move v7, v0

    move v1, v6

    goto :goto_10

    :cond_18
    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    move v7, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0x0

    :goto_10
    const/4 v0, 0x1

    if-nez v16, :cond_1a

    :goto_11
    add-int/2addr v1, v0

    add-double v8, v8, v25

    mul-double v27, v8, v10

    div-double v27, v27, p0

    sub-double v14, v27, v14

    cmpg-double v6, v14, v12

    if-ltz v6, :cond_19

    move-wide v10, v14

    goto :goto_12

    :cond_19
    move-wide/from16 v47, v10

    move-wide v10, v14

    move-wide/from16 v14, v47

    goto :goto_11

    :cond_1a
    :goto_12
    add-int/2addr v1, v0

    add-double v8, v8, v25

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v10, v12, v10

    mul-int/lit8 v0, v1, 0x2

    .line 21
    div-int/lit8 v6, v1, 0x2

    mul-int/lit8 v14, v6, 0x4

    sub-int/2addr v0, v14

    int-to-double v14, v6

    sub-double v25, v14, v12

    add-double v25, v25, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v29, v14, v12

    add-double v29, v29, v2

    if-eqz v0, :cond_1b

    mul-double v25, v25, v10

    mul-double v25, v25, v29

    div-double v12, v25, v14

    goto :goto_13

    :cond_1b
    const-wide/16 v12, 0x0

    :goto_13
    sub-int v6, v1, v4

    move/from16 v16, v7

    move-wide/from16 v25, v10

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    :goto_14
    if-gt v7, v6, :cond_1f

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    sub-double v8, v8, v27

    mul-double v29, v8, v25

    div-double v29, v29, p0

    sub-double v29, v29, v10

    rsub-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    mul-double v23, v14, v27

    add-double v32, v23, v2

    const/4 v10, 0x1

    if-ne v1, v10, :cond_1c

    move-wide/from16 v10, v25

    move-wide/from16 v25, v29

    goto :goto_15

    :cond_1c
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v34, v14, v10

    add-double v10, v34, v2

    const-wide/16 v21, 0x0

    cmpl-double v34, v10, v21

    if-nez v34, :cond_1d

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :cond_1d
    mul-double v32, v32, v29

    add-double v12, v12, v32

    mul-double v12, v12, v10

    div-double/2addr v12, v14

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v10, v25

    move-wide/from16 v25, v29

    goto :goto_14

    :cond_1f
    :goto_15
    add-int/lit8 v7, v1, -0x1

    .line 22
    aput-wide v25, v5, v7

    if-ltz v6, :cond_24

    const/4 v6, 0x1

    if-gt v4, v6, :cond_21

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v10, v2, v6

    cmpl-double v25, v10, v6

    if-nez v25, :cond_20

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_16

    :cond_20
    move-wide v6, v2

    :goto_16
    const/4 v10, 0x0

    .line 23
    aget-wide v25, v5, v10

    mul-double v25, v25, v6

    add-double v12, v12, v25

    const/4 v6, 0x1

    goto :goto_17

    :cond_21
    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v8, v6

    add-int/lit8 v6, v1, -0x1

    mul-double v25, v25, v8

    div-double v25, v25, p0

    sub-double v25, v25, v10

    .line 24
    aput-wide v25, v5, v6

    const/4 v7, 0x1

    if-ne v1, v7, :cond_22

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_18

    :cond_22
    rsub-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v10

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v25, v14, v23

    add-double v25, v25, v2

    sub-double v29, v14, v10

    add-double v10, v29, v2

    const-wide/16 v21, 0x0

    cmpl-double v7, v10, v21

    if-nez v7, :cond_23

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 25
    :cond_23
    aget-wide v6, v5, v6

    mul-double v6, v6, v25

    add-double/2addr v12, v6

    mul-double v12, v12, v10

    div-double/2addr v12, v14

    :cond_24
    const/4 v6, 0x0

    :goto_17
    const/4 v7, 0x0

    :goto_18
    if-nez v6, :cond_27

    if-nez v7, :cond_27

    add-int/lit8 v10, v1, -0x2

    if-eqz v10, :cond_27

    const/4 v11, 0x1

    :goto_19
    if-gt v11, v10, :cond_27

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    sub-double v8, v8, v25

    add-int/lit8 v25, v1, -0x1

    .line 26
    aget-wide v29, v5, v1

    mul-double v29, v29, v8

    div-double v29, v29, p0

    add-int/lit8 v26, v1, 0x1

    aget-wide v32, v5, v26

    sub-double v29, v29, v32

    aput-wide v29, v5, v25

    const/16 v26, 0x2

    rsub-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_26

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v23

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v29, v14, v26

    add-double v29, v29, v2

    sub-double v32, v14, v23

    add-double v32, v32, v2

    const-wide/16 v21, 0x0

    cmpl-double v26, v32, v21

    if-nez v26, :cond_25

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 27
    :cond_25
    aget-wide v25, v5, v25

    mul-double v25, v25, v29

    add-double v12, v12, v25

    mul-double v12, v12, v32

    div-double/2addr v12, v14

    :cond_26
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    :cond_27
    if-nez v6, :cond_2a

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-nez v7, :cond_28

    add-double v6, v2, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    const/4 v10, 0x1

    .line 28
    aget-wide v10, v5, v10

    mul-double v6, v6, v10

    div-double v6, v6, p0

    const/4 v10, 0x2

    aget-wide v10, v5, v10

    sub-double/2addr v6, v10

    const/4 v10, 0x0

    aput-wide v6, v5, v10

    goto :goto_1a

    :cond_28
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v10, 0x0

    :goto_1a
    sub-double/2addr v14, v0

    mul-double v14, v14, v8

    add-double v0, v14, v2

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-nez v8, :cond_29

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 29
    :cond_29
    aget-wide v6, v5, v10

    mul-double v6, v6, v0

    add-double/2addr v12, v6

    .line 30
    :cond_2a
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v6, 0x3c9cd2b297d889bcL    # 1.0E-16

    cmpl-double v8, v0, v6

    if-lez v8, :cond_2b

    .line 31
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v0

    mul-double v6, p0, v19

    neg-double v2, v2

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    mul-double v12, v12, v0

    :cond_2b
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v12, v0

    if-lez v2, :cond_2c

    mul-double v17, v17, v12

    :cond_2c
    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v4, :cond_2e

    .line 32
    aget-wide v0, v5, v7

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v17

    if-gez v2, :cond_2d

    const-wide/16 v0, 0x0

    .line 33
    aput-wide v0, v5, v7

    .line 34
    :cond_2d
    aget-wide v0, v5, v7

    div-double/2addr v0, v12

    aput-wide v0, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2e
    move/from16 v7, v16

    goto :goto_1c

    :cond_2f
    const/4 v0, 0x0

    if-lez v4, :cond_30

    const-wide/16 v1, 0x0

    .line 35
    aput-wide v1, v5, v0

    .line 36
    :cond_30
    invoke-static {v4, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v7, v0, -0x1

    .line 37
    :cond_31
    :goto_1c
    new-instance v0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    return-object v0
.end method

.method public static value(DD)D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double v1, p0, v1

    add-int/lit8 v3, v0, 0x1

    .line 2
    invoke-static {p2, p3, v1, v2, v3}, Lorg/apache/commons/math3/special/BesselJ;->rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 4
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object p0

    aget-wide p1, p0, v0

    return-wide p1

    .line 5
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v2, :cond_2

    .line 6
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v6

    sub-int/2addr v6, v5

    aget-wide v6, v2, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x2b2bff2ee48e0530L    # 1.0E-100

    cmpg-double v2, v6, v8

    if-gez v2, :cond_1

    .line 7
    invoke-static {v1}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object p0

    aget-wide p1, p0, v0

    return-wide p1

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_FAILED_CONVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_BAD_ARGUMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public value(D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/special/BesselJ;->order:D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/special/BesselJ;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method
