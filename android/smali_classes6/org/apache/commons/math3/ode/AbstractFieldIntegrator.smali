.class public abstract Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNCTION_VALUE_ACCURACY:D = 1.0E-15

.field private static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-14


# instance fields
.field private transient equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;"
        }
    .end annotation
.end field

.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/FieldEventState<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private isLastStep:Z

.field private final name:Ljava/lang/String;

.field private resetOccurred:Z

.field private statesInitialized:Z

.field private stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private stepSize:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->name:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 9
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
            "TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 5
    invoke-virtual {v4, p1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->isForward()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 8
    :goto_1
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;

    invoke-direct {v5, p0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;I)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 9
    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 10
    invoke-virtual {v5, p1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_d

    .line 13
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 16
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 17
    invoke-virtual {p1, v0, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 19
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 20
    iget-boolean v8, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stop()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    goto :goto_4

    .line 21
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 22
    iget-boolean v8, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    invoke-interface {v7, p1, v8}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V

    goto :goto_7

    .line 23
    :cond_8
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-eqz v0, :cond_9

    return-object v2

    .line 24
    :cond_9
    iput-boolean v5, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    .line 25
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 26
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->reset(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 27
    iget-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    .line 28
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    .line 29
    iput-boolean v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    .line 30
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapStateAndDerivative(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    return-object p1

    .line 31
    :cond_b
    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object p1

    .line 32
    invoke-virtual {v6, p1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 33
    invoke-interface {v4, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v0, v2

    goto/16 :goto_3

    .line 34
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 35
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 36
    iget-boolean v4, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-nez v4, :cond_f

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->stop()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v2, 0x1

    :goto_a
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    goto :goto_8

    .line 37
    :cond_10
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    if-nez v0, :cond_12

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v8

    cmpg-double p2, v6, v8

    if-gtz p2, :cond_11

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :cond_12
    :goto_b
    iput-boolean v3, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    .line 38
    iget-object p2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 39
    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    invoke-interface {v0, p1, v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V

    goto :goto_c

    :cond_13
    return-object v1
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;DDI)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x5

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V

    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DDILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;DDI",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v9, Lorg/apache/commons/math3/ode/events/FieldEventState;

    iget-object v2, v0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-wide v3, p4

    invoke-interface {v2, p4, p5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object v2, v9

    move-object v3, p1

    move-wide v4, p2

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/ode/events/FieldEventState;-><init>(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DLorg/apache/commons/math3/RealFieldElement;ILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentSignedStepsize()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getCurrentStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method protected getEquations()Lorg/apache/commons/math3/ode/FieldExpandableODE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 3
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getStepSize()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method protected getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method protected initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;TT;[TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->equations:Lorg/apache/commons/math3/ode/FieldExpandableODE;

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    .line 5
    new-instance v0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v0, p2, p3, p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 6
    iget-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 7
    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object p2

    invoke-interface {p2, v0, p4}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;

    .line 9
    invoke-interface {p2, v0, p4}, Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStateInitialized(Z)V

    return-object v0
.end method

.method protected isLastStep()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    return v0
.end method

.method protected resetOccurred()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred:Z

    return v0
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p1

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_INTEGRATION_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {v2, v3, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method protected setIsLastStep(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep:Z

    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->statesInitialized:Z

    return-void
.end method

.method protected setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepSize:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method protected setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->stepStart:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-void
.end method
