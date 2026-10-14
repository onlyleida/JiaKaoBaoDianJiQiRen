.class Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_1

    const/4 p3, 0x0

    .line 2
    :goto_0
    iget-object p4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v0, p4

    if-ge p3, v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v2, v0, p3

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v4, v4, p1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v0, v0, v1

    aget-wide v6, v0, p3

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object p1, p1, v1

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    array-length p3, p2

    invoke-static {p1, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v2, v0, p1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v0, v0, v1

    aget-wide v4, v0, p1

    mul-double v4, v4, p3

    sub-double/2addr v2, v4

    aput-wide v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object p1, p1, v1

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    array-length p3, p2

    invoke-static {p1, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;)V

    return-object v0
.end method
