.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessFunction"
.end annotation


# instance fields
.field private final isRepairMode:Z

.field final synthetic this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object p0

    return-object p0
.end method

.method private penalty([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 2
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-double v0, v0

    :goto_1
    return-wide v0
.end method

.method private repair([D)[D
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 3
    array-length v2, p1

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 5
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 6
    aget-wide v4, v0, v3

    aput-wide v4, v2, v3

    goto :goto_1

    .line 7
    :cond_0
    aget-wide v4, p1, v3

    aget-wide v6, v1, v3

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 8
    aget-wide v4, v1, v3

    aput-wide v4, v2, v3

    goto :goto_1

    .line 9
    :cond_1
    aget-wide v4, p1, v3

    aput-wide v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public isFeasible([D)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 4
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    return v2

    .line 5
    :cond_0
    aget-wide v4, p1, v3

    aget-wide v6, v1, v3

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isRepairMode:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->penalty([D[D)D

    move-result-wide v3

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 6
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-double v1, v1

    .line 7
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->this$0:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    neg-double v3, v3

    .line 8
    :goto_2
    new-instance p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;-><init>(DD)V

    return-object p1
.end method
