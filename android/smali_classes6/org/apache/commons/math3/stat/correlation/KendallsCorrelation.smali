.class public Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method private static sum(J)J
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    mul-long p0, p0, v0

    const-wide/16 v0, 0x2

    .line 1
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    .line 2
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 3
    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D

    move-result-wide v5

    .line 4
    invoke-interface {v1, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 5
    invoke-interface {v1, v4, v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 6
    invoke-interface {v1, v3, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 7
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public correlation([D[D)D
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_d

    .line 2
    array-length v2, v0

    add-int/lit8 v3, v2, -0x1

    int-to-long v3, v3

    .line 3
    invoke-static {v3, v4}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v3

    .line 4
    new-array v5, v2, [Lorg/apache/commons/math3/util/Pair;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_0

    .line 5
    new-instance v8, Lorg/apache/commons/math3/util/Pair;

    aget-wide v9, v0, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aget-wide v10, v1, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;

    move-object/from16 v7, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;-><init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 7
    aget-object v0, v5, v6

    const-wide/16 v10, 0x1

    move-wide v15, v10

    move-wide/from16 v19, v15

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    :goto_1
    if-ge v12, v2, :cond_3

    .line 8
    aget-object v21, v5, v12

    .line 9
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v1, v22

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-long/2addr v15, v10

    .line 10
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-long v19, v19, v10

    goto :goto_2

    :cond_1
    sub-long v19, v19, v10

    .line 11
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v0

    add-long v17, v17, v0

    move-wide/from16 v19, v10

    goto :goto_2

    :cond_2
    sub-long/2addr v15, v10

    .line 12
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v0

    add-long/2addr v13, v0

    sub-long v19, v19, v10

    .line 13
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v0

    add-long v17, v17, v0

    move-wide v15, v10

    move-wide/from16 v19, v15

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v21

    goto :goto_1

    :cond_3
    sub-long/2addr v15, v10

    .line 14
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v0

    add-long/2addr v13, v0

    sub-long v19, v19, v10

    .line 15
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v0

    add-long v17, v17, v0

    .line 16
    new-array v0, v2, [Lorg/apache/commons/math3/util/Pair;

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    :goto_3
    if-ge v1, v2, :cond_a

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_9

    add-int v15, v12, v1

    .line 17
    invoke-static {v15, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    add-int v10, v15, v1

    .line 18
    invoke-static {v10, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v11, v12

    move/from16 v21, v11

    move v6, v15

    :goto_5
    if-lt v11, v15, :cond_5

    if-ge v6, v10, :cond_4

    goto :goto_6

    :cond_4
    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v12, v6

    const/4 v6, 0x0

    const-wide/16 v10, 0x1

    goto :goto_4

    :cond_5
    :goto_6
    if-ge v11, v15, :cond_8

    if-ge v6, v10, :cond_7

    .line 19
    aget-object v24, v5, v11

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v7, v24

    check-cast v7, Ljava/lang/Double;

    aget-object v24, v5, v6

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v24

    move/from16 p2, v10

    move-object/from16 v10, v24

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v7, v10}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v7

    if-gtz v7, :cond_6

    .line 20
    aget-object v7, v5, v11

    aput-object v7, v0, v21

    goto :goto_7

    .line 21
    :cond_6
    aget-object v7, v5, v6

    aput-object v7, v0, v21

    add-int/lit8 v6, v6, 0x1

    sub-int v7, v15, v11

    move v10, v6

    int-to-long v6, v7

    add-long/2addr v8, v6

    move v6, v10

    goto :goto_8

    :cond_7
    move/from16 p2, v10

    .line 22
    aget-object v7, v5, v11

    aput-object v7, v0, v21

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_8
    move/from16 p2, v10

    .line 23
    aget-object v7, v5, v6

    aput-object v7, v0, v21

    add-int/lit8 v6, v6, 0x1

    :goto_8
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v7, p0

    move/from16 v10, p2

    goto :goto_5

    :cond_9
    shl-int/lit8 v1, v1, 0x1

    move-object/from16 v7, p0

    const/4 v6, 0x0

    const-wide/16 v10, 0x1

    move-object/from16 v25, v5

    move-object v5, v0

    move-object/from16 v0, v25

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 24
    aget-object v0, v5, v0

    const/4 v1, 0x1

    const-wide/16 v6, 0x1

    const-wide/16 v22, 0x0

    :goto_9
    if-ge v1, v2, :cond_c

    .line 25
    aget-object v10, v5, v1

    .line 26
    invoke-virtual {v10}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    goto :goto_a

    :cond_b
    const-wide/16 v11, 0x1

    sub-long/2addr v6, v11

    .line 27
    invoke-static {v6, v7}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v6

    add-long v22, v22, v6

    move-wide v6, v11

    :goto_a
    add-int/lit8 v1, v1, 0x1

    move-object v0, v10

    goto :goto_9

    :cond_c
    const-wide/16 v11, 0x1

    sub-long/2addr v6, v11

    .line 28
    invoke-static {v6, v7}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->sum(J)J

    move-result-wide v0

    add-long v22, v22, v0

    sub-long v0, v3, v13

    sub-long v5, v0, v22

    add-long v5, v5, v17

    const-wide/16 v10, 0x2

    mul-long v8, v8, v10

    sub-long/2addr v5, v8

    long-to-double v0, v0

    sub-long v3, v3, v22

    long-to-double v2, v3

    mul-double v0, v0, v2

    long-to-double v2, v5

    .line 29
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    return-wide v2

    .line 30
    :cond_d
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
