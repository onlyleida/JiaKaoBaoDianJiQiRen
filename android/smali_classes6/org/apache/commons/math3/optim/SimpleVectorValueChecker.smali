.class public Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;
.super Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    if-lez p5, :cond_0

    .line 4
    iput p5, p0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    check-cast p3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->converged(ILorg/apache/commons/math3/optim/PointVectorValuePair;Lorg/apache/commons/math3/optim/PointVectorValuePair;)Z

    move-result p1

    return p1
.end method

.method public converged(ILorg/apache/commons/math3/optim/PointVectorValuePair;Lorg/apache/commons/math3/optim/PointVectorValuePair;)Z
    .locals 8

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;->maxIterationCount:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-lt p1, v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValueRef()[D

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValueRef()[D

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 6
    aget-wide v2, p1, v0

    .line 7
    aget-wide v4, p2, v0

    sub-double v6, v2, v4

    .line 8
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 9
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->getRelativeThreshold()D

    move-result-wide v4

    mul-double v2, v2, v4

    cmpl-double v4, v6, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->getAbsoluteThreshold()D

    move-result-wide v2

    cmpl-double v4, v6, v2

    if-lez v4, :cond_1

    return p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
