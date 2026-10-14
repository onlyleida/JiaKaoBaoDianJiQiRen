.class public Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private finalTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private forward:Z

.field private index:I

.field private initialTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    return-void
.end method

.method private checkDimensionsEquality(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method private locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpg-double v0, v6, v4

    if-gez v0, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p1

    cmpl-double v0, p1, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    return v2

    .line 4
    :cond_2
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpl-double v0, v6, v4

    if-lez v0, :cond_3

    return v3

    .line 5
    :cond_3
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p1

    cmpg-double v0, p1, v4

    if-gez v0, :cond_4

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 6
    iget-object v3, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getStateDimension()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getStateDimension()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getNumberOfSecondaryStates()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getNumberOfSecondaryStates()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getNumberOfSecondaryStates()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 10
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/FieldODEState;->getSecondaryStateDimension(I)I

    move-result v5

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/ode/FieldODEState;->getSecondaryStateDimension(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->checkDimensionsEquality(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    iget-boolean v3, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 13
    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 14
    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 15
    invoke-interface {v3, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->getInitialTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 17
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-interface {v0, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_4

    .line 18
    :goto_1
    iget-object p1, p1, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 19
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 21
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    return-void

    .line 22
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->HOLE_BETWEEN_MODELS_TIME_RANGES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PROPAGATION_DIRECTION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getFinalTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getInitialTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 2
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-object v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 4
    iget-object v8, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 5
    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v10

    if-gtz v10, :cond_0

    .line 7
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 8
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    return-object v1

    .line 9
    :cond_0
    invoke-direct {v0, v1, v8}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 10
    iput v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 11
    invoke-interface {v8, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    sub-int v2, v7, v3

    const/4 v8, 0x5

    if-le v2, v8, :cond_7

    .line 12
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v8, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 13
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v8

    if-gez v8, :cond_2

    .line 14
    iget v7, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 15
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v8, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object v9, v2

    goto :goto_1

    :cond_2
    if-lez v8, :cond_6

    .line 16
    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 17
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object v4, v2

    :goto_1
    add-int v2, v3, v7

    .line 18
    div-int/lit8 v2, v2, 0x2

    .line 19
    iget-object v8, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    .line 20
    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 21
    invoke-interface {v8, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpg-double v10, v13, v15

    if-ltz v10, :cond_4

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    cmpg-double v12, v10, v15

    if-gez v12, :cond_3

    goto/16 :goto_2

    .line 22
    :cond_3
    invoke-interface {v9, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 23
    invoke-interface {v8, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 24
    invoke-interface {v9, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 25
    invoke-interface {v1, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 26
    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 27
    invoke-interface {v1, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 28
    invoke-interface {v8, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 29
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v10

    double-to-int v2, v10

    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto :goto_3

    .line 30
    :cond_4
    :goto_2
    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    :goto_3
    add-int/lit8 v2, v3, 0x1

    mul-int/lit8 v8, v3, 0x9

    add-int/2addr v8, v7

    .line 31
    div-int/lit8 v8, v8, 0xa

    invoke-static {v2, v8}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    add-int/lit8 v8, v7, -0x1

    mul-int/lit8 v10, v7, 0x9

    add-int/2addr v10, v3

    .line 32
    div-int/lit8 v10, v10, 0xa

    invoke-static {v8, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 33
    iget v10, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    if-ge v10, v2, :cond_5

    .line 34
    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto/16 :goto_0

    :cond_5
    if-le v10, v8, :cond_1

    .line 35
    iput v8, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto/16 :goto_0

    .line 36
    :cond_6
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    return-object v1

    .line 37
    :cond_7
    iput v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 38
    :goto_4
    iget v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    if-gt v2, v7, :cond_8

    iget-object v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->locatePoint(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)I

    move-result v2

    if-lez v2, :cond_8

    .line 39
    iget v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    goto :goto_4

    .line 40
    :cond_8
    iget-object v2, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    iget v3, v0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    return-object v1
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    :cond_1
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->initialTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iput-object p2, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->finalTime:Lorg/apache/commons/math3/RealFieldElement;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->forward:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->index:I

    .line 5
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ContinuousOutputFieldModel;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
