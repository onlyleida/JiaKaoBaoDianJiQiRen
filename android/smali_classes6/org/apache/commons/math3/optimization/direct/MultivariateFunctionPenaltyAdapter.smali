.class public Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private final lower:[D

.field private final offset:D

.field private final scale:[D

.field private final upper:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[DD[D)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p6}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_3

    .line 6
    array-length v0, p2

    array-length v1, p6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 8
    aget-wide v1, p3, v0

    aget-wide v3, p2, v0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    aget-wide p4, p3, v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aget-wide p4, p2, v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p1, p3, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 10
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 11
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    .line 12
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    .line 13
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->offset:D

    .line 14
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    return-void

    .line 15
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p3, p6

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p3, p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method


# virtual methods
.method public value([D)D
    .locals 13

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 2
    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v4, v3, v0

    cmpg-double v3, v1, v4

    if-ltz v3, :cond_1

    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v4, v3, v0

    cmpl-double v3, v1, v4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 3
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->scale:[D

    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 4
    aget-wide v6, p1, v0

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->lower:[D

    aget-wide v9, v8, v0

    cmpg-double v11, v6, v9

    if-gez v11, :cond_2

    .line 5
    aget-wide v6, v5, v0

    aget-wide v9, v8, v0

    aget-wide v11, p1, v0

    :goto_3
    sub-double/2addr v9, v11

    mul-double v6, v6, v9

    goto :goto_4

    .line 6
    :cond_2
    aget-wide v6, p1, v0

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->upper:[D

    aget-wide v9, v8, v0

    cmpl-double v11, v6, v9

    if-lez v11, :cond_3

    .line 7
    aget-wide v6, v5, v0

    aget-wide v9, p1, v0

    aget-wide v11, v8, v0

    goto :goto_3

    :cond_3
    move-wide v6, v1

    .line 8
    :goto_4
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9
    :cond_4
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->offset:D

    add-double/2addr v0, v3

    return-wide v0

    .line 10
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionPenaltyAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method
