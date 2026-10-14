.class public Ljama/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private U:[[D

.field private V:[[D

.field private m:I

.field private n:I

.field private s:[D


# direct methods
.method public constructor <init>(Ljama/Matrix;)V
    .locals 39

    move-object/from16 v0, p0

    .line 1
    const-class v1, D

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getArrayCopy()[[D

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getRowDimension()I

    move-result v3

    iput v3, v0, Ljama/SingularValueDecomposition;->m:I

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getColumnDimension()I

    move-result v3

    iput v3, v0, Ljama/SingularValueDecomposition;->n:I

    .line 5
    iget v4, v0, Ljama/SingularValueDecomposition;->m:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget v4, v0, Ljama/SingularValueDecomposition;->m:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Ljama/SingularValueDecomposition;->n:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [D

    iput-object v4, v0, Ljama/SingularValueDecomposition;->s:[D

    .line 7
    iget v4, v0, Ljama/SingularValueDecomposition;->m:I

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v3, v7, v5

    const/4 v8, 0x0

    aput v4, v7, v8

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    iput-object v4, v0, Ljama/SingularValueDecomposition;->U:[[D

    .line 8
    iget v4, v0, Ljama/SingularValueDecomposition;->n:I

    new-array v7, v6, [I

    aput v4, v7, v5

    aput v4, v7, v8

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, v0, Ljama/SingularValueDecomposition;->V:[[D

    .line 9
    iget v1, v0, Ljama/SingularValueDecomposition;->n:I

    new-array v4, v1, [D

    .line 10
    iget v7, v0, Ljama/SingularValueDecomposition;->m:I

    new-array v9, v7, [D

    sub-int/2addr v7, v5

    .line 11
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget v7, v0, Ljama/SingularValueDecomposition;->n:I

    sub-int/2addr v7, v6

    iget v10, v0, Ljama/SingularValueDecomposition;->m:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v10, 0x0

    .line 13
    :goto_0
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    const-wide/16 v14, 0x0

    if-ge v10, v11, :cond_18

    if-ge v10, v1, :cond_4

    .line 14
    iget-object v11, v0, Ljama/SingularValueDecomposition;->s:[D

    aput-wide v14, v11, v10

    move v11, v10

    .line 15
    :goto_1
    iget v8, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v11, v8, :cond_0

    .line 16
    iget-object v8, v0, Ljama/SingularValueDecomposition;->s:[D

    move/from16 v17, v7

    aget-wide v6, v8, v10

    aget-object v18, v2, v11

    aget-wide v12, v18, v10

    invoke-static {v6, v7, v12, v13}, Ljama/a/a;->a(DD)D

    move-result-wide v6

    aput-wide v6, v8, v10

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v17

    const/4 v6, 0x2

    goto :goto_1

    :cond_0
    move/from16 v17, v7

    .line 17
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v7, v6, v10

    cmpl-double v11, v7, v14

    if-eqz v11, :cond_3

    .line 18
    aget-object v7, v2, v10

    aget-wide v11, v7, v10

    cmpg-double v7, v11, v14

    if-gez v7, :cond_1

    .line 19
    aget-wide v7, v6, v10

    neg-double v7, v7

    aput-wide v7, v6, v10

    :cond_1
    move v6, v10

    .line 20
    :goto_2
    iget v7, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v6, v7, :cond_2

    .line 21
    aget-object v7, v2, v6

    aget-wide v11, v7, v10

    iget-object v8, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v21, v8, v10

    div-double v11, v11, v21

    aput-wide v11, v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 22
    :cond_2
    aget-object v6, v2, v10

    aget-wide v7, v6, v10

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v11

    aput-wide v7, v6, v10

    .line 23
    :cond_3
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v7, v6, v10

    neg-double v7, v7

    aput-wide v7, v6, v10

    goto :goto_3

    :cond_4
    move/from16 v17, v7

    :goto_3
    add-int/lit8 v6, v10, 0x1

    move v7, v6

    .line 24
    :goto_4
    iget v8, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v7, v8, :cond_9

    if-ge v10, v1, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 25
    :goto_5
    iget-object v11, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v12, v11, v10

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    and-int/2addr v8, v11

    if-eqz v8, :cond_8

    move v8, v10

    move-wide v11, v14

    .line 26
    :goto_7
    iget v13, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v13, :cond_7

    .line 27
    aget-object v13, v2, v8

    aget-wide v21, v13, v10

    aget-object v13, v2, v8

    aget-wide v23, v13, v7

    mul-double v21, v21, v23

    add-double v11, v11, v21

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
    neg-double v11, v11

    .line 28
    aget-object v8, v2, v10

    aget-wide v21, v8, v10

    div-double v11, v11, v21

    move v8, v10

    .line 29
    :goto_8
    iget v13, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v13, :cond_8

    .line 30
    aget-object v13, v2, v8

    aget-wide v21, v13, v7

    aget-object v18, v2, v8

    aget-wide v23, v18, v10

    mul-double v23, v23, v11

    add-double v21, v21, v23

    aput-wide v21, v13, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 31
    :cond_8
    aget-object v8, v2, v10

    aget-wide v11, v8, v7

    aput-wide v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    if-ge v10, v1, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    and-int/2addr v7, v5

    if-eqz v7, :cond_b

    move v7, v10

    .line 32
    :goto_a
    iget v8, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v7, v8, :cond_b

    .line 33
    iget-object v8, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v8, v8, v7

    aget-object v11, v2, v7

    aget-wide v12, v11, v10

    aput-wide v12, v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_b
    move/from16 v7, v17

    if-ge v10, v7, :cond_17

    .line 34
    aput-wide v14, v4, v10

    move v8, v6

    .line 35
    :goto_b
    iget v11, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v8, v11, :cond_c

    .line 36
    aget-wide v11, v4, v10

    move/from16 v17, v6

    aget-wide v5, v4, v8

    invoke-static {v11, v12, v5, v6}, Ljama/a/a;->a(DD)D

    move-result-wide v5

    aput-wide v5, v4, v10

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    const/4 v5, 0x1

    goto :goto_b

    :cond_c
    move/from16 v17, v6

    .line 37
    aget-wide v5, v4, v10

    cmpl-double v8, v5, v14

    if-eqz v8, :cond_f

    .line 38
    aget-wide v5, v4, v17

    cmpg-double v8, v5, v14

    if-gez v8, :cond_d

    .line 39
    aget-wide v5, v4, v10

    neg-double v5, v5

    aput-wide v5, v4, v10

    :cond_d
    move/from16 v5, v17

    .line 40
    :goto_c
    iget v6, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v5, v6, :cond_e

    .line 41
    aget-wide v11, v4, v5

    aget-wide v21, v4, v10

    div-double v11, v11, v21

    aput-wide v11, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 42
    :cond_e
    aget-wide v5, v4, v17

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v11

    aput-wide v5, v4, v17

    .line 43
    :cond_f
    aget-wide v5, v4, v10

    neg-double v5, v5

    aput-wide v5, v4, v10

    .line 44
    iget v5, v0, Ljama/SingularValueDecomposition;->m:I

    move/from16 v6, v17

    if-ge v6, v5, :cond_10

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    :goto_d
    aget-wide v11, v4, v10

    cmpl-double v8, v11, v14

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    goto :goto_e

    :cond_11
    const/4 v8, 0x0

    :goto_e
    and-int/2addr v5, v8

    if-eqz v5, :cond_16

    move v5, v6

    .line 45
    :goto_f
    iget v8, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v5, v8, :cond_12

    .line 46
    aput-wide v14, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_12
    move v5, v6

    .line 47
    :goto_10
    iget v8, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v5, v8, :cond_14

    move v8, v6

    .line 48
    :goto_11
    iget v11, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v11, :cond_13

    .line 49
    aget-wide v11, v9, v8

    aget-wide v14, v4, v5

    aget-object v17, v2, v8

    aget-wide v18, v17, v5

    mul-double v14, v14, v18

    add-double/2addr v11, v14

    aput-wide v11, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_14
    move v5, v6

    .line 50
    :goto_12
    iget v8, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v5, v8, :cond_16

    .line 51
    aget-wide v11, v4, v5

    neg-double v11, v11

    aget-wide v14, v4, v6

    div-double/2addr v11, v14

    move v8, v6

    .line 52
    :goto_13
    iget v14, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v14, :cond_15

    .line 53
    aget-object v14, v2, v8

    aget-wide v17, v14, v5

    aget-wide v19, v9, v8

    mul-double v19, v19, v11

    add-double v17, v17, v19

    aput-wide v17, v14, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_16
    move v5, v6

    .line 54
    :goto_14
    iget v8, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v5, v8, :cond_17

    .line 55
    iget-object v8, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v8, v8, v5

    aget-wide v11, v4, v5

    aput-wide v11, v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_17
    move v10, v6

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 56
    :cond_18
    iget v5, v0, Ljama/SingularValueDecomposition;->n:I

    iget v6, v0, Ljama/SingularValueDecomposition;->m:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 57
    iget v6, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v1, v6, :cond_19

    .line 58
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-object v8, v2, v1

    aget-wide v9, v8, v1

    aput-wide v9, v6, v1

    .line 59
    :cond_19
    iget v6, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v6, v5, :cond_1a

    .line 60
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    add-int/lit8 v8, v5, -0x1

    aput-wide v14, v6, v8

    :cond_1a
    add-int/lit8 v6, v7, 0x1

    if-ge v6, v5, :cond_1b

    .line 61
    aget-object v2, v2, v7

    add-int/lit8 v6, v5, -0x1

    aget-wide v8, v2, v6

    aput-wide v8, v4, v7

    :cond_1b
    add-int/lit8 v2, v5, -0x1

    .line 62
    aput-wide v14, v4, v2

    move v6, v1

    :goto_15
    if-ge v6, v3, :cond_1d

    const/4 v8, 0x0

    .line 63
    :goto_16
    iget v9, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v9, :cond_1c

    .line 64
    iget-object v9, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v9, v9, v8

    aput-wide v14, v9, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 65
    :cond_1c
    iget-object v8, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v8, v8, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1d
    const/4 v6, 0x1

    sub-int/2addr v1, v6

    :goto_17
    if-ltz v1, :cond_25

    .line 66
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v8, v6, v1

    cmpl-double v6, v8, v14

    if-eqz v6, :cond_22

    add-int/lit8 v6, v1, 0x1

    :goto_18
    if-ge v6, v3, :cond_20

    move v8, v1

    move-wide v9, v14

    .line 67
    :goto_19
    iget v11, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v11, :cond_1e

    .line 68
    iget-object v11, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v12, v11, v8

    aget-wide v17, v12, v1

    aget-object v11, v11, v8

    aget-wide v21, v11, v6

    mul-double v17, v17, v21

    add-double v9, v9, v17

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_1e
    neg-double v8, v9

    .line 69
    iget-object v10, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v10, v10, v1

    aget-wide v11, v10, v1

    div-double/2addr v8, v11

    move v10, v1

    .line 70
    :goto_1a
    iget v11, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v10, v11, :cond_1f

    .line 71
    iget-object v11, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v12, v11, v10

    aget-wide v17, v12, v6

    aget-object v11, v11, v10

    aget-wide v21, v11, v1

    mul-double v21, v21, v8

    add-double v17, v17, v21

    aput-wide v17, v12, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_20
    move v6, v1

    .line 72
    :goto_1b
    iget v8, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v6, v8, :cond_21

    .line 73
    iget-object v8, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v9, v8, v6

    aget-object v8, v8, v6

    aget-wide v10, v8, v1

    neg-double v10, v10

    aput-wide v10, v9, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 74
    :cond_21
    iget-object v6, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v8, v6, v1

    aget-object v6, v6, v1

    aget-wide v9, v6, v1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v11

    aput-wide v9, v8, v1

    const/4 v6, 0x0

    :goto_1c
    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_24

    .line 75
    iget-object v8, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v8, v8, v6

    aput-wide v14, v8, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_22
    const/4 v6, 0x0

    .line 76
    :goto_1d
    iget v8, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v6, v8, :cond_23

    .line 77
    iget-object v8, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v8, v8, v6

    aput-wide v14, v8, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 78
    :cond_23
    iget-object v6, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v6, v6, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v1

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_17

    .line 79
    :cond_25
    iget v1, v0, Ljama/SingularValueDecomposition;->n:I

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    :goto_1e
    if-ltz v1, :cond_2c

    if-ge v1, v7, :cond_26

    const/4 v6, 0x1

    goto :goto_1f

    :cond_26
    const/4 v6, 0x0

    .line 80
    :goto_1f
    aget-wide v8, v4, v1

    cmpl-double v10, v8, v14

    if-eqz v10, :cond_27

    const/4 v8, 0x1

    goto :goto_20

    :cond_27
    const/4 v8, 0x0

    :goto_20
    and-int/2addr v6, v8

    if-eqz v6, :cond_2a

    add-int/lit8 v6, v1, 0x1

    move v8, v6

    :goto_21
    if-ge v8, v3, :cond_2a

    move v9, v6

    move-wide v10, v14

    .line 81
    :goto_22
    iget v12, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v9, v12, :cond_28

    .line 82
    iget-object v12, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v17, v12, v9

    aget-wide v21, v17, v1

    aget-object v12, v12, v9

    aget-wide v17, v12, v8

    mul-double v21, v21, v17

    add-double v10, v10, v21

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_28
    neg-double v9, v10

    .line 83
    iget-object v11, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v11, v11, v6

    aget-wide v17, v11, v1

    div-double v9, v9, v17

    move v11, v6

    .line 84
    :goto_23
    iget v12, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v11, v12, :cond_29

    .line 85
    iget-object v12, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v17, v12, v11

    aget-wide v21, v17, v8

    aget-object v12, v12, v11

    aget-wide v23, v12, v1

    mul-double v23, v23, v9

    add-double v21, v21, v23

    aput-wide v21, v17, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_2a
    const/4 v6, 0x0

    .line 86
    :goto_24
    iget v8, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v6, v8, :cond_2b

    .line 87
    iget-object v8, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v8, v8, v6

    aput-wide v14, v8, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 88
    :cond_2b
    iget-object v6, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v6, v6, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v6, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_2c
    const-wide/high16 v6, -0x3fb6000000000000L    # -52.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 89
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v10, -0x3f71d00000000000L    # -966.0

    .line 90
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    :goto_25
    if-lez v5, :cond_4e

    add-int/lit8 v1, v5, -0x2

    move v3, v1

    :goto_26
    const/4 v12, -0x1

    if-lt v3, v12, :cond_2f

    if-ne v3, v12, :cond_2d

    goto :goto_27

    .line 91
    :cond_2d
    aget-wide v17, v4, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    iget-object v12, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v19, v12, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    iget-object v12, v0, Ljama/SingularValueDecomposition;->s:[D

    add-int/lit8 v21, v3, 0x1

    aget-wide v21, v12, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    add-double v19, v19, v21

    mul-double v19, v19, v6

    add-double v19, v10, v19

    cmpg-double v12, v17, v19

    if-gtz v12, :cond_2e

    .line 92
    aput-wide v14, v4, v3

    goto :goto_27

    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    :cond_2f
    :goto_27
    const/4 v12, 0x3

    if-ne v3, v1, :cond_30

    const/4 v8, 0x1

    const/4 v13, 0x4

    goto :goto_2c

    :cond_30
    add-int/lit8 v8, v5, -0x1

    move v9, v8

    :goto_28
    if-lt v9, v3, :cond_35

    if-ne v9, v3, :cond_31

    goto :goto_2b

    :cond_31
    if-eq v9, v5, :cond_32

    .line 93
    aget-wide v20, v4, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    goto :goto_29

    :cond_32
    move-wide/from16 v20, v14

    :goto_29
    add-int/lit8 v13, v3, 0x1

    if-eq v9, v13, :cond_33

    add-int/lit8 v13, v9, -0x1

    aget-wide v23, v4, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    goto :goto_2a

    :cond_33
    move-wide/from16 v23, v14

    :goto_2a
    add-double v20, v20, v23

    .line 94
    iget-object v13, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v23, v13, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    mul-double v20, v20, v6

    add-double v20, v10, v20

    cmpg-double v13, v23, v20

    if-gtz v13, :cond_34

    .line 95
    iget-object v13, v0, Ljama/SingularValueDecomposition;->s:[D

    aput-wide v14, v13, v9

    goto :goto_2b

    :cond_34
    add-int/lit8 v9, v9, -0x1

    goto :goto_28

    :cond_35
    :goto_2b
    if-ne v9, v3, :cond_36

    const/4 v8, 0x1

    const/4 v13, 0x3

    goto :goto_2c

    :cond_36
    if-ne v9, v8, :cond_37

    const/4 v8, 0x1

    const/4 v13, 0x1

    goto :goto_2c

    :cond_37
    move v3, v9

    const/4 v8, 0x1

    const/4 v13, 0x2

    :goto_2c
    add-int/2addr v3, v8

    if-eq v13, v8, :cond_4a

    const/4 v8, 0x2

    if-eq v13, v8, :cond_48

    if-eq v13, v12, :cond_3f

    const/4 v12, 0x4

    if-eq v13, v12, :cond_38

    goto/16 :goto_33

    .line 96
    :cond_38
    iget-object v1, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v12, v1, v3

    cmpg-double v16, v12, v14

    if-gtz v16, :cond_3a

    .line 97
    aget-wide v12, v1, v3

    cmpg-double v16, v12, v14

    if-gez v16, :cond_39

    aget-wide v12, v1, v3

    neg-double v12, v12

    goto :goto_2d

    :cond_39
    move-wide v12, v14

    :goto_2d
    aput-wide v12, v1, v3

    const/4 v1, 0x0

    :goto_2e
    if-gt v1, v2, :cond_3a

    .line 98
    iget-object v12, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v13, v12, v1

    aget-object v12, v12, v1

    aget-wide v8, v12, v3

    neg-double v8, v8

    aput-wide v8, v13, v3

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x2

    goto :goto_2e

    :cond_3a
    :goto_2f
    if-ge v3, v2, :cond_3e

    .line 99
    iget-object v1, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v8, v1, v3

    add-int/lit8 v12, v3, 0x1

    aget-wide v20, v1, v12

    cmpl-double v13, v8, v20

    if-ltz v13, :cond_3b

    goto :goto_32

    .line 100
    :cond_3b
    aget-wide v8, v1, v3

    .line 101
    aget-wide v20, v1, v12

    aput-wide v20, v1, v3

    .line 102
    aput-wide v8, v1, v12

    .line 103
    iget v1, v0, Ljama/SingularValueDecomposition;->n:I

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    if-ge v3, v1, :cond_3c

    const/4 v1, 0x0

    .line 104
    :goto_30
    iget v8, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v1, v8, :cond_3c

    .line 105
    iget-object v8, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v9, v8, v1

    aget-wide v20, v9, v12

    aget-object v9, v8, v1

    aget-object v17, v8, v1

    aget-wide v22, v17, v3

    aput-wide v22, v9, v12

    aget-object v8, v8, v1

    aput-wide v20, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 106
    :cond_3c
    iget v1, v0, Ljama/SingularValueDecomposition;->m:I

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    if-ge v3, v1, :cond_3d

    const/4 v1, 0x0

    .line 107
    :goto_31
    iget v8, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v1, v8, :cond_3d

    .line 108
    iget-object v8, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v9, v8, v1

    aget-wide v20, v9, v12

    aget-object v9, v8, v1

    aget-object v17, v8, v1

    aget-wide v22, v17, v3

    aput-wide v22, v9, v12

    aget-object v8, v8, v1

    aput-wide v20, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_3d
    move v3, v12

    goto :goto_2f

    :cond_3e
    :goto_32
    add-int/lit8 v5, v5, -0x1

    :goto_33
    move/from16 v24, v2

    move-object/from16 v32, v4

    move-wide/from16 v30, v6

    move-wide/from16 v26, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    goto/16 :goto_3e

    .line 109
    :cond_3f
    iget-object v8, v0, Ljama/SingularValueDecomposition;->s:[D

    add-int/lit8 v9, v5, -0x1

    aget-wide v20, v8, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    iget-object v12, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v20, v12, v1

    move v12, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    aget-wide v13, v4, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iget-object v13, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v14, v13, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    aget-wide v13, v4, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 110
    iget-object v13, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v14, v13, v12

    div-double/2addr v14, v8

    .line 111
    aget-wide v20, v13, v1

    div-double v20, v20, v8

    .line 112
    aget-wide v24, v4, v1

    div-double v24, v24, v8

    .line 113
    aget-wide v26, v13, v3

    div-double v26, v26, v8

    .line 114
    aget-wide v28, v4, v3

    div-double v28, v28, v8

    add-double v8, v20, v14

    sub-double v20, v20, v14

    mul-double v8, v8, v20

    mul-double v20, v24, v24

    add-double v8, v8, v20

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v8, v8, v18

    mul-double v24, v24, v14

    mul-double v24, v24, v24

    const-wide/16 v20, 0x0

    cmpl-double v13, v8, v20

    if-eqz v13, :cond_40

    const/4 v13, 0x1

    goto :goto_34

    :cond_40
    const/4 v13, 0x0

    :goto_34
    cmpl-double v22, v24, v20

    if-eqz v22, :cond_41

    const/16 v22, 0x1

    goto :goto_35

    :cond_41
    const/16 v22, 0x0

    :goto_35
    or-int v13, v13, v22

    if-eqz v13, :cond_43

    mul-double v22, v8, v8

    add-double v22, v22, v24

    move-wide/from16 v30, v6

    .line 115
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    cmpg-double v13, v8, v20

    if-gez v13, :cond_42

    neg-double v6, v6

    :cond_42
    add-double/2addr v8, v6

    div-double v6, v24, v8

    goto :goto_36

    :cond_43
    move-wide/from16 v30, v6

    const-wide/16 v6, 0x0

    :goto_36
    add-double v8, v26, v14

    sub-double v13, v26, v14

    mul-double v8, v8, v13

    add-double/2addr v8, v6

    mul-double v26, v26, v28

    move v13, v3

    move-wide/from16 v6, v26

    :goto_37
    if-ge v13, v12, :cond_47

    .line 116
    invoke-static {v8, v9, v6, v7}, Ljama/a/a;->a(DD)D

    move-result-wide v14

    div-double/2addr v8, v14

    div-double/2addr v6, v14

    if-eq v13, v3, :cond_44

    add-int/lit8 v20, v13, -0x1

    .line 117
    aput-wide v14, v4, v20

    .line 118
    :cond_44
    iget-object v14, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v20, v14, v13

    mul-double v20, v20, v8

    aget-wide v24, v4, v13

    mul-double v24, v24, v6

    move-wide/from16 v26, v10

    add-double v10, v20, v24

    .line 119
    aget-wide v20, v4, v13

    mul-double v20, v20, v8

    aget-wide v24, v14, v13

    mul-double v24, v24, v6

    sub-double v20, v20, v24

    aput-wide v20, v4, v13

    add-int/lit8 v15, v13, 0x1

    .line 120
    aget-wide v20, v14, v15

    move/from16 v24, v2

    move/from16 v25, v3

    mul-double v2, v6, v20

    .line 121
    aget-wide v20, v14, v15

    mul-double v20, v20, v8

    aput-wide v20, v14, v15

    move/from16 v20, v12

    const/4 v14, 0x0

    .line 122
    :goto_38
    iget v12, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v14, v12, :cond_45

    .line 123
    iget-object v12, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v21, v12, v14

    aget-wide v28, v21, v13

    mul-double v28, v28, v8

    aget-object v21, v12, v14

    aget-wide v32, v21, v15

    mul-double v32, v32, v6

    add-double v28, v28, v32

    .line 124
    aget-object v21, v12, v14

    move-object/from16 v32, v4

    move/from16 v33, v5

    neg-double v4, v6

    aget-object v34, v12, v14

    aget-wide v35, v34, v13

    mul-double v4, v4, v35

    aget-object v34, v12, v14

    aget-wide v35, v34, v15

    mul-double v35, v35, v8

    add-double v4, v4, v35

    aput-wide v4, v21, v15

    .line 125
    aget-object v4, v12, v14

    aput-wide v28, v4, v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v32

    move/from16 v5, v33

    goto :goto_38

    :cond_45
    move-object/from16 v32, v4

    move/from16 v33, v5

    .line 126
    invoke-static {v10, v11, v2, v3}, Ljama/a/a;->a(DD)D

    move-result-wide v4

    div-double/2addr v10, v4

    div-double/2addr v2, v4

    .line 127
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    aput-wide v4, v6, v13

    .line 128
    aget-wide v4, v32, v13

    mul-double v4, v4, v10

    aget-wide v7, v6, v15

    mul-double v7, v7, v2

    add-double v8, v4, v7

    neg-double v4, v2

    .line 129
    aget-wide v28, v32, v13

    mul-double v28, v28, v4

    aget-wide v34, v6, v15

    mul-double v34, v34, v10

    add-double v28, v28, v34

    aput-wide v28, v6, v15

    .line 130
    aget-wide v6, v32, v15

    mul-double v6, v6, v2

    .line 131
    aget-wide v28, v32, v15

    mul-double v28, v28, v10

    aput-wide v28, v32, v15

    .line 132
    iget v12, v0, Ljama/SingularValueDecomposition;->m:I

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    if-ge v13, v12, :cond_46

    const/4 v12, 0x0

    .line 133
    :goto_39
    iget v14, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v12, v14, :cond_46

    .line 134
    iget-object v14, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v21, v14, v12

    aget-wide v28, v21, v13

    mul-double v28, v28, v10

    aget-object v21, v14, v12

    aget-wide v34, v21, v15

    mul-double v34, v34, v2

    add-double v28, v28, v34

    .line 135
    aget-object v21, v14, v12

    aget-object v34, v14, v12

    aget-wide v35, v34, v13

    mul-double v35, v35, v4

    aget-object v34, v14, v12

    aget-wide v37, v34, v15

    mul-double v37, v37, v10

    add-double v35, v35, v37

    aput-wide v35, v21, v15

    .line 136
    aget-object v14, v14, v12

    aput-wide v28, v14, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_39

    :cond_46
    move v13, v15

    move/from16 v12, v20

    move/from16 v2, v24

    move/from16 v3, v25

    move-wide/from16 v10, v26

    move-object/from16 v4, v32

    move/from16 v5, v33

    goto/16 :goto_37

    :cond_47
    move/from16 v24, v2

    move-object/from16 v32, v4

    move/from16 v33, v5

    move-wide/from16 v26, v10

    .line 137
    aput-wide v8, v32, v1

    goto/16 :goto_3e

    :cond_48
    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v32, v4

    move/from16 v33, v5

    move-wide/from16 v30, v6

    move-wide/from16 v26, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    add-int/lit8 v3, v25, -0x1

    .line 138
    aget-wide v1, v32, v3

    const-wide/16 v4, 0x0

    .line 139
    aput-wide v4, v32, v3

    move/from16 v4, v25

    move/from16 v5, v33

    :goto_3a
    if-ge v4, v5, :cond_4d

    .line 140
    iget-object v6, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v7, v6, v4

    invoke-static {v7, v8, v1, v2}, Ljama/a/a;->a(DD)D

    move-result-wide v6

    .line 141
    iget-object v8, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v9, v8, v4

    div-double/2addr v9, v6

    div-double/2addr v1, v6

    .line 142
    aput-wide v6, v8, v4

    neg-double v6, v1

    .line 143
    aget-wide v11, v32, v4

    mul-double v11, v11, v6

    .line 144
    aget-wide v13, v32, v4

    mul-double v13, v13, v9

    aput-wide v13, v32, v4

    const/4 v8, 0x0

    .line 145
    :goto_3b
    iget v13, v0, Ljama/SingularValueDecomposition;->m:I

    if-ge v8, v13, :cond_49

    .line 146
    iget-object v13, v0, Ljama/SingularValueDecomposition;->U:[[D

    aget-object v14, v13, v8

    aget-wide v20, v14, v4

    mul-double v20, v20, v9

    aget-object v14, v13, v8

    aget-wide v28, v14, v3

    mul-double v28, v28, v1

    add-double v20, v20, v28

    .line 147
    aget-object v14, v13, v8

    aget-object v15, v13, v8

    aget-wide v28, v15, v4

    mul-double v28, v28, v6

    aget-object v15, v13, v8

    aget-wide v33, v15, v3

    mul-double v33, v33, v9

    add-double v28, v28, v33

    aput-wide v28, v14, v3

    .line 148
    aget-object v13, v13, v8

    aput-wide v20, v13, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_49
    add-int/lit8 v4, v4, 0x1

    move-wide v1, v11

    goto :goto_3a

    :cond_4a
    move/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v32, v4

    move-wide/from16 v30, v6

    move-wide/from16 v26, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 149
    aget-wide v2, v32, v1

    const-wide/16 v6, 0x0

    .line 150
    aput-wide v6, v32, v1

    move/from16 v4, v25

    :goto_3c
    if-lt v1, v4, :cond_4d

    .line 151
    iget-object v8, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v9, v8, v1

    invoke-static {v9, v10, v2, v3}, Ljama/a/a;->a(DD)D

    move-result-wide v8

    .line 152
    iget-object v10, v0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v11, v10, v1

    div-double/2addr v11, v8

    div-double v13, v2, v8

    .line 153
    aput-wide v8, v10, v1

    if-eq v1, v4, :cond_4b

    neg-double v2, v13

    add-int/lit8 v8, v1, -0x1

    .line 154
    aget-wide v9, v32, v8

    mul-double v2, v2, v9

    .line 155
    aget-wide v9, v32, v8

    mul-double v9, v9, v11

    aput-wide v9, v32, v8

    :cond_4b
    const/4 v8, 0x0

    .line 156
    :goto_3d
    iget v9, v0, Ljama/SingularValueDecomposition;->n:I

    if-ge v8, v9, :cond_4c

    .line 157
    iget-object v9, v0, Ljama/SingularValueDecomposition;->V:[[D

    aget-object v10, v9, v8

    aget-wide v20, v10, v1

    mul-double v20, v20, v11

    aget-object v10, v9, v8

    add-int/lit8 v15, v5, -0x1

    aget-wide v22, v10, v15

    mul-double v22, v22, v13

    add-double v20, v20, v22

    .line 158
    aget-object v10, v9, v8

    neg-double v6, v13

    aget-object v25, v9, v8

    aget-wide v28, v25, v1

    mul-double v6, v6, v28

    aget-object v25, v9, v8

    aget-wide v28, v25, v15

    mul-double v28, v28, v11

    add-double v6, v6, v28

    aput-wide v6, v10, v15

    .line 159
    aget-object v6, v9, v8

    aput-wide v20, v6, v1

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v6, 0x0

    goto :goto_3d

    :cond_4c
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v6, 0x0

    goto :goto_3c

    :cond_4d
    :goto_3e
    move-wide/from16 v8, v18

    move/from16 v2, v24

    move-wide/from16 v10, v26

    move-wide/from16 v6, v30

    move-object/from16 v4, v32

    const-wide/16 v14, 0x0

    goto/16 :goto_25

    :cond_4e
    return-void
.end method


# virtual methods
.method public cond()D
    .locals 5

    .line 1
    iget-object v0, p0, Ljama/SingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget v3, p0, Ljama/SingularValueDecomposition;->m:I

    iget v4, p0, Ljama/SingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v0, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getS()Ljama/Matrix;
    .locals 8

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/SingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v1}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/SingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/SingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_0
    aget-object v4, v1, v3

    iget-object v5, p0, Ljama/SingularValueDecomposition;->s:[D

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    .line 1
    iget-object v0, p0, Ljama/SingularValueDecomposition;->s:[D

    return-object v0
.end method

.method public getU()Ljama/Matrix;
    .locals 5

    .line 1
    new-instance v0, Ljama/Matrix;

    iget-object v1, p0, Ljama/SingularValueDecomposition;->U:[[D

    iget v2, p0, Ljama/SingularValueDecomposition;->m:I

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Ljama/SingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljama/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public getV()Ljama/Matrix;
    .locals 3

    .line 1
    new-instance v0, Ljama/Matrix;

    iget-object v1, p0, Ljama/SingularValueDecomposition;->V:[[D

    iget v2, p0, Ljama/SingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v2}, Ljama/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public norm2()D
    .locals 3

    .line 1
    iget-object v0, p0, Ljama/SingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public rank()I
    .locals 8

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fb6000000000000L    # -52.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 2
    iget v2, p0, Ljama/SingularValueDecomposition;->m:I

    iget v3, p0, Ljama/SingularValueDecomposition;->n:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Ljama/SingularValueDecomposition;->s:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    mul-double v2, v2, v6

    mul-double v2, v2, v0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Ljama/SingularValueDecomposition;->s:[D

    array-length v4, v1

    if-ge v5, v4, :cond_1

    .line 4
    aget-wide v6, v1, v5

    cmpl-double v1, v6, v2

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
