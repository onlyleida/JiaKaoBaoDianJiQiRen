.class Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[[D


# direct methods
.method constructor <init>([D)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    .line 3
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v3

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v1

    aget-wide v6, p1, v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x4
        0x4
        0x4
    .end array-data
.end method


# virtual methods
.method public value(DDD)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    cmpg-double v6, p1, v0

    if-ltz v6, :cond_5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, p1, v6

    if-gtz v8, :cond_5

    cmpg-double v8, p3, v0

    if-ltz v8, :cond_4

    cmpl-double v8, p3, v6

    if-gtz v8, :cond_4

    cmpg-double v8, p5, v0

    if-ltz v8, :cond_3

    cmpl-double v8, p5, v6

    if-gtz v8, :cond_3

    mul-double v8, p1, p1

    mul-double v10, v8, p1

    const/4 v3, 0x4

    new-array v5, v3, [D

    aput-wide v6, v5, v4

    aput-wide p1, v5, v2

    const/4 v12, 0x2

    aput-wide v8, v5, v12

    const/4 v8, 0x3

    aput-wide v10, v5, v8

    mul-double v9, p3, p3

    mul-double v13, v9, p3

    new-array v11, v3, [D

    aput-wide v6, v11, v4

    aput-wide p3, v11, v2

    aput-wide v9, v11, v12

    aput-wide v13, v11, v8

    mul-double v9, p5, p5

    mul-double v13, v9, p5

    new-array v15, v3, [D

    aput-wide v6, v15, v4

    aput-wide p5, v15, v2

    aput-wide v9, v15, v12

    aput-wide v13, v15, v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_0

    move-object/from16 v8, p0

    .line 2
    iget-object v9, v8, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    aget-object v9, v9, v2

    aget-object v9, v9, v6

    aget-wide v12, v9, v7

    aget-wide v9, v5, v2

    mul-double v12, v12, v9

    aget-wide v9, v11, v6

    mul-double v12, v12, v9

    aget-wide v9, v15, v7

    mul-double v12, v12, v9

    add-double/2addr v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    move-object/from16 v8, p0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p0

    return-wide v0

    :cond_3
    move-object/from16 v8, p0

    .line 3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v5, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_4
    move-object/from16 v8, p0

    .line 4
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v5, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_5
    move-object/from16 v8, p0

    .line 5
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v5, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
