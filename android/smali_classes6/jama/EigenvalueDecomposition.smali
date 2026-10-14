.class public Ljama/EigenvalueDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private H:[[D

.field private V:[[D

.field private transient cdivi:D

.field private transient cdivr:D

.field private d:[D

.field private e:[D

.field private issymmetric:Z

.field private n:I

.field private ort:[D


# direct methods
.method public constructor <init>(Ljama/Matrix;)V
    .locals 11

    .line 1
    const-class v0, D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljama/Matrix;->getColumnDimension()I

    move-result p1

    iput p1, p0, Ljama/EigenvalueDecomposition;->n:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v5, 0x0

    aput p1, v3, v5

    .line 4
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Ljama/EigenvalueDecomposition;->V:[[D

    .line 5
    iget p1, p0, Ljama/EigenvalueDecomposition;->n:I

    new-array v3, p1, [D

    iput-object v3, p0, Ljama/EigenvalueDecomposition;->d:[D

    .line 6
    new-array p1, p1, [D

    iput-object p1, p0, Ljama/EigenvalueDecomposition;->e:[D

    .line 7
    iput-boolean v4, p0, Ljama/EigenvalueDecomposition;->issymmetric:Z

    const/4 p1, 0x0

    .line 8
    :goto_0
    iget v3, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge p1, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget-boolean v7, p0, Ljama/EigenvalueDecomposition;->issymmetric:Z

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    .line 9
    :goto_2
    iget v6, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v3, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    iget-boolean v7, p0, Ljama/EigenvalueDecomposition;->issymmetric:Z

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 10
    aget-object v6, v1, v3

    aget-wide v7, v6, p1

    aget-object v6, v1, p1

    aget-wide v9, v6, v3

    cmpl-double v6, v7, v9

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, p0, Ljama/EigenvalueDecomposition;->issymmetric:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_7

    const/4 p1, 0x0

    .line 11
    :goto_5
    iget v0, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    .line 12
    :goto_6
    iget v2, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v0, v2, :cond_5

    .line 13
    iget-object v2, p0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v2, v2, p1

    aget-object v3, v1, p1

    aget-wide v6, v3, v0

    aput-wide v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 14
    :cond_6
    invoke-direct {p0}, Ljama/EigenvalueDecomposition;->tred2()V

    .line 15
    invoke-direct {p0}, Ljama/EigenvalueDecomposition;->tql2()V

    goto :goto_9

    :cond_7
    new-array p1, v2, [I

    aput v3, p1, v4

    aput v3, p1, v5

    .line 16
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Ljama/EigenvalueDecomposition;->H:[[D

    .line 17
    iget p1, p0, Ljama/EigenvalueDecomposition;->n:I

    new-array p1, p1, [D

    iput-object p1, p0, Ljama/EigenvalueDecomposition;->ort:[D

    const/4 p1, 0x0

    .line 18
    :goto_7
    iget v0, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge p1, v0, :cond_9

    const/4 v0, 0x0

    .line 19
    :goto_8
    iget v2, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v0, v2, :cond_8

    .line 20
    iget-object v2, p0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v2, v0

    aget-object v3, v1, v0

    aget-wide v6, v3, p1

    aput-wide v6, v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 21
    :cond_9
    invoke-direct {p0}, Ljama/EigenvalueDecomposition;->orthes()V

    .line 22
    invoke-direct {p0}, Ljama/EigenvalueDecomposition;->hqr2()V

    :goto_9
    return-void
.end method

.method private cdiv(DDDD)V
    .locals 5

    .line 1
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    div-double v0, p7, p5

    mul-double p7, p7, v0

    add-double/2addr p5, p7

    mul-double p7, v0, p3

    add-double/2addr p7, p1

    div-double/2addr p7, p5

    .line 2
    iput-wide p7, p0, Ljama/EigenvalueDecomposition;->cdivr:D

    mul-double v0, v0, p1

    sub-double/2addr p3, v0

    div-double/2addr p3, p5

    .line 3
    iput-wide p3, p0, Ljama/EigenvalueDecomposition;->cdivi:D

    goto :goto_0

    :cond_0
    div-double v0, p5, p7

    mul-double p5, p5, v0

    add-double/2addr p7, p5

    mul-double p5, v0, p1

    add-double/2addr p5, p3

    div-double/2addr p5, p7

    .line 4
    iput-wide p5, p0, Ljama/EigenvalueDecomposition;->cdivr:D

    mul-double v0, v0, p3

    sub-double/2addr v0, p1

    div-double/2addr v0, p7

    .line 5
    iput-wide v0, p0, Ljama/EigenvalueDecomposition;->cdivi:D

    :goto_0
    return-void
.end method

.method private hqr2()V
    .locals 52

    move-object/from16 v9, p0

    .line 1
    iget v10, v9, Ljama/EigenvalueDecomposition;->n:I

    add-int/lit8 v11, v10, -0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v0, -0x3fb6000000000000L    # -52.0

    .line 2
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    const/4 v0, 0x0

    :goto_0
    const/16 v20, 0x1

    if-ge v0, v10, :cond_4

    if-gez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-le v0, v11, :cond_1

    goto :goto_2

    :cond_1
    const/16 v20, 0x0

    :goto_2
    or-int v1, v1, v20

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v9, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v2, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v2, v0

    aget-wide v3, v2, v0

    aput-wide v3, v1, v0

    .line 4
    iget-object v1, v9, Ljama/EigenvalueDecomposition;->e:[D

    aput-wide v16, v1, v0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 5
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    if-ge v1, v10, :cond_3

    .line 6
    iget-object v2, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v2, v0

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v18, v18, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v11

    move-wide/from16 v1, v16

    move-wide v4, v1

    move-wide/from16 v21, v4

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    const/4 v3, 0x0

    :goto_4
    if-ltz v0, :cond_2b

    move v6, v0

    :goto_5
    if-lez v6, :cond_7

    .line 7
    iget-object v8, v9, Ljama/EigenvalueDecomposition;->H:[[D

    add-int/lit8 v21, v6, -0x1

    aget-object v8, v8, v21

    aget-wide v29, v8, v21

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    iget-object v8, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v8, v8, v6

    aget-wide v31, v8, v6

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->abs(D)D

    move-result-wide v31

    add-double v29, v29, v31

    cmpl-double v8, v29, v16

    if-nez v8, :cond_5

    move-wide/from16 v29, v18

    .line 8
    :cond_5
    iget-object v8, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v8, v8, v6

    aget-wide v21, v8, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    mul-double v31, v14, v29

    cmpg-double v8, v21, v31

    if-gez v8, :cond_6

    move-wide/from16 v21, v29

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v21, v29

    goto :goto_5

    :cond_7
    :goto_6
    if-ne v6, v0, :cond_8

    .line 9
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v6, v3, v0

    aget-object v8, v3, v0

    aget-wide v29, v8, v0

    add-double v29, v29, v1

    aput-wide v29, v6, v0

    .line 10
    iget-object v6, v9, Ljama/EigenvalueDecomposition;->d:[D

    aget-object v3, v3, v0

    aget-wide v29, v3, v0

    aput-wide v29, v6, v0

    .line 11
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->e:[D

    aput-wide v16, v3, v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    move-wide/from16 v36, v14

    const/4 v3, 0x0

    goto/16 :goto_1f

    :cond_8
    add-int/lit8 v8, v0, -0x1

    if-ne v6, v8, :cond_f

    .line 12
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v4, v3, v0

    aget-wide v5, v4, v8

    aget-object v4, v3, v8

    aget-wide v25, v4, v0

    mul-double v5, v5, v25

    .line 13
    aget-object v4, v3, v8

    aget-wide v25, v4, v8

    aget-object v3, v3, v0

    aget-wide v27, v3, v0

    sub-double v25, v25, v27

    div-double v25, v25, v12

    mul-double v3, v25, v25

    add-double/2addr v3, v5

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 15
    iget-object v7, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v27, v7, v0

    aget-object v28, v7, v0

    aget-wide v32, v28, v0

    add-double v32, v32, v1

    aput-wide v32, v27, v0

    .line 16
    aget-object v27, v7, v8

    aget-object v28, v7, v8

    aget-wide v32, v28, v8

    add-double v32, v32, v1

    aput-wide v32, v27, v8

    .line 17
    aget-object v27, v7, v0

    aget-wide v32, v27, v0

    cmpl-double v27, v3, v16

    if-ltz v27, :cond_e

    cmpl-double v3, v25, v16

    if-ltz v3, :cond_9

    add-double v25, v25, v12

    goto :goto_8

    :cond_9
    sub-double v25, v25, v12

    .line 18
    :goto_8
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->d:[D

    add-double v12, v32, v25

    aput-wide v12, v3, v8

    .line 19
    aget-wide v12, v3, v8

    aput-wide v12, v3, v0

    cmpl-double v4, v25, v16

    if-eqz v4, :cond_a

    div-double v5, v5, v25

    sub-double v32, v32, v5

    .line 20
    aput-wide v32, v3, v0

    .line 21
    :cond_a
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->e:[D

    aput-wide v16, v3, v8

    .line 22
    aput-wide v16, v3, v0

    .line 23
    aget-object v3, v7, v0

    aget-wide v4, v3, v8

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double v21, v6, v12

    div-double v4, v4, v21

    div-double v6, v25, v21

    mul-double v12, v4, v4

    mul-double v23, v6, v6

    add-double v12, v12, v23

    .line 25
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    div-double v4, v4, v23

    div-double v6, v6, v23

    move v3, v8

    :goto_9
    if-ge v3, v10, :cond_b

    .line 26
    iget-object v12, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v13, v12, v8

    aget-wide v25, v13, v3

    .line 27
    aget-object v13, v12, v8

    mul-double v27, v6, v25

    aget-object v32, v12, v0

    aget-wide v33, v32, v3

    mul-double v33, v33, v4

    add-double v27, v27, v33

    aput-wide v27, v13, v3

    .line 28
    aget-object v13, v12, v0

    aget-object v12, v12, v0

    aget-wide v27, v12, v3

    mul-double v27, v27, v6

    mul-double v32, v4, v25

    sub-double v27, v27, v32

    aput-wide v27, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_a
    if-gt v3, v0, :cond_c

    .line 29
    iget-object v12, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v13, v12, v3

    aget-wide v25, v13, v8

    .line 30
    aget-object v13, v12, v3

    mul-double v27, v6, v25

    aget-object v32, v12, v3

    aget-wide v33, v32, v0

    mul-double v33, v33, v4

    add-double v27, v27, v33

    aput-wide v27, v13, v8

    .line 31
    aget-object v13, v12, v3

    aget-object v12, v12, v3

    aget-wide v27, v12, v0

    mul-double v27, v27, v6

    mul-double v32, v4, v25

    sub-double v27, v27, v32

    aput-wide v27, v13, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_b
    if-gt v3, v11, :cond_d

    .line 32
    iget-object v12, v9, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v13, v12, v3

    aget-wide v25, v13, v8

    .line 33
    aget-object v13, v12, v3

    mul-double v27, v6, v25

    aget-object v32, v12, v3

    aget-wide v33, v32, v0

    mul-double v33, v33, v4

    add-double v27, v27, v33

    aput-wide v27, v13, v8

    .line 34
    aget-object v13, v12, v3

    aget-object v12, v12, v3

    aget-wide v27, v12, v0

    mul-double v27, v27, v6

    mul-double v32, v4, v25

    sub-double v27, v27, v32

    aput-wide v27, v13, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    move-wide/from16 v27, v6

    move-wide/from16 v50, v4

    move-wide/from16 v4, v25

    move-wide/from16 v25, v50

    goto :goto_c

    .line 35
    :cond_e
    iget-object v5, v9, Ljama/EigenvalueDecomposition;->d:[D

    add-double v32, v32, v25

    aput-wide v32, v5, v8

    .line 36
    aput-wide v32, v5, v0

    .line 37
    iget-object v5, v9, Ljama/EigenvalueDecomposition;->e:[D

    aput-wide v12, v5, v8

    neg-double v6, v12

    .line 38
    aput-wide v6, v5, v0

    move-wide/from16 v27, v3

    move-wide v4, v12

    :goto_c
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_7

    .line 39
    :cond_f
    iget-object v7, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v12, v7, v0

    aget-wide v32, v12, v0

    if-ge v6, v0, :cond_10

    .line 40
    aget-object v12, v7, v8

    aget-wide v34, v12, v8

    .line 41
    aget-object v12, v7, v0

    aget-wide v36, v12, v8

    aget-object v7, v7, v8

    aget-wide v12, v7, v0

    mul-double v36, v36, v12

    goto :goto_d

    :cond_10
    move-wide/from16 v34, v16

    move-wide/from16 v36, v34

    :goto_d
    const/16 v7, 0xa

    if-ne v3, v7, :cond_12

    add-double v1, v1, v32

    const/4 v7, 0x0

    :goto_e
    if-gt v7, v0, :cond_11

    .line 42
    iget-object v12, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v12, v12, v7

    aget-wide v21, v12, v7

    sub-double v21, v21, v32

    aput-wide v21, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 43
    :cond_11
    iget-object v7, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v7, v7, v0

    aget-wide v12, v7, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    iget-object v7, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v7, v7, v8

    add-int/lit8 v21, v0, -0x2

    aget-wide v21, v7, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v21, v12, v21

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double v32, v21, v12

    const-wide/high16 v12, -0x4024000000000000L    # -0.4375

    mul-double v12, v12, v21

    mul-double v36, v12, v21

    move-wide/from16 v34, v32

    :cond_12
    const/16 v7, 0x1e

    if-ne v3, v7, :cond_15

    sub-double v12, v34, v32

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v12, v12, v21

    mul-double v21, v12, v12

    add-double v21, v21, v36

    cmpl-double v7, v21, v16

    if-lez v7, :cond_15

    move-wide/from16 v38, v4

    .line 44
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    cmpg-double v7, v34, v32

    if-gez v7, :cond_13

    neg-double v4, v4

    :cond_13
    add-double/2addr v12, v4

    div-double v36, v36, v12

    sub-double v21, v32, v36

    const/4 v4, 0x0

    :goto_f
    if-gt v4, v0, :cond_14

    .line 45
    iget-object v5, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v5, v5, v4

    aget-wide v12, v5, v4

    sub-double v12, v12, v21

    aput-wide v12, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_14
    add-double v1, v1, v21

    const-wide v32, 0x3feed916872b020cL    # 0.964

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    goto :goto_10

    :cond_15
    move-wide/from16 v38, v4

    :goto_10
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v0, -0x2

    :goto_11
    if-lt v4, v6, :cond_18

    .line 46
    iget-object v5, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v7, v5, v4

    aget-wide v38, v7, v4

    sub-double v12, v32, v38

    sub-double v21, v34, v38

    mul-double v23, v12, v21

    sub-double v23, v23, v36

    add-int/lit8 v7, v4, 0x1

    .line 47
    aget-object v25, v5, v7

    aget-wide v26, v25, v4

    div-double v23, v23, v26

    aget-object v25, v5, v4

    aget-wide v26, v25, v7

    add-double v23, v23, v26

    .line 48
    aget-object v25, v5, v7

    aget-wide v26, v25, v7

    sub-double v26, v26, v38

    sub-double v26, v26, v12

    sub-double v26, v26, v21

    add-int/lit8 v12, v4, 0x2

    .line 49
    aget-object v5, v5, v12

    aget-wide v12, v5, v7

    .line 50
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    add-double v21, v21, v40

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    add-double v21, v21, v40

    div-double v23, v23, v21

    div-double v27, v26, v21

    div-double v12, v12, v21

    if-ne v4, v6, :cond_16

    goto :goto_12

    .line 51
    :cond_16
    iget-object v5, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v5, v5, v4

    add-int/lit8 v25, v4, -0x1

    aget-wide v40, v5, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    move-result-wide v42

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v42, v42, v44

    mul-double v40, v40, v42

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v42

    iget-object v5, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v5, v5, v25

    aget-wide v25, v5, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v25, v25, v44

    iget-object v5, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v5, v5, v7

    aget-wide v44, v5, v7

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v25, v25, v44

    mul-double v42, v42, v25

    mul-double v42, v42, v14

    cmpg-double v5, v40, v42

    if-gez v5, :cond_17

    :goto_12
    move-wide/from16 v25, v23

    move-wide/from16 v23, v12

    goto :goto_13

    :cond_17
    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v25, v23

    move-wide/from16 v23, v12

    goto/16 :goto_11

    :cond_18
    :goto_13
    add-int/lit8 v5, v4, 0x2

    move v7, v5

    :goto_14
    if-gt v7, v0, :cond_1a

    .line 52
    iget-object v12, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v13, v12, v7

    add-int/lit8 v34, v7, -0x2

    aput-wide v16, v13, v34

    if-le v7, v5, :cond_19

    .line 53
    aget-object v12, v12, v7

    add-int/lit8 v13, v7, -0x3

    aput-wide v16, v12, v13

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1a
    move v5, v4

    :goto_15
    if-gt v5, v8, :cond_2a

    if-eq v5, v8, :cond_1b

    const/4 v7, 0x1

    goto :goto_16

    :cond_1b
    const/4 v7, 0x0

    :goto_16
    if-eq v5, v4, :cond_1e

    .line 54
    iget-object v12, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v13, v12, v5

    add-int/lit8 v23, v5, -0x1

    aget-wide v24, v13, v23

    add-int/lit8 v13, v5, 0x1

    .line 55
    aget-object v13, v12, v13

    aget-wide v26, v13, v23

    if-eqz v7, :cond_1c

    add-int/lit8 v13, v5, 0x2

    .line 56
    aget-object v12, v12, v13

    aget-wide v32, v12, v23

    goto :goto_17

    :cond_1c
    move-wide/from16 v32, v16

    .line 57
    :goto_17
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    add-double v12, v12, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    add-double v12, v12, v34

    cmpl-double v23, v12, v16

    if-eqz v23, :cond_1d

    div-double v24, v24, v12

    div-double v26, v26, v12

    div-double v32, v32, v12

    :cond_1d
    move-wide/from16 v27, v26

    move-wide/from16 v25, v24

    move-wide/from16 v23, v32

    move-wide/from16 v32, v12

    :cond_1e
    cmpl-double v12, v32, v16

    if-nez v12, :cond_1f

    move-wide/from16 v36, v14

    goto/16 :goto_1e

    :cond_1f
    mul-double v12, v25, v25

    mul-double v21, v27, v27

    add-double v12, v12, v21

    mul-double v21, v23, v23

    add-double v12, v12, v21

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    cmpg-double v21, v25, v16

    if-gez v21, :cond_20

    neg-double v12, v12

    :cond_20
    cmpl-double v21, v12, v16

    if-eqz v21, :cond_29

    if-eq v5, v4, :cond_21

    move-wide/from16 v34, v1

    .line 59
    iget-object v1, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v1, v5

    add-int/lit8 v2, v5, -0x1

    move-wide/from16 v36, v14

    neg-double v14, v12

    mul-double v14, v14, v32

    aput-wide v14, v1, v2

    goto :goto_18

    :cond_21
    move-wide/from16 v34, v1

    move-wide/from16 v36, v14

    if-eq v6, v4, :cond_22

    .line 60
    iget-object v1, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v1, v5

    add-int/lit8 v14, v5, -0x1

    aget-object v1, v1, v5

    move v15, v3

    move/from16 v40, v4

    aget-wide v3, v1, v14

    neg-double v3, v3

    aput-wide v3, v2, v14

    goto :goto_19

    :cond_22
    :goto_18
    move v15, v3

    move/from16 v40, v4

    :goto_19
    add-double v25, v25, v12

    div-double v1, v25, v12

    div-double v3, v27, v12

    div-double v38, v23, v12

    div-double v27, v27, v25

    div-double v23, v23, v25

    move v14, v5

    :goto_1a
    if-ge v14, v10, :cond_24

    move/from16 v41, v6

    .line 61
    iget-object v6, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v21, v6, v5

    aget-wide v25, v21, v14

    add-int/lit8 v21, v5, 0x1

    aget-object v22, v6, v21

    aget-wide v32, v22, v14

    mul-double v32, v32, v27

    add-double v25, v25, v32

    if-eqz v7, :cond_23

    add-int/lit8 v22, v5, 0x2

    .line 62
    aget-object v32, v6, v22

    aget-wide v42, v32, v14

    mul-double v42, v42, v23

    add-double v25, v25, v42

    .line 63
    aget-object v32, v6, v22

    aget-object v22, v6, v22

    aget-wide v42, v22, v14

    mul-double v44, v25, v38

    sub-double v42, v42, v44

    aput-wide v42, v32, v14

    .line 64
    :cond_23
    aget-object v22, v6, v5

    aget-object v32, v6, v5

    aget-wide v42, v32, v14

    mul-double v32, v25, v1

    sub-double v42, v42, v32

    aput-wide v42, v22, v14

    .line 65
    aget-object v22, v6, v21

    aget-object v6, v6, v21

    aget-wide v32, v6, v14

    mul-double v42, v25, v3

    sub-double v32, v32, v42

    aput-wide v32, v22, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v41

    goto :goto_1a

    :cond_24
    move/from16 v41, v6

    const/4 v6, 0x0

    :goto_1b
    add-int/lit8 v14, v5, 0x3

    .line 66
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-gt v6, v14, :cond_26

    .line 67
    iget-object v14, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v21, v14, v6

    aget-wide v25, v21, v5

    mul-double v25, v25, v1

    aget-object v21, v14, v6

    add-int/lit8 v22, v5, 0x1

    aget-wide v32, v21, v22

    mul-double v32, v32, v3

    add-double v25, v25, v32

    if-eqz v7, :cond_25

    .line 68
    aget-object v21, v14, v6

    add-int/lit8 v32, v5, 0x2

    aget-wide v42, v21, v32

    mul-double v42, v42, v38

    add-double v25, v25, v42

    .line 69
    aget-object v21, v14, v6

    aget-object v33, v14, v6

    aget-wide v42, v33, v32

    mul-double v44, v25, v23

    sub-double v42, v42, v44

    aput-wide v42, v21, v32

    .line 70
    :cond_25
    aget-object v21, v14, v6

    aget-object v32, v14, v6

    aget-wide v42, v32, v5

    sub-double v42, v42, v25

    aput-wide v42, v21, v5

    .line 71
    aget-object v21, v14, v6

    aget-object v14, v14, v6

    aget-wide v32, v14, v22

    mul-double v42, v25, v27

    sub-double v32, v32, v42

    aput-wide v32, v21, v22

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_26
    const/4 v6, 0x0

    :goto_1c
    if-gt v6, v11, :cond_28

    .line 72
    iget-object v14, v9, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v21, v14, v6

    aget-wide v25, v21, v5

    mul-double v25, v25, v1

    aget-object v21, v14, v6

    add-int/lit8 v22, v5, 0x1

    aget-wide v32, v21, v22

    mul-double v32, v32, v3

    add-double v25, v25, v32

    if-eqz v7, :cond_27

    .line 73
    aget-object v21, v14, v6

    add-int/lit8 v32, v5, 0x2

    aget-wide v42, v21, v32

    mul-double v42, v42, v38

    add-double v25, v25, v42

    .line 74
    aget-object v21, v14, v6

    aget-object v33, v14, v6

    aget-wide v42, v33, v32

    mul-double v44, v25, v23

    sub-double v42, v42, v44

    aput-wide v42, v21, v32

    .line 75
    :cond_27
    aget-object v21, v14, v6

    aget-object v32, v14, v6

    aget-wide v42, v32, v5

    sub-double v42, v42, v25

    aput-wide v42, v21, v5

    .line 76
    aget-object v21, v14, v6

    aget-object v14, v14, v6

    aget-wide v32, v14, v22

    mul-double v42, v25, v27

    sub-double v32, v32, v42

    aput-wide v32, v21, v22

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_28
    move-wide/from16 v32, v1

    goto :goto_1d

    :cond_29
    move-wide/from16 v34, v1

    move/from16 v40, v4

    move/from16 v41, v6

    move-wide/from16 v36, v14

    move v15, v3

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v21, v12

    move v3, v15

    move-wide/from16 v1, v34

    move-wide/from16 v14, v36

    move/from16 v4, v40

    move/from16 v6, v41

    goto/16 :goto_15

    :cond_2a
    move-wide/from16 v34, v1

    move-wide/from16 v36, v14

    move v15, v3

    :goto_1e
    move-wide/from16 v4, v38

    :goto_1f
    move-wide/from16 v14, v36

    const/4 v7, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    goto/16 :goto_4

    :cond_2b
    move-wide/from16 v38, v4

    move-wide/from16 v36, v14

    cmpl-double v0, v18, v16

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    move v12, v11

    :goto_20
    if-ltz v12, :cond_41

    .line 77
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v13, v0, v12

    .line 78
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v25, v0, v12

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v25, v16

    if-nez v0, :cond_34

    .line 79
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v0, v0, v12

    aput-wide v27, v0, v12

    add-int/lit8 v0, v12, -0x1

    move v3, v12

    move-wide/from16 v1, v21

    :goto_21
    if-ltz v0, :cond_33

    .line 80
    iget-object v4, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v4, v4, v0

    aget-wide v5, v4, v0

    sub-double/2addr v5, v13

    move v4, v3

    move-wide/from16 v7, v16

    :goto_22
    if-gt v4, v12, :cond_2d

    .line 81
    iget-object v15, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v21, v15, v0

    aget-wide v22, v21, v4

    aget-object v15, v15, v4

    aget-wide v24, v15, v12

    mul-double v22, v22, v24

    add-double v7, v7, v22

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 82
    :cond_2d
    iget-object v4, v9, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v21, v4, v0

    cmpg-double v15, v21, v16

    if-gez v15, :cond_2e

    move-wide/from16 v38, v5

    move-wide v1, v7

    move v15, v10

    move/from16 v32, v11

    goto/16 :goto_25

    .line 83
    :cond_2e
    aget-wide v21, v4, v0

    cmpl-double v3, v21, v16

    if-nez v3, :cond_30

    cmpl-double v3, v5, v16

    if-eqz v3, :cond_2f

    .line 84
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v0

    move v15, v10

    move/from16 v32, v11

    neg-double v10, v7

    div-double/2addr v10, v5

    aput-wide v10, v3, v12

    goto :goto_23

    :cond_2f
    move v15, v10

    move/from16 v32, v11

    .line 85
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v0

    neg-double v4, v7

    mul-double v10, v36, v18

    div-double/2addr v4, v10

    aput-wide v4, v3, v12

    goto :goto_23

    :cond_30
    move v15, v10

    move/from16 v32, v11

    .line 86
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v10, v3, v0

    add-int/lit8 v11, v0, 0x1

    aget-wide v21, v10, v11

    .line 87
    aget-object v10, v3, v11

    aget-wide v23, v10, v0

    .line 88
    iget-object v10, v9, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v25, v10, v0

    sub-double v25, v25, v13

    aget-wide v33, v10, v0

    sub-double v33, v33, v13

    mul-double v25, v25, v33

    aget-wide v33, v4, v0

    aget-wide v40, v4, v0

    mul-double v33, v33, v40

    add-double v25, v25, v33

    mul-double v33, v21, v1

    mul-double v40, v38, v7

    sub-double v33, v33, v40

    div-double v33, v33, v25

    .line 89
    aget-object v3, v3, v0

    aput-wide v33, v3, v12

    .line 90
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    cmpl-double v10, v3, v25

    if-lez v10, :cond_31

    .line 91
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v11

    neg-double v10, v7

    mul-double v5, v5, v33

    sub-double/2addr v10, v5

    div-double v10, v10, v21

    aput-wide v10, v3, v12

    goto :goto_23

    .line 92
    :cond_31
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v11

    neg-double v4, v1

    mul-double v23, v23, v33

    sub-double v4, v4, v23

    div-double v4, v4, v38

    aput-wide v4, v3, v12

    .line 93
    :goto_23
    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double v5, v36, v3

    mul-double v5, v5, v3

    cmpl-double v10, v5, v27

    if-lez v10, :cond_32

    move v5, v0

    :goto_24
    if-gt v5, v12, :cond_32

    .line 94
    iget-object v6, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v10, v6, v5

    aget-object v6, v6, v5

    aget-wide v21, v6, v12

    div-double v21, v21, v3

    aput-wide v21, v10, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_32
    move v3, v0

    :goto_25
    add-int/lit8 v0, v0, -0x1

    move-wide/from16 v23, v7

    move v10, v15

    move/from16 v11, v32

    goto/16 :goto_21

    :cond_33
    move v15, v10

    move/from16 v32, v11

    move-wide/from16 v21, v1

    goto/16 :goto_2e

    :cond_34
    move v15, v10

    move/from16 v32, v11

    cmpg-double v0, v25, v16

    if-gez v0, :cond_40

    add-int/lit8 v10, v12, -0x1

    .line 95
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v0, v0, v12

    aget-wide v1, v0, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v2, v10

    aget-wide v3, v2, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_35

    .line 96
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v10

    aget-object v2, v0, v12

    aget-wide v3, v2, v10

    div-double v2, v25, v3

    aput-wide v2, v1, v10

    .line 97
    aget-object v1, v0, v10

    aget-object v2, v0, v12

    aget-wide v3, v2, v12

    sub-double/2addr v3, v13

    neg-double v2, v3

    aget-object v0, v0, v12

    aget-wide v4, v0, v10

    div-double/2addr v2, v4

    aput-wide v2, v1, v12

    const/4 v11, 0x0

    goto :goto_26

    :cond_35
    const-wide/16 v1, 0x0

    .line 98
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v0, v10

    aget-wide v4, v3, v12

    neg-double v3, v4

    aget-object v0, v0, v10

    aget-wide v5, v0, v10

    sub-double/2addr v5, v13

    move-object/from16 v0, p0

    const/4 v11, 0x0

    move-wide/from16 v7, v25

    invoke-direct/range {v0 .. v8}, Ljama/EigenvalueDecomposition;->cdiv(DDDD)V

    .line 99
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v10

    iget-wide v2, v9, Ljama/EigenvalueDecomposition;->cdivr:D

    aput-wide v2, v1, v10

    .line 100
    aget-object v0, v0, v10

    iget-wide v1, v9, Ljama/EigenvalueDecomposition;->cdivi:D

    aput-wide v1, v0, v12

    .line 101
    :goto_26
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v12

    aput-wide v16, v1, v10

    .line 102
    aget-object v0, v0, v12

    aput-wide v27, v0, v12

    add-int/lit8 v0, v12, -0x2

    move-wide/from16 v7, v21

    move-wide/from16 v5, v23

    move/from16 v21, v0

    move v0, v10

    :goto_27
    if-ltz v21, :cond_3f

    move v1, v0

    move-wide/from16 v22, v7

    move-wide/from16 v3, v16

    move-wide v7, v3

    :goto_28
    if-gt v1, v12, :cond_36

    .line 103
    iget-object v2, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v24, v2, v21

    aget-wide v33, v24, v1

    aget-object v24, v2, v1

    aget-wide v40, v24, v10

    mul-double v33, v33, v40

    add-double v3, v3, v33

    .line 104
    aget-object v24, v2, v21

    aget-wide v33, v24, v1

    aget-object v2, v2, v1

    aget-wide v40, v2, v12

    mul-double v33, v33, v40

    add-double v7, v7, v33

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 105
    :cond_36
    iget-object v1, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v1, v21

    aget-wide v33, v2, v21

    sub-double v33, v33, v13

    .line 106
    iget-object v2, v9, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v40, v2, v21

    cmpg-double v24, v40, v16

    if-gez v24, :cond_37

    move-wide v5, v3

    move v2, v12

    move-wide/from16 v48, v13

    move-wide/from16 v38, v33

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    goto/16 :goto_2d

    .line 107
    :cond_37
    aget-wide v40, v2, v21

    cmpl-double v0, v40, v16

    if-nez v0, :cond_38

    neg-double v1, v3

    neg-double v3, v7

    move-object/from16 v0, p0

    move-wide v7, v5

    move-wide/from16 v5, v33

    move-wide/from16 v48, v7

    move-wide/from16 v46, v22

    move-wide/from16 v7, v25

    .line 108
    invoke-direct/range {v0 .. v8}, Ljama/EigenvalueDecomposition;->cdiv(DDDD)V

    .line 109
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v21

    iget-wide v2, v9, Ljama/EigenvalueDecomposition;->cdivr:D

    aput-wide v2, v1, v10

    .line 110
    aget-object v0, v0, v21

    iget-wide v1, v9, Ljama/EigenvalueDecomposition;->cdivi:D

    aput-wide v1, v0, v12

    move/from16 v31, v12

    move-wide/from16 v11, v48

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide/from16 v48, v13

    move-wide/from16 v13, v46

    goto/16 :goto_2b

    :cond_38
    move-wide/from16 v48, v5

    move-wide/from16 v46, v22

    .line 111
    aget-object v0, v1, v21

    add-int/lit8 v22, v21, 0x1

    aget-wide v23, v0, v22

    .line 112
    aget-object v0, v1, v22

    aget-wide v40, v0, v21

    .line 113
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v5, v0, v21

    sub-double/2addr v5, v13

    aget-wide v42, v0, v21

    sub-double v42, v42, v13

    mul-double v5, v5, v42

    aget-wide v42, v2, v21

    aget-wide v1, v2, v21

    mul-double v42, v42, v1

    add-double v5, v5, v42

    mul-double v1, v25, v25

    sub-double/2addr v5, v1

    .line 114
    aget-wide v1, v0, v21

    sub-double/2addr v1, v13

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v29

    mul-double v42, v1, v25

    cmpl-double v0, v5, v16

    if-nez v0, :cond_39

    const/4 v0, 0x1

    goto :goto_29

    :cond_39
    const/4 v0, 0x0

    :goto_29
    cmpl-double v1, v42, v16

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_2a

    :cond_3a
    const/4 v1, 0x0

    :goto_2a
    and-int/2addr v0, v1

    if-eqz v0, :cond_3b

    mul-double v0, v36, v18

    .line 115
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v5, v5, v44

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v5, v5, v44

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v5, v5, v44

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    add-double v5, v5, v44

    mul-double v0, v0, v5

    move-wide v5, v0

    :cond_3b
    move-wide/from16 v1, v48

    mul-double v44, v23, v1

    mul-double v48, v38, v3

    sub-double v44, v44, v48

    mul-double v48, v25, v7

    add-double v44, v44, v48

    move/from16 v31, v12

    move-wide/from16 v11, v46

    mul-double v46, v23, v11

    mul-double v48, v38, v7

    sub-double v46, v46, v48

    mul-double v48, v25, v3

    sub-double v46, v46, v48

    move-object/from16 v0, p0

    move-wide/from16 v48, v13

    move-wide v13, v1

    move-wide/from16 v1, v44

    move-wide/from16 v44, v11

    move-wide v11, v3

    move-wide/from16 v3, v46

    move-wide/from16 v46, v13

    move-wide v13, v7

    move-wide/from16 v7, v42

    .line 116
    invoke-direct/range {v0 .. v8}, Ljama/EigenvalueDecomposition;->cdiv(DDDD)V

    .line 117
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v21

    iget-wide v2, v9, Ljama/EigenvalueDecomposition;->cdivr:D

    aput-wide v2, v1, v10

    .line 118
    aget-object v0, v0, v21

    iget-wide v1, v9, Ljama/EigenvalueDecomposition;->cdivi:D

    aput-wide v1, v0, v31

    .line 119
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3c

    .line 120
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v22

    neg-double v2, v11

    aget-object v4, v0, v21

    aget-wide v5, v4, v10

    mul-double v5, v5, v33

    sub-double/2addr v2, v5

    aget-object v4, v0, v21

    aget-wide v5, v4, v31

    mul-double v5, v5, v25

    add-double/2addr v2, v5

    div-double v2, v2, v23

    aput-wide v2, v1, v10

    .line 121
    aget-object v1, v0, v22

    neg-double v2, v13

    aget-object v4, v0, v21

    aget-wide v5, v4, v31

    mul-double v33, v33, v5

    sub-double v2, v2, v33

    aget-object v0, v0, v21

    aget-wide v4, v0, v10

    mul-double v4, v4, v25

    sub-double/2addr v2, v4

    div-double v2, v2, v23

    aput-wide v2, v1, v31

    move-wide/from16 v13, v44

    move-wide/from16 v11, v46

    goto :goto_2b

    :cond_3c
    move-wide/from16 v11, v46

    neg-double v0, v11

    .line 122
    iget-object v2, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v2, v21

    aget-wide v4, v3, v10

    mul-double v4, v4, v40

    sub-double v3, v0, v4

    move-wide/from16 v13, v44

    neg-double v0, v13

    aget-object v2, v2, v21

    aget-wide v5, v2, v31

    mul-double v40, v40, v5

    sub-double v5, v0, v40

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide/from16 v5, v38

    move-wide/from16 v7, v25

    invoke-direct/range {v0 .. v8}, Ljama/EigenvalueDecomposition;->cdiv(DDDD)V

    .line 123
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v1, v0, v22

    iget-wide v2, v9, Ljama/EigenvalueDecomposition;->cdivr:D

    aput-wide v2, v1, v10

    .line 124
    aget-object v0, v0, v22

    iget-wide v1, v9, Ljama/EigenvalueDecomposition;->cdivi:D

    aput-wide v1, v0, v31

    .line 125
    :goto_2b
    iget-object v0, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v0, v0, v21

    aget-wide v1, v0, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v2, v21

    aget-wide v3, v2, v31

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    mul-double v2, v36, v0

    mul-double v2, v2, v0

    cmpl-double v4, v2, v27

    if-lez v4, :cond_3d

    move/from16 v3, v21

    move/from16 v2, v31

    :goto_2c
    if-gt v3, v2, :cond_3e

    .line 126
    iget-object v4, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v5, v4, v3

    aget-object v6, v4, v3

    aget-wide v7, v6, v10

    div-double/2addr v7, v0

    aput-wide v7, v5, v10

    .line 127
    aget-object v5, v4, v3

    aget-object v4, v4, v3

    aget-wide v6, v4, v2

    div-double/2addr v6, v0

    aput-wide v6, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3d
    move/from16 v2, v31

    :cond_3e
    move-wide v5, v11

    move-wide v7, v13

    move/from16 v0, v21

    :goto_2d
    add-int/lit8 v21, v21, -0x1

    move v12, v2

    move-wide/from16 v13, v48

    const/4 v11, 0x0

    goto/16 :goto_27

    :cond_3f
    move-wide v13, v7

    move v2, v12

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    move-wide v11, v5

    move-wide/from16 v23, v11

    move-wide/from16 v21, v13

    goto :goto_2f

    :cond_40
    :goto_2e
    move v2, v12

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    :goto_2f
    add-int/lit8 v12, v2, -0x1

    move v10, v15

    move/from16 v11, v32

    goto/16 :goto_20

    :cond_41
    move/from16 v32, v11

    move v0, v10

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v0, :cond_45

    move/from16 v10, v32

    if-gez v7, :cond_42

    const/4 v1, 0x1

    goto :goto_31

    :cond_42
    const/4 v1, 0x0

    :goto_31
    if-le v7, v10, :cond_43

    const/4 v2, 0x1

    goto :goto_32

    :cond_43
    const/4 v2, 0x0

    :goto_32
    or-int/2addr v1, v2

    if-eqz v1, :cond_44

    move v1, v7

    :goto_33
    if-ge v1, v0, :cond_44

    .line 128
    iget-object v2, v9, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v2, v2, v7

    iget-object v3, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v7

    aget-wide v4, v3, v1

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_44
    add-int/lit8 v7, v7, 0x1

    move/from16 v32, v10

    goto :goto_30

    :cond_45
    move/from16 v10, v32

    move v0, v10

    :goto_34
    if-ltz v0, :cond_48

    const/4 v7, 0x0

    :goto_35
    if-gt v7, v10, :cond_47

    move-wide/from16 v2, v16

    const/4 v1, 0x0

    .line 129
    :goto_36
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v1, v4, :cond_46

    .line 130
    iget-object v4, v9, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v4, v4, v7

    aget-wide v5, v4, v1

    iget-object v4, v9, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v4, v4, v1

    aget-wide v11, v4, v0

    mul-double v5, v5, v11

    add-double/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 131
    :cond_46
    iget-object v1, v9, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v1, v1, v7

    aput-wide v2, v1, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_48
    return-void
.end method

.method private orthes()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ljama/EigenvalueDecomposition;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    const-wide/16 v6, 0x0

    if-gt v3, v4, :cond_a

    move v4, v3

    move-wide v8, v6

    :goto_1
    if-gt v4, v1, :cond_0

    .line 2
    iget-object v10, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v10, v10, v4

    add-int/lit8 v11, v3, -0x1

    aget-wide v11, v10, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v4, v8, v6

    if-eqz v4, :cond_9

    move v4, v1

    move-wide v10, v6

    :goto_2
    if-lt v4, v3, :cond_1

    .line 3
    iget-object v12, v0, Ljama/EigenvalueDecomposition;->ort:[D

    iget-object v13, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v13, v13, v4

    add-int/lit8 v14, v3, -0x1

    aget-wide v14, v13, v14

    div-double/2addr v14, v8

    aput-wide v14, v12, v4

    .line 4
    aget-wide v13, v12, v4

    aget-wide v15, v12, v4

    mul-double v13, v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 6
    iget-object v4, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v14, v4, v3

    cmpl-double v16, v14, v6

    if-lez v16, :cond_2

    neg-double v12, v12

    .line 7
    :cond_2
    aget-wide v14, v4, v3

    mul-double v14, v14, v12

    sub-double/2addr v10, v14

    .line 8
    aget-wide v14, v4, v3

    sub-double/2addr v14, v12

    aput-wide v14, v4, v3

    move v4, v3

    .line 9
    :goto_3
    iget v14, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v4, v14, :cond_5

    move v14, v1

    move-wide v15, v6

    :goto_4
    if-lt v14, v3, :cond_3

    .line 10
    iget-object v5, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v18, v5, v14

    iget-object v5, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v5, v5, v14

    aget-wide v20, v5, v4

    mul-double v18, v18, v20

    add-double v15, v15, v18

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_3
    div-double/2addr v15, v10

    move v5, v3

    :goto_5
    if-gt v5, v1, :cond_4

    .line 11
    iget-object v14, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v14, v14, v5

    aget-wide v18, v14, v4

    iget-object v6, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v22, v6, v5

    mul-double v22, v22, v15

    sub-double v18, v18, v22

    aput-wide v18, v14, v4

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v6, 0x0

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-gt v5, v1, :cond_8

    move v4, v1

    const-wide/16 v6, 0x0

    :goto_7
    if-lt v4, v3, :cond_6

    .line 12
    iget-object v14, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v15, v14, v4

    iget-object v14, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v14, v14, v5

    aget-wide v17, v14, v4

    mul-double v15, v15, v17

    add-double/2addr v6, v15

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_6
    div-double/2addr v6, v10

    move v4, v3

    :goto_8
    if-gt v4, v1, :cond_7

    .line 13
    iget-object v14, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v14, v14, v5

    aget-wide v15, v14, v4

    iget-object v2, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v22, v2, v4

    mul-double v22, v22, v6

    sub-double v15, v15, v22

    aput-wide v15, v14, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    goto :goto_6

    .line 14
    :cond_8
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v4, v2, v3

    mul-double v4, v4, v8

    aput-wide v4, v2, v3

    .line 15
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v2, v2, v3

    add-int/lit8 v4, v3, -0x1

    mul-double v8, v8, v12

    aput-wide v8, v2, v4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    .line 16
    :goto_9
    iget v3, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v2, v3, :cond_d

    const/4 v3, 0x0

    .line 17
    :goto_a
    iget v5, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v3, v5, :cond_c

    .line 18
    iget-object v5, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v5, v5, v2

    if-ne v2, v3, :cond_b

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    :cond_b
    const-wide/16 v6, 0x0

    :goto_b
    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x1

    :goto_c
    if-lt v4, v2, :cond_12

    .line 19
    iget-object v3, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v3, v3, v4

    add-int/lit8 v5, v4, -0x1

    aget-wide v6, v3, v5

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_11

    add-int/lit8 v3, v4, 0x1

    :goto_d
    if-gt v3, v1, :cond_e

    .line 20
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->ort:[D

    iget-object v7, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v7, v7, v3

    aget-wide v10, v7, v5

    aput-wide v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_e
    move v3, v4

    :goto_e
    if-gt v3, v1, :cond_11

    move v6, v4

    move-wide v10, v8

    :goto_f
    if-gt v6, v1, :cond_f

    .line 21
    iget-object v7, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v12, v7, v6

    iget-object v7, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v7, v7, v6

    aget-wide v14, v7, v3

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 22
    :cond_f
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v12, v6, v4

    div-double/2addr v10, v12

    iget-object v6, v0, Ljama/EigenvalueDecomposition;->H:[[D

    aget-object v6, v6, v4

    aget-wide v12, v6, v5

    div-double/2addr v10, v12

    move v6, v4

    :goto_10
    if-gt v6, v1, :cond_10

    .line 23
    iget-object v7, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v3

    iget-object v14, v0, Ljama/EigenvalueDecomposition;->ort:[D

    aget-wide v15, v14, v6

    mul-double v15, v15, v10

    add-double/2addr v12, v15

    aput-wide v12, v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_11
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_12
    return-void
.end method

.method private tql2()V
    .locals 43

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 1
    :goto_0
    iget v3, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v2, v3, :cond_0

    .line 2
    iget-object v3, v0, Ljama/EigenvalueDecomposition;->e:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v5, v3, v2

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    sub-int/2addr v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const-wide/high16 v2, -0x3fb6000000000000L    # -52.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-wide v10, v4

    move-wide v12, v10

    const/4 v9, 0x0

    .line 5
    :goto_1
    iget v14, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v9, v14, :cond_9

    .line 6
    iget-object v14, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v15, v14, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    iget-object v8, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v17, v8, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    add-double v14, v14, v17

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move v8, v9

    .line 7
    :goto_2
    iget v14, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v8, v14, :cond_2

    .line 8
    iget-object v14, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v17, v14, v8

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double v17, v2, v10

    cmpg-double v19, v14, v17

    if-gtz v19, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-le v8, v9, :cond_8

    .line 9
    :goto_4
    iget-object v14, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v17, v14, v9

    add-int/lit8 v15, v9, 0x1

    .line 10
    aget-wide v19, v14, v15

    sub-double v19, v19, v17

    iget-object v14, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v21, v14, v9

    mul-double v21, v21, v6

    div-double v6, v19, v21

    move-wide/from16 v19, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move v3, v15

    .line 11
    invoke-static {v6, v7, v1, v2}, Ljama/a/a;->a(DD)D

    move-result-wide v14

    cmpg-double v22, v6, v4

    if-gez v22, :cond_3

    neg-double v14, v14

    .line 12
    :cond_3
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v25, v2, v9

    add-double/2addr v6, v14

    div-double v25, v25, v6

    aput-wide v25, v1, v9

    .line 13
    aget-wide v14, v2, v9

    mul-double v14, v14, v6

    aput-wide v14, v1, v3

    .line 14
    aget-wide v6, v1, v3

    .line 15
    aget-wide v14, v1, v9

    sub-double v17, v17, v14

    add-int/lit8 v1, v9, 0x2

    .line 16
    :goto_5
    iget v2, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v1, v2, :cond_4

    .line 17
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v14, v2, v1

    sub-double v14, v14, v17

    aput-wide v14, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-double v12, v12, v17

    .line 18
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v14, v1, v8

    .line 19
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v2, v1, v3

    add-int/lit8 v1, v8, -0x1

    move-wide/from16 v29, v4

    move-wide/from16 v27, v12

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v12, v29

    move-wide v4, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :goto_6
    if-lt v1, v9, :cond_6

    move/from16 v22, v8

    .line 20
    iget-object v8, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v23, v8, v1

    mul-double v23, v23, v14

    mul-double v29, v14, v4

    move-wide/from16 v31, v10

    .line 21
    aget-wide v10, v8, v1

    invoke-static {v4, v5, v10, v11}, Ljama/a/a;->a(DD)D

    move-result-wide v10

    .line 22
    iget-object v8, v0, Ljama/EigenvalueDecomposition;->e:[D

    add-int/lit8 v33, v1, 0x1

    mul-double v34, v12, v10

    aput-wide v34, v8, v33

    .line 23
    aget-wide v34, v8, v1

    div-double v34, v34, v10

    div-double/2addr v4, v10

    .line 24
    iget-object v8, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v10, v8, v1

    mul-double v10, v10, v4

    mul-double v36, v34, v23

    sub-double v10, v10, v36

    mul-double v23, v23, v4

    .line 25
    aget-wide v36, v8, v1

    mul-double v36, v36, v34

    add-double v23, v23, v36

    mul-double v23, v23, v34

    add-double v29, v29, v23

    aput-wide v29, v8, v33

    move-wide/from16 v23, v10

    const/4 v8, 0x0

    .line 26
    :goto_7
    iget v10, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v8, v10, :cond_5

    .line 27
    iget-object v10, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v11, v10, v8

    aget-wide v29, v11, v33

    .line 28
    aget-object v11, v10, v8

    aget-object v36, v10, v8

    aget-wide v37, v36, v1

    mul-double v37, v37, v34

    mul-double v39, v4, v29

    add-double v37, v37, v39

    aput-wide v37, v11, v33

    .line 29
    aget-object v11, v10, v8

    aget-object v10, v10, v8

    aget-wide v36, v10, v1

    mul-double v36, v36, v4

    mul-double v29, v29, v34

    sub-double v36, v36, v29

    aput-wide v36, v11, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v29, v12

    move/from16 v8, v22

    move-wide/from16 v10, v31

    move-wide/from16 v12, v34

    move-wide/from16 v41, v4

    move-wide/from16 v4, v23

    move-wide/from16 v23, v17

    move-wide/from16 v17, v14

    move-wide/from16 v14, v41

    goto :goto_6

    :cond_6
    move/from16 v22, v8

    move-wide/from16 v31, v10

    neg-double v4, v12

    mul-double v4, v4, v29

    mul-double v4, v4, v23

    mul-double v4, v4, v2

    .line 30
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v2, v1, v9

    mul-double v4, v4, v2

    div-double/2addr v4, v6

    mul-double v12, v12, v4

    .line 31
    aput-wide v12, v1, v9

    .line 32
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    mul-double v14, v14, v4

    aput-wide v14, v2, v9

    .line 33
    aget-wide v2, v1, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    mul-double v3, v19, v31

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_7

    move-wide/from16 v12, v27

    goto :goto_8

    :cond_7
    move-wide/from16 v2, v19

    move/from16 v8, v22

    move-wide/from16 v12, v27

    move-wide/from16 v10, v31

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    goto/16 :goto_4

    :cond_8
    move-wide/from16 v19, v2

    move-wide/from16 v31, v10

    .line 34
    :goto_8
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v2, v1, v9

    add-double/2addr v2, v12

    aput-wide v2, v1, v9

    .line 35
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->e:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v2

    move-wide/from16 v2, v19

    move-wide/from16 v10, v31

    const/4 v1, 0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    .line 36
    :goto_9
    iget v2, v0, Ljama/EigenvalueDecomposition;->n:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_d

    .line 37
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v4, v2, v1

    add-int/lit8 v2, v1, 0x1

    move v7, v1

    move v6, v2

    .line 38
    :goto_a
    iget v8, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v6, v8, :cond_b

    .line 39
    iget-object v8, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v9, v8, v6

    cmpg-double v11, v9, v4

    if-gez v11, :cond_a

    .line 40
    aget-wide v4, v8, v6

    move v7, v6

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    if-eq v7, v1, :cond_c

    .line 41
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v8, v6, v1

    aput-wide v8, v6, v7

    .line 42
    aput-wide v4, v6, v1

    const/4 v4, 0x0

    .line 43
    :goto_b
    iget v5, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v4, v5, :cond_c

    .line 44
    iget-object v5, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v6, v5, v4

    aget-wide v8, v6, v1

    .line 45
    aget-object v6, v5, v4

    aget-object v10, v5, v4

    aget-wide v11, v10, v7

    aput-wide v11, v6, v1

    .line 46
    aget-object v5, v5, v4

    aput-wide v8, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    move v1, v2

    goto :goto_9

    :cond_d
    return-void
.end method

.method private tred2()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v2, v3, :cond_0

    .line 2
    iget-object v4, v0, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v5, v0, Ljama/EigenvalueDecomposition;->V:[[D

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v5, v3

    aget-wide v5, v3, v2

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :goto_1
    const-wide/16 v4, 0x0

    if-lez v3, :cond_d

    move-wide v6, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    .line 3
    iget-object v8, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v9, v8, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    cmpl-double v2, v6, v4

    if-nez v2, :cond_2

    .line 4
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    iget-object v6, v0, Ljama/EigenvalueDecomposition;->d:[D

    add-int/lit8 v7, v3, -0x1

    aget-wide v8, v6, v7

    aput-wide v8, v2, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_c

    .line 5
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v8, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v9, v8, v7

    aget-wide v10, v9, v2

    aput-wide v10, v6, v2

    .line 6
    aget-object v6, v8, v3

    aput-wide v4, v6, v2

    .line 7
    aget-object v6, v8, v2

    aput-wide v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move-wide v8, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_3

    .line 8
    iget-object v10, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v11, v10, v2

    div-double/2addr v11, v6

    aput-wide v11, v10, v2

    .line 9
    aget-wide v11, v10, v2

    aget-wide v13, v10, v2

    mul-double v11, v11, v13

    add-double/2addr v8, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 10
    :cond_3
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    add-int/lit8 v10, v3, -0x1

    aget-wide v11, v2, v10

    .line 11
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    cmpl-double v2, v11, v4

    if-lez v2, :cond_4

    neg-double v13, v13

    .line 12
    :cond_4
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    mul-double v6, v6, v13

    aput-wide v6, v2, v3

    mul-double v6, v11, v13

    sub-double/2addr v8, v6

    .line 13
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    sub-double/2addr v11, v13

    aput-wide v11, v2, v10

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    .line 14
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->e:[D

    aput-wide v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_7

    .line 15
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v11, v6, v2

    .line 16
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v7, v6, v2

    aput-wide v11, v7, v3

    .line 17
    iget-object v7, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v13, v7, v2

    aget-object v6, v6, v2

    aget-wide v15, v6, v2

    mul-double v15, v15, v11

    add-double/2addr v13, v15

    add-int/lit8 v6, v2, 0x1

    move v7, v6

    :goto_7
    if-gt v7, v10, :cond_6

    .line 18
    iget-object v15, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v16, v15, v7

    aget-wide v17, v16, v2

    iget-object v1, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v19, v1, v7

    mul-double v17, v17, v19

    add-double v13, v13, v17

    .line 19
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v17, v1, v7

    aget-object v15, v15, v7

    aget-wide v19, v15, v2

    mul-double v19, v19, v11

    add-double v17, v17, v19

    aput-wide v17, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 20
    :cond_6
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->e:[D

    aput-wide v13, v1, v2

    move v2, v6

    goto :goto_6

    :cond_7
    move-wide v6, v4

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_8

    .line 21
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v11, v2, v1

    div-double/2addr v11, v8

    aput-wide v11, v2, v1

    .line 22
    aget-wide v11, v2, v1

    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v13, v2, v1

    mul-double v11, v11, v13

    add-double/2addr v6, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    add-double v1, v8, v8

    div-double/2addr v6, v1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_9

    .line 23
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v11, v2, v1

    iget-object v13, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v14, v13, v1

    mul-double v14, v14, v6

    sub-double/2addr v11, v14

    aput-wide v11, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_b

    .line 24
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v6, v2, v1

    .line 25
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v11, v2, v1

    move v2, v1

    :goto_b
    if-gt v2, v10, :cond_a

    .line 26
    iget-object v13, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v13, v13, v2

    aget-wide v14, v13, v1

    iget-object v4, v0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v19, v4, v2

    mul-double v19, v19, v6

    iget-object v4, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v21, v4, v2

    mul-double v21, v21, v11

    add-double v19, v19, v21

    sub-double v14, v14, v19

    aput-wide v14, v13, v1

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v4, 0x0

    goto :goto_b

    .line 27
    :cond_a
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v4, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v5, v4, v10

    aget-wide v6, v5, v1

    aput-wide v6, v2, v1

    .line 28
    aget-object v2, v4, v3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v4, 0x0

    goto :goto_a

    :cond_b
    move-wide v4, v8

    .line 29
    :cond_c
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->d:[D

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    .line 30
    :goto_c
    iget v2, v0, Ljama/EigenvalueDecomposition;->n:I

    add-int/lit8 v3, v2, -0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ge v1, v3, :cond_13

    .line 31
    iget-object v3, v0, Ljama/EigenvalueDecomposition;->V:[[D

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    aget-object v6, v3, v1

    aget-wide v7, v6, v1

    aput-wide v7, v2, v1

    .line 32
    aget-object v2, v3, v1

    aput-wide v4, v2, v1

    .line 33
    iget-object v2, v0, Ljama/EigenvalueDecomposition;->d:[D

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_d
    if-gt v2, v1, :cond_e

    .line 34
    iget-object v6, v0, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v7, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v3

    div-double/2addr v8, v4

    aput-wide v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_e
    const/4 v2, 0x0

    :goto_e
    if-gt v2, v1, :cond_11

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_f
    if-gt v6, v1, :cond_f

    .line 35
    iget-object v7, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v8, v7, v6

    aget-wide v9, v8, v3

    aget-object v7, v7, v6

    aget-wide v11, v7, v2

    mul-double v9, v9, v11

    add-double/2addr v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    :goto_10
    if-gt v6, v1, :cond_10

    .line 36
    iget-object v7, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v2

    iget-object v10, v0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v11, v10, v6

    mul-double v11, v11, v4

    sub-double/2addr v8, v11

    aput-wide v8, v7, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_11
    if-gt v2, v1, :cond_12

    .line 37
    iget-object v4, v0, Ljama/EigenvalueDecomposition;->V:[[D

    aget-object v4, v4, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_12
    move v1, v3

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    .line 38
    :goto_12
    iget v2, v0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v1, v2, :cond_14

    .line 39
    iget-object v3, v0, Ljama/EigenvalueDecomposition;->d:[D

    iget-object v6, v0, Ljama/EigenvalueDecomposition;->V:[[D

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v6, v7

    aget-wide v8, v7, v1

    aput-wide v8, v3, v1

    add-int/lit8 v2, v2, -0x1

    .line 40
    aget-object v2, v6, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_14
    const-wide/16 v6, 0x0

    .line 41
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->V:[[D

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    add-int/lit8 v2, v2, -0x1

    aput-wide v4, v1, v2

    .line 42
    iget-object v1, v0, Ljama/EigenvalueDecomposition;->e:[D

    const/4 v2, 0x0

    aput-wide v6, v1, v2

    return-void
.end method


# virtual methods
.method public getD()Ljama/Matrix;
    .locals 10

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/EigenvalueDecomposition;->n:I

    invoke-direct {v0, v1, v1}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/EigenvalueDecomposition;->n:I

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/EigenvalueDecomposition;->n:I

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, v1, v3

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_0
    aget-object v4, v1, v3

    iget-object v5, p0, Ljama/EigenvalueDecomposition;->d:[D

    aget-wide v8, v5, v3

    aput-wide v8, v4, v3

    .line 7
    iget-object v4, p0, Ljama/EigenvalueDecomposition;->e:[D

    aget-wide v8, v4, v3

    cmpl-double v5, v8, v6

    if-lez v5, :cond_1

    .line 8
    aget-object v5, v1, v3

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, v4, v3

    aput-wide v7, v5, v6

    goto :goto_2

    .line 9
    :cond_1
    aget-wide v8, v4, v3

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    .line 10
    aget-object v5, v1, v3

    add-int/lit8 v6, v3, -0x1

    aget-wide v7, v4, v3

    aput-wide v7, v5, v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getImagEigenvalues()[D
    .locals 1

    .line 1
    iget-object v0, p0, Ljama/EigenvalueDecomposition;->e:[D

    return-object v0
.end method

.method public getRealEigenvalues()[D
    .locals 1

    .line 1
    iget-object v0, p0, Ljama/EigenvalueDecomposition;->d:[D

    return-object v0
.end method

.method public getV()Ljama/Matrix;
    .locals 3

    .line 1
    new-instance v0, Ljama/Matrix;

    iget-object v1, p0, Ljama/EigenvalueDecomposition;->V:[[D

    iget v2, p0, Ljama/EigenvalueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v2}, Ljama/Matrix;-><init>([[DII)V

    return-object v0
.end method
