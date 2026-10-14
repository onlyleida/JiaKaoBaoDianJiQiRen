.class public abstract Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepInterpolator;


# instance fields
.field protected currentState:[D

.field private dirtyState:Z

.field private finalized:Z

.field private forward:Z

.field private globalCurrentTime:D

.field private globalPreviousTime:D

.field protected h:D

.field protected interpolatedDerivatives:[D

.field protected interpolatedPrimaryDerivatives:[D

.field protected interpolatedPrimaryState:[D

.field protected interpolatedSecondaryDerivatives:[[D

.field protected interpolatedSecondaryState:[[D

.field protected interpolatedState:[D

.field protected interpolatedTime:D

.field private primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

.field private secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

.field private softCurrentTime:D

.field private softPreviousTime:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 6
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 7
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 11
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 12
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 13
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 31
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 32
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 33
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 34
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 35
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 36
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 38
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 39
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 42
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 43
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 44
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 45
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 46
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    array-length v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 47
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    array-length v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 49
    iget-object v3, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v3, v3, v0

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aput-object v3, v2, v0

    .line 50
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    iget-object v3, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v3, v3, v0

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 52
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 53
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 54
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 55
    iget-object p1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lorg/apache/commons/math3/ode/EquationsMapper;

    :goto_2
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    return-void
.end method

.method protected constructor <init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 16
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 17
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 18
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 19
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 20
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 21
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 22
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 24
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 26
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p4}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/ode/EquationsMapper;

    :goto_0
    iput-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 28
    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    return-void
.end method

.method private allocateInterpolatedArrays(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 1
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    goto :goto_1

    .line 7
    :cond_0
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 8
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 9
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 10
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 11
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez p1, :cond_1

    .line 12
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 13
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    goto :goto_1

    .line 14
    :cond_1
    array-length v0, p1

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 15
    array-length p1, p1

    new-array p1, p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 17
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    new-array v0, v0, [D

    aput-object v0, v1, p1

    .line 18
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v1

    new-array v1, v1, [D

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private evaluateCompleteInterpolatedState()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    sub-double/2addr v0, v2

    .line 3
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-double v4, v2, v0

    div-double/2addr v4, v2

    .line 4
    :goto_0
    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->computeInterpolatedStateAndDerivatives(DD)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract computeInterpolatedStateAndDerivatives(DD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
.end method

.method protected doFinalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    return-void
.end method

.method public final finalizeStep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->doFinalize()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    :cond_0
    return-void
.end method

.method public getCurrentTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-wide v0
.end method

.method public getGlobalCurrentTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    return-wide v0
.end method

.method public getGlobalPreviousTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    return-wide v0
.end method

.method public getInterpolatedDerivatives()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    return-object v0
.end method

.method public getInterpolatedSecondaryDerivatives(I)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInterpolatedSecondaryState(I)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInterpolatedState()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    return-object v0
.end method

.method public getInterpolatedTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    return-wide v0
.end method

.method public getPreviousTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    return-wide v0
.end method

.method public isForward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    return v0
.end method

.method protected readBaseExternal(Ljava/io/ObjectInput;)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 9
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/EquationsMapper;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    if-gez v0, :cond_1

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    goto :goto_2

    .line 14
    :cond_1
    new-array v3, v0, [D

    iput-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 15
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 17
    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 18
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 19
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 20
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract readExternal(Ljava/io/ObjectInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 6
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 9
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 11
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 12
    invoke-virtual {p4}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 13
    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    return-void
.end method

.method public setInterpolatedTime(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    return-void
.end method

.method public setSoftCurrentTime(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-void
.end method

.method public setSoftPreviousTime(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    return-void
.end method

.method public shift()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-void
.end method

.method public storeTime(D)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 3
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    sub-double v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    return-void
.end method

.method protected writeBaseExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 4
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 5
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 6
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 7
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 8
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 9
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 12
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 13
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-eqz v0, :cond_2

    .line 15
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 16
    aget-wide v3, v0, v2

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 17
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 21
    throw v0
.end method

.method public abstract writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
