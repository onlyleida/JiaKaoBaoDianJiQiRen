.class public Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;
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
.field private final bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field private first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private forward:Z

.field private h:D

.field private final handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
            ")V"
        }
    .end annotation

    .line 3
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    .line 7
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 8
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 10
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    return-void
.end method

.method private doNormalizedStep(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;->handleStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Z)V

    return-void
.end method

.method private isNextInStep(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p1

    if-eqz v0, :cond_0

    cmpg-double v0, v3, p1

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    cmpl-double v0, v3, p1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 6
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
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    if-nez v0, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    mul-double v1, v1, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v2, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->isNextInStep(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 10
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->doNormalizedStep(Z)V

    .line 11
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 12
    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->isNextInStep(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    .line 14
    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double p2, v0, v4

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    :cond_4
    xor-int/lit8 p2, v2, 0x1

    .line 15
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->doNormalizedStep(Z)V

    if-eqz v2, :cond_5

    .line 16
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 17
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->doNormalizedStep(Z)V

    :cond_5
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method
