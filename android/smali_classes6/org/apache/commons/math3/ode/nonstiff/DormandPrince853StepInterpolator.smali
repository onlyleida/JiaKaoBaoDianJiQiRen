.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final B_01:D = 0.054293734116568765

.field private static final B_06:D = 4.450312892752409

.field private static final B_07:D = 1.8915178993145003

.field private static final B_08:D = -5.801203960010585

.field private static final B_09:D = 0.3111643669578199

.field private static final B_10:D = -0.1521609496625161

.field private static final B_11:D = 0.20136540080403034

.field private static final B_12:D = 0.04471061572777259

.field private static final C14:D = 0.1

.field private static final C15:D = 0.2

.field private static final C16:D = 0.7777777777777778

.field private static final D:[[D

.field private static final K14_01:D = 0.0018737681664791894

.field private static final K14_06:D = -4.450312892752409

.field private static final K14_07:D = -1.6380176890978755

.field private static final K14_08:D = 5.554964922539782

.field private static final K14_09:D = -0.4353557902216363

.field private static final K14_10:D = 0.30545274794128174

.field private static final K14_11:D = -0.19316434850839564

.field private static final K14_12:D = -0.03714271806722689

.field private static final K14_13:D = -0.008298

.field private static final K15_01:D = -0.022459085953066622

.field private static final K15_06:D = -4.422011983080043

.field private static final K15_07:D = -1.8379759110070617

.field private static final K15_08:D = 5.746280211439194

.field private static final K15_09:D = -0.3111643669578199

.field private static final K15_10:D = 0.1521609496625161

.field private static final K15_11:D = -0.2014737481327276

.field private static final K15_12:D = -0.04432804463693693

.field private static final K15_13:D = -3.4046500868740456E-4

.field private static final K15_14:D = 0.1413124436746325

.field private static final K16_01:D = -0.4831900357003607

.field private static final K16_06:D = -9.147934308113573

.field private static final K16_07:D = 5.791903296748099

.field private static final K16_08:D = 9.870193778407696

.field private static final K16_09:D = 0.04556282049746119

.field private static final K16_10:D = 0.1521609496625161

.field private static final K16_11:D = -0.20136540080403034

.field private static final K16_12:D = -0.04471061572777259

.field private static final K16_13:D = -0.0013990241651590145

.field private static final K16_14:D = 2.9475147891527724

.field private static final K16_15:D = -9.15095847217987

.field private static final serialVersionUID:J = 0x132df10L


# instance fields
.field private v:[[D

.field private vectorsInitialized:Z

.field private yDotKLast:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[D

    const/16 v1, 0xc

    new-array v2, v1, [D

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v1, v1, [D

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    return-void

    :array_0
    .array-data 8
        -0x3fdf246233c837e5L    # -8.428938276109013
        0x3fe2228765f0a2ebL    # 0.5667149535193777
        -0x3ff772ca5ee8ac8aL    # -3.0689499459498917
        0x400313cca2e462ecL    # 2.38466765651207
        0x4000efafd3c0d1beL    # 2.1170345824450285
        -0x40141d8f65b53f2dL    # -0.871391583777973
        0x4001ec6a759da28bL    # 2.2404374302607883
        0x3fe435e4b2f53319L    # 0.6315787787694688
        -0x404937ede7480f84L    # -0.08899033645133331
        0x40322604753358b4L    # 18.148505520854727
        -0x3fdd9c59249f205fL    # -9.194632392478356
        -0x3fee417fad5da7e3L    # -4.436036387594894
    .end array-data

    :array_1
    .array-data 8
        0x4024dae269ad44fcL    # 10.427508642579134
        0x406e49125d57ed67L    # 242.28349177525817
        0x4064a66a19b8434bL    # 165.20045171727028
        -0x3f8897407e1eb1cbL    # -374.5467547226902
        -0x3fc9e2e6baa73006L    # -22.113666853125302
        0x401eef08f933a023L    # 7.733432668472264
        -0x3fc1536f2edd3cf3L    # -30.674084731089398
        -0x3fdd55f2fcd5f533L    # -9.332130526430229
        0x402f64fc65250f7cL    # 15.697238121770845
        -0x3fc0dc50121302adL    # -31.139403219565178
        -0x3fdd4b4d7f999a36L    # -9.35292435884448
        0x4041e88e43070a10L    # 35.81684148639408
    .end array-data

    :array_2
    .array-data 8
        0x4033fc2c7303381fL    # 19.985053242002433
        -0x3f87cf672ef0dadfL    # -387.0373087493518
        -0x3f985a4cb120b2c7L    # -189.17813819516758
        0x40807e771c2c6a0cL    # 527.8081592054236
        -0x3fd8da29723f9069L    # -11.573902539959631
        0x401b8661dd0f8bd7L    # 6.8812326946963
        -0x400ffd8582980398L    # -1.0006050966910838
        0x3fe8e308023d3331L    # 0.7777137798053443
        -0x3ff9c63c1000a92eL    # -2.778205752353508
        -0x3fb1e6d2b0cf3881L    # -60.19669523126412
        0x40551481861928c0L    # 84.32040550667716
        0x4027fc0d95740812L    # 11.99229113618279
    .end array-data

    :array_3
    .array-data 8
        -0x3fc64e5a6068165dL    # -25.69393346270375
        -0x3f9cb9ed94279f39L    # -154.18974869023643
        -0x3f930f0f5366f670L    # -231.5293791760455
        0x40765a39d3b3c602L    # 357.6391179106141
        0x405759f0d4d83c6fL    # 93.4053241836243
        -0x3fbd4555aadef855L    # -37.45832313645163
        0x405a0660a855838eL    # 104.0996495089623
        0x403dd71d78528cf6L    # 29.8402934266605
        -0x3fba3bb7b1c80882L    # -43.53345659001114
        0x405814c57df82010L    # 96.32455395918828
        -0x3fbc694f7d4a32e2L    # -39.17726167561544
        -0x3f9d48bdc1e34cf3L    # -149.72683625798564
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;)V
    .locals 5

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 6
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 9
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    goto :goto_2

    .line 10
    :cond_0
    array-length v0, v0

    const/4 v2, 0x3

    new-array v2, v2, [[D

    .line 11
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 13
    new-array v4, v0, [D

    aput-object v4, v3, v2

    .line 14
    iget-object v4, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v4, v4, v2

    aget-object v3, v3, v2

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [[D

    .line 15
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 v2, 0x0

    .line 16
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 17
    new-array v4, v0, [D

    aput-object v4, v3, v2

    .line 18
    iget-object v4, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v4, v4, v2

    aget-object v3, v3, v2

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_2
    iget-boolean p1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    :goto_2
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_3

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 v9, 0x7

    if-nez v1, :cond_0

    new-array v1, v9, [[D

    .line 3
    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_0

    .line 4
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v11, v11

    new-array v11, v11, [D

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V

    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-object v10, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v10, v10

    if-ge v1, v10, :cond_2

    .line 7
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v11, v10, v8

    aget-wide v12, v11, v1

    .line 8
    aget-object v11, v10, v4

    aget-wide v14, v11, v1

    .line 9
    aget-object v11, v10, v3

    aget-wide v16, v11, v1

    .line 10
    aget-object v11, v10, v9

    aget-wide v18, v11, v1

    const/16 v11, 0x8

    .line 11
    aget-object v20, v10, v11

    aget-wide v21, v20, v1

    const/16 v20, 0x9

    .line 12
    aget-object v23, v10, v20

    aget-wide v24, v23, v1

    const/16 v23, 0xa

    .line 13
    aget-object v26, v10, v23

    aget-wide v27, v26, v1

    const/16 v26, 0xb

    .line 14
    aget-object v29, v10, v26

    aget-wide v30, v29, v1

    const/16 v29, 0xc

    .line 15
    aget-object v32, v10, v29

    aget-wide v33, v32, v1

    .line 16
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v35, v11, v8

    aget-wide v36, v35, v1

    .line 17
    aget-object v35, v11, v7

    aget-wide v38, v35, v1

    .line 18
    aget-object v11, v11, v6

    aget-wide v40, v11, v1

    .line 19
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v35, v11, v8

    const-wide v42, 0x3fabcc6368d1177cL    # 0.054293734116568765

    mul-double v42, v42, v12

    const-wide v44, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    mul-double v44, v44, v14

    add-double v42, v42, v44

    const-wide v44, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    mul-double v44, v44, v16

    add-double v42, v42, v44

    const-wide v44, -0x3fe8cb91306950bdL    # -5.801203960010585

    mul-double v44, v44, v18

    add-double v42, v42, v44

    const-wide v44, 0x3fd3ea1df2f0eb98L    # 0.3111643669578199

    mul-double v44, v44, v21

    add-double v42, v42, v44

    const-wide v44, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    mul-double v44, v44, v24

    add-double v42, v42, v44

    const-wide v44, 0x3fc9c657697fe72dL    # 0.20136540080403034

    mul-double v44, v44, v27

    add-double v42, v42, v44

    const-wide v44, 0x3fa6e44f50ab6bc2L    # 0.04471061572777259

    mul-double v44, v44, v30

    add-double v42, v42, v44

    aput-wide v42, v35, v1

    .line 20
    aget-object v35, v11, v7

    aget-object v42, v11, v8

    aget-wide v43, v42, v1

    sub-double v42, v12, v43

    aput-wide v42, v35, v1

    .line 21
    aget-object v35, v11, v6

    aget-object v42, v11, v8

    aget-wide v43, v42, v1

    aget-object v11, v11, v7

    aget-wide v45, v11, v1

    sub-double v43, v43, v45

    aget-object v10, v10, v29

    aget-wide v45, v10, v1

    sub-double v43, v43, v45

    aput-wide v43, v35, v1

    const/4 v10, 0x0

    .line 22
    :goto_2
    sget-object v11, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    array-length v9, v11

    if-ge v10, v9, :cond_1

    .line 23
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    add-int/lit8 v35, v10, 0x3

    aget-object v9, v9, v35

    aget-object v35, v11, v10

    aget-wide v42, v35, v8

    mul-double v42, v42, v12

    aget-object v35, v11, v10

    aget-wide v44, v35, v7

    mul-double v44, v44, v14

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v6

    mul-double v44, v44, v16

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v5

    mul-double v44, v44, v18

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v2

    mul-double v44, v44, v21

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v4

    mul-double v44, v44, v24

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v3

    mul-double v44, v44, v27

    add-double v42, v42, v44

    aget-object v35, v11, v10

    const/16 v29, 0x7

    aget-wide v44, v35, v29

    mul-double v44, v44, v30

    add-double v42, v42, v44

    aget-object v35, v11, v10

    const/16 v32, 0x8

    aget-wide v44, v35, v32

    mul-double v44, v44, v33

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v20

    mul-double v44, v44, v36

    add-double v42, v42, v44

    aget-object v35, v11, v10

    aget-wide v44, v35, v23

    mul-double v44, v44, v38

    add-double v42, v42, v44

    aget-object v11, v11, v10

    aget-wide v44, v11, v26

    mul-double v44, v44, v40

    add-double v42, v42, v44

    aput-wide v42, v9, v1

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x7

    goto :goto_2

    :cond_1
    const/16 v29, 0x7

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x7

    goto/16 :goto_1

    .line 24
    :cond_2
    iput-boolean v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    :cond_3
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, p1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v15, p1, v13

    mul-double v17, p1, p1

    sub-double v19, v9, v15

    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    mul-double v23, p1, v21

    sub-double v13, v13, v23

    mul-double v13, v13, p1

    sub-double v23, v15, v21

    mul-double v23, v23, p1

    add-double v23, v23, v9

    mul-double v15, v15, v23

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    mul-double v9, v9, p1

    const-wide/high16 v23, 0x4020000000000000L    # 8.0

    sub-double v9, v9, v23

    mul-double v9, v9, p1

    add-double v9, v9, v21

    mul-double v9, v9, v17

    const-wide/high16 v23, -0x3fd8000000000000L    # -12.0

    const-wide/high16 v25, 0x402e000000000000L    # 15.0

    const-wide/high16 v27, 0x4018000000000000L    # 6.0

    mul-double v27, v27, p1

    sub-double v25, v25, v27

    mul-double v25, v25, p1

    add-double v25, v25, v23

    mul-double v23, p1, v25

    add-double v23, v23, v21

    mul-double v23, v23, v17

    mul-double v17, v17, p1

    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    const-wide/high16 v25, -0x3fd2000000000000L    # -15.0

    const-wide/high16 v27, 0x4032000000000000L    # 18.0

    const-wide/high16 v29, 0x401c000000000000L    # 7.0

    mul-double v29, v29, p1

    sub-double v27, v27, v29

    mul-double v27, v27, p1

    add-double v27, v27, v25

    mul-double v25, p1, v27

    add-double v25, v25, v21

    mul-double v17, v17, v25

    .line 25
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    if-eqz v1, :cond_4

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v21

    if-gtz v1, :cond_4

    const/4 v1, 0x0

    .line 26
    :goto_3
    iget-object v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 27
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v25, v4, v1

    move-object/from16 v27, v3

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v2, v2, p1

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v28, v4, v8

    aget-wide v29, v28, v1

    aget-object v28, v4, v7

    aget-wide v31, v28, v1

    aget-object v28, v4, v6

    aget-wide v33, v28, v1

    aget-object v28, v4, v5

    aget-wide v35, v28, v1

    const/16 v28, 0x4

    aget-object v37, v4, v28

    aget-wide v38, v37, v1

    const/16 v22, 0x5

    aget-object v37, v4, v22

    aget-wide v40, v37, v1

    const/16 v21, 0x6

    aget-object v37, v4, v21

    aget-wide v42, v37, v1

    mul-double v42, v42, p1

    add-double v40, v40, v42

    mul-double v40, v40, v11

    add-double v38, v38, v40

    mul-double v37, p1, v38

    add-double v35, v35, v37

    mul-double v35, v35, v11

    add-double v33, v33, v35

    mul-double v33, v33, p1

    add-double v31, v31, v33

    mul-double v31, v31, v11

    add-double v29, v29, v31

    mul-double v2, v2, v29

    add-double v25, v25, v2

    aput-wide v25, v27, v1

    .line 28
    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-object v3, v4, v8

    aget-wide v25, v3, v1

    aget-object v3, v4, v7

    aget-wide v29, v3, v1

    mul-double v29, v29, v19

    add-double v25, v25, v29

    aget-object v3, v4, v6

    aget-wide v29, v3, v1

    mul-double v29, v29, v13

    add-double v25, v25, v29

    aget-object v3, v4, v5

    aget-wide v29, v3, v1

    mul-double v29, v29, v15

    add-double v25, v25, v29

    const/4 v3, 0x4

    aget-object v27, v4, v3

    aget-wide v28, v27, v1

    mul-double v28, v28, v9

    add-double v25, v25, v28

    const/16 v22, 0x5

    aget-object v27, v4, v22

    aget-wide v28, v27, v1

    mul-double v28, v28, v23

    add-double v25, v25, v28

    const/16 v21, 0x6

    aget-object v4, v4, v21

    aget-wide v27, v4, v1

    mul-double v27, v27, v17

    add-double v25, v25, v27

    aput-wide v25, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x5

    goto/16 :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 29
    :goto_4
    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 30
    iget-object v4, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v25, v4, v1

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v27, v4, v8

    aget-wide v28, v27, v1

    aget-object v27, v4, v7

    aget-wide v30, v27, v1

    aget-object v27, v4, v6

    aget-wide v32, v27, v1

    aget-object v27, v4, v5

    aget-wide v34, v27, v1

    const/4 v3, 0x4

    aget-object v27, v4, v3

    move-object v3, v4

    aget-wide v36, v27, v1

    const/16 v22, 0x5

    aget-object v27, v3, v22

    aget-wide v38, v27, v1

    const/16 v21, 0x6

    aget-object v27, v3, v21

    aget-wide v40, v27, v1

    mul-double v40, v40, p1

    add-double v38, v38, v40

    mul-double v38, v38, v11

    add-double v36, v36, v38

    mul-double v36, v36, p1

    add-double v34, v34, v36

    mul-double v34, v34, v11

    add-double v32, v32, v34

    mul-double v32, v32, p1

    add-double v30, v30, v32

    mul-double v30, v30, p1

    sub-double v28, v28, v30

    mul-double v27, p3, v28

    sub-double v25, v25, v27

    aput-wide v25, v2, v1

    .line 31
    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-object v25, v3, v8

    aget-wide v26, v25, v1

    aget-object v25, v3, v7

    aget-wide v28, v25, v1

    mul-double v28, v28, v19

    add-double v26, v26, v28

    aget-object v25, v3, v6

    aget-wide v28, v25, v1

    mul-double v28, v28, v13

    add-double v26, v26, v28

    aget-object v25, v3, v5

    aget-wide v28, v25, v1

    mul-double v28, v28, v15

    add-double v26, v26, v28

    const/4 v4, 0x4

    aget-object v25, v3, v4

    aget-wide v28, v25, v1

    mul-double v28, v28, v9

    add-double v26, v26, v28

    const/16 v22, 0x5

    aget-object v25, v3, v22

    aget-wide v28, v25, v1

    mul-double v28, v28, v23

    add-double v26, v26, v28

    const/16 v21, 0x6

    aget-object v3, v3, v21

    aget-wide v28, v3, v1

    mul-double v28, v28, v17

    add-double v26, v26, v28

    aput-wide v26, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;)V

    return-object v0
.end method

.method protected doFinalize()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v1, v1

    new-array v1, v1, [D

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v6

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    if-ge v5, v7, :cond_1

    const-wide v16, 0x3f5eb3273fb33980L    # 0.0018737681664791894

    .line 5
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v18, v7, v4

    aget-wide v19, v18, v5

    mul-double v19, v19, v16

    const-wide v16, -0x3fee32e12d52a51eL    # -4.450312892752409

    aget-object v15, v7, v15

    aget-wide v21, v15, v5

    mul-double v21, v21, v16

    add-double v19, v19, v21

    const-wide v15, -0x4005caadf6b0e1cfL    # -1.6380176890978755

    aget-object v14, v7, v14

    aget-wide v17, v14, v5

    mul-double v17, v17, v15

    add-double v19, v19, v17

    const-wide v14, 0x40163848b982f131L    # 5.554964922539782

    aget-object v13, v7, v13

    aget-wide v16, v13, v5

    mul-double v16, v16, v14

    add-double v19, v19, v16

    const-wide v13, -0x4024232177b7ececL    # -0.4353557902216363

    aget-object v12, v7, v12

    aget-wide v15, v12, v5

    mul-double v15, v15, v13

    add-double v19, v19, v15

    const-wide v12, 0x3fd38c89aeb8648aL    # 0.30545274794128174

    aget-object v11, v7, v11

    aget-wide v14, v11, v5

    mul-double v14, v14, v12

    add-double v19, v19, v14

    const-wide v11, -0x4037466400339f26L    # -0.19316434850839564

    aget-object v10, v7, v10

    aget-wide v13, v10, v5

    mul-double v13, v13, v11

    add-double v19, v19, v13

    const-wide v10, -0x405cfba1313bc1b3L    # -0.03714271806722689

    aget-object v9, v7, v9

    aget-wide v12, v9, v5

    mul-double v12, v12, v10

    add-double v19, v19, v12

    const-wide v9, -0x407f01754b05b7d0L    # -0.008298

    aget-object v7, v7, v8

    aget-wide v11, v7, v5

    mul-double v11, v11, v9

    add-double v19, v19, v11

    .line 6
    aget-wide v7, v6, v5

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v9, v9, v19

    add-double/2addr v7, v9

    aput-wide v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v8, v8, v6

    add-double/2addr v8, v2

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v6, v6, v4

    invoke-virtual {v5, v8, v9, v1, v6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v5, 0x0

    .line 8
    :goto_1
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v6

    const-wide v8, 0x3fc37a028f43b002L    # 0.1521609496625161

    if-ge v5, v7, :cond_2

    const-wide v18, -0x4069007c415587ceL    # -0.022459085953066622

    .line 9
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v20, v7, v4

    aget-wide v21, v20, v5

    mul-double v21, v21, v18

    const-wide v18, -0x3fee4fdc17389abdL    # -4.422011983080043

    aget-object v20, v7, v15

    aget-wide v23, v20, v5

    mul-double v23, v23, v18

    add-double v21, v21, v23

    const-wide v18, -0x400297a6923638c9L    # -1.8379759110070617

    aget-object v20, v7, v14

    aget-wide v23, v20, v5

    mul-double v23, v23, v18

    add-double v21, v21, v23

    const-wide v18, 0x4016fc30e137221aL    # 5.746280211439194

    aget-object v20, v7, v13

    aget-wide v23, v20, v5

    mul-double v23, v23, v18

    add-double v21, v21, v23

    const-wide v18, -0x402c15e20d0f1468L    # -0.3111643669578199

    aget-object v20, v7, v12

    aget-wide v23, v20, v5

    mul-double v23, v23, v18

    add-double v21, v21, v23

    aget-object v18, v7, v11

    aget-wide v19, v18, v5

    mul-double v19, v19, v8

    add-double v21, v21, v19

    const-wide v8, -0x4036361bb46239f7L    # -0.2014737481327276

    aget-object v18, v7, v10

    aget-wide v19, v18, v5

    mul-double v19, v19, v8

    add-double v21, v21, v19

    const-wide v8, -0x40594dd5a3fa3a84L    # -0.04432804463693693

    const/16 v16, 0xb

    aget-object v18, v7, v16

    aget-wide v19, v18, v5

    mul-double v19, v19, v8

    add-double v21, v21, v19

    const-wide v8, -0x40c9aff1ec18eb65L    # -3.4046500868740456E-4

    const/16 v17, 0xc

    aget-object v7, v7, v17

    aget-wide v18, v7, v5

    mul-double v18, v18, v8

    add-double v21, v21, v18

    const-wide v7, 0x3fc21686b20cd989L    # 0.1413124436746325

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v9, v9, v4

    aget-wide v18, v9, v5

    mul-double v18, v18, v7

    add-double v21, v21, v18

    .line 10
    aget-wide v7, v6, v5

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v10, v10, v21

    add-double/2addr v7, v10

    aput-wide v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0xa

    const/16 v11, 0x9

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v10, 0x3fc999999999999aL    # 0.2

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v6, v6, v10

    add-double/2addr v6, v2

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v5, v6, v7, v1, v10}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v5, 0x0

    .line 12
    :goto_2
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v6

    if-ge v5, v7, :cond_3

    const-wide v20, -0x4021136a19ba7cfcL    # -0.4831900357003607

    .line 13
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v10, v7, v4

    aget-wide v22, v10, v5

    mul-double v22, v22, v20

    const-wide v20, -0x3fddb441f4516442L    # -9.147934308113573

    aget-object v10, v7, v15

    aget-wide v24, v10, v5

    mul-double v24, v24, v20

    add-double v22, v22, v24

    const-wide v20, 0x40172ae8b2a482bbL    # 5.791903296748099

    aget-object v10, v7, v14

    aget-wide v24, v10, v5

    mul-double v24, v24, v20

    add-double v22, v22, v24

    const-wide v20, 0x4023bd8a09f6e330L    # 9.870193778407696

    aget-object v10, v7, v13

    aget-wide v24, v10, v5

    mul-double v24, v24, v20

    add-double v22, v22, v24

    const-wide v20, 0x3fa754028fe67560L    # 0.04556282049746119

    aget-object v10, v7, v12

    aget-wide v24, v10, v5

    mul-double v24, v24, v20

    add-double v22, v22, v24

    const/16 v10, 0x9

    aget-object v19, v7, v10

    aget-wide v20, v19, v5

    mul-double v20, v20, v8

    add-double v22, v22, v20

    const-wide v19, -0x403639a8968018d3L    # -0.20136540080403034

    const/16 v18, 0xa

    aget-object v21, v7, v18

    aget-wide v24, v21, v5

    mul-double v24, v24, v19

    add-double v22, v22, v24

    const-wide v19, -0x40591bb0af54943eL    # -0.04471061572777259

    const/16 v16, 0xb

    aget-object v21, v7, v16

    aget-wide v24, v21, v5

    mul-double v24, v24, v19

    add-double v22, v22, v24

    const-wide v19, -0x40a914113db78e2cL    # -0.0013990241651590145

    const/16 v17, 0xc

    aget-object v7, v7, v17

    aget-wide v24, v7, v5

    mul-double v24, v24, v19

    add-double v22, v22, v24

    const-wide v19, 0x40079482a23f1996L    # 2.9475147891527724

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v21, v7, v4

    aget-wide v24, v21, v5

    mul-double v24, v24, v19

    add-double v22, v22, v24

    const-wide v19, -0x3fddb2b59235dddeL    # -9.15095847217987

    aget-object v7, v7, v11

    aget-wide v24, v7, v5

    mul-double v24, v24, v19

    add-double v22, v22, v24

    .line 14
    aget-wide v19, v6, v5

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v6, v6, v22

    add-double v19, v19, v6

    aput-wide v19, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 15
    :cond_3
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v5, 0x3fe8e38e38e38e39L    # 0.7777777777777778

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v7, v7, v5

    add-double/2addr v2, v7

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v3, v1, v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [[D

    .line 1
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-array v3, v0, [D

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v1, v4

    if-gez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 4
    :cond_1
    new-array v3, v0, [D

    :goto_1
    const/4 v5, 0x1

    aput-object v3, v1, v5

    if-gez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    new-array v2, v0, [D

    :goto_2
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 6
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v5

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 8
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->readExternal(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 2
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length p1, p1

    const/4 p2, 0x3

    new-array p2, p2, [[D

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 4
    :goto_0
    iget-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    array-length p5, p4

    if-ge p3, p5, :cond_0

    .line 5
    new-array p5, p1, [D

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x7

    new-array p3, p3, [[D

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 p3, 0x0

    .line 7
    :goto_1
    iget-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    array-length p5, p4

    if-ge p3, p5, :cond_1

    .line 8
    new-array p5, p1, [D

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public storeTime(D)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 3
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 5
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 6
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aget-wide v4, v3, v2

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v0
.end method
