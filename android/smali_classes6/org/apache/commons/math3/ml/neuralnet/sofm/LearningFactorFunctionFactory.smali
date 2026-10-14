.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .locals 10

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$1;-><init>(DDJ)V

    return-object v0

    .line 2
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public static quasiSigmoidDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
    .locals 10

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$2;-><init>(DDJ)V

    return-object v0

    .line 2
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method
