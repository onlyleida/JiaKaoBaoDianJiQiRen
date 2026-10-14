.class Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;
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

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 21

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v1

    .line 1
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, p1, v10

    if-gtz v7, :cond_0

    mul-double v3, p1, p3

    mul-double v10, p1, p1

    .line 2
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v10, v10, v12

    const/4 v7, 0x0

    .line 3
    :goto_0
    iget-object v12, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v13, v12

    if-ge v7, v13, :cond_1

    .line 4
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v14, v13, v9

    aget-wide v15, v14, v7

    .line 5
    aget-object v13, v13, v8

    aget-wide v17, v13, v7

    .line 6
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v19, v13, v7

    mul-double v13, v3, v15

    add-double v19, v19, v13

    mul-double v13, v10, v17

    add-double v19, v19, v13

    aput-wide v19, v12, v7

    .line 7
    iget-object v12, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v15, v15, v5

    mul-double v17, v17, v1

    add-double v15, v15, v17

    aput-wide v15, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    mul-double v10, p3, p1

    add-double v3, p1, v3

    mul-double v3, v3, p3

    const/4 v7, 0x0

    .line 8
    :goto_1
    iget-object v12, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v13, v12

    if-ge v7, v13, :cond_1

    .line 9
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v14, v13, v9

    aget-wide v15, v14, v7

    .line 10
    aget-object v13, v13, v8

    aget-wide v17, v13, v7

    .line 11
    iget-object v13, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v19, v13, v7

    mul-double v13, v10, v15

    add-double v19, v19, v13

    mul-double v13, v3, v17

    sub-double v19, v19, v13

    aput-wide v19, v12, v7

    .line 12
    iget-object v12, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v15, v15, v5

    mul-double v17, v17, v1

    add-double v15, v15, v17

    aput-wide v15, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V

    return-object v0
.end method
