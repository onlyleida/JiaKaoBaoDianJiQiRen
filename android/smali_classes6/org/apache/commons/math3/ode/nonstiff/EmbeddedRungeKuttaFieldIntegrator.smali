.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<",
        "TT;>;",
        "Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final b:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final exp:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final fsal:I

.field private maxGrowth:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private minReduction:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private safety:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IDDDD)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    .line 1
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V

    move v0, p3

    .line 2
    iput v0, v11, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    .line 3
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setSafety(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 8
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3fc999999999999aL    # 0.2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 9
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IDD[D[D)V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 10
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V

    move v0, p3

    .line 11
    iput v0, v9, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    .line 12
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 14
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 15
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, v9, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    .line 16
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setSafety(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 17
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3fc999999999999aL    # 0.2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 18
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method


# virtual methods
.method protected abstract createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation
.end method

.method protected fraction(DD)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method

.method protected fraction(II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v0, p2

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method

.method public getMaxGrowth()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMinReduction()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    .line 1
    invoke-virtual {v6, v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    move-object/from16 v9, p1

    .line 4
    invoke-virtual {v6, v9, v1, v8, v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmpl-double v2, v0, v10

    if-lez v2, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 6
    :goto_0
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    add-int/lit8 v15, v0, 0x1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v15, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    array-length v1, v8

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 10
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setIsLastStep(Z)V

    move-object v1, v8

    const/4 v2, 0x1

    .line 11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    move-object v12, v0

    move-object v13, v1

    move/from16 v17, v2

    :goto_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 12
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    cmpl-double v0, v18, v10

    if-ltz v0, :cond_c

    .line 13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    .line 14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v5, v3

    if-eqz v17, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v3, v6, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    .line 16
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 17
    :goto_3
    array-length v12, v3

    if-ge v0, v12, :cond_2

    .line 18
    aget-object v12, v13, v0

    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v1, v6, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v12, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v10, v6, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_4
    array-length v1, v3

    if-ge v0, v1, :cond_2

    .line 20
    aget-object v1, v13, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v10, v2, v0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v10, v2, v0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 21
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v11

    move-object/from16 v0, p0

    move v1, v14

    move-object v12, v4

    move-object v4, v10

    move-object v10, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initializeStep(ZI[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    move-object v11, v12

    const/16 v17, 0x0

    move-object v12, v0

    goto :goto_5

    :cond_3
    move-object v11, v4

    move-object v10, v5

    .line 22
    :goto_5
    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    if-eqz v14, :cond_4

    .line 23
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_5

    .line 24
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_6

    .line 25
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_5

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    :cond_5
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-ge v0, v15, :cond_8

    const/4 v1, 0x0

    .line 27
    :goto_8
    array-length v2, v8

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    .line 28
    aget-object v3, v10, v2

    aget-object v3, v3, v1

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x1

    :goto_9
    if-ge v3, v0, :cond_6

    .line 29
    aget-object v4, v10, v3

    aget-object v4, v4, v1

    iget-object v9, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v9, v9, v5

    aget-object v9, v9, v3

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, p1

    goto :goto_9

    .line 30
    :cond_6
    aget-object v3, v13, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, p1

    goto :goto_8

    .line 31
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    iget-object v3, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v1, v11}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, p1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    .line 32
    :goto_a
    array-length v1, v8

    if-ge v0, v1, :cond_a

    const/4 v1, 0x0

    .line 33
    aget-object v2, v10, v1

    aget-object v2, v2, v0

    iget-object v3, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    :goto_b
    if-ge v2, v15, :cond_9

    .line 34
    aget-object v3, v10, v2

    aget-object v3, v3, v0

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 35
    :cond_9
    aget-object v2, v13, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 36
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual {v6, v10, v13, v11, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 37
    invoke-interface {v3, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_b

    .line 38
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->pow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v14, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    :cond_b
    move-object/from16 v9, p1

    move-object v5, v10

    move-object v4, v11

    const-wide/16 v10, 0x0

    goto/16 :goto_2

    :cond_c
    move-object v11, v4

    move-object v10, v5

    .line 40
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 41
    iget v1, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    if-ltz v1, :cond_d

    aget-object v1, v10, v1

    goto :goto_c

    :cond_d
    invoke-virtual {v6, v0, v11}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 42
    :goto_c
    new-instance v4, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v4, v0, v11, v1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 43
    array-length v0, v8

    const/4 v9, 0x0

    invoke-static {v11, v9, v13, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v16

    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v10

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v0

    if-nez v0, :cond_12

    .line 46
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v6, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->pow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 47
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 48
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v14, :cond_e

    .line 49
    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_f

    goto :goto_d

    :cond_e
    const-wide/16 v3, 0x0

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_f

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_f
    const/4 v3, 0x0

    .line 50
    :goto_e
    invoke-virtual {v6, v0, v14, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v14, :cond_10

    .line 52
    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_11

    goto :goto_f

    :cond_10
    const-wide/16 v3, 0x0

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_11

    :goto_f
    const/4 v1, 0x1

    goto :goto_10

    :cond_11
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_13

    .line 53
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_11

    :cond_12
    const-wide/16 v3, 0x0

    move-object v0, v12

    .line 54
    :cond_13
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 55
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 56
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->resetInternalState()V

    return-object v0

    :cond_14
    move-object/from16 v9, p1

    move-object v5, v10

    move-object v1, v13

    move/from16 v2, v17

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-wide/from16 v20, v3

    move-object v4, v11

    move-wide/from16 v10, v20

    goto/16 :goto_1
.end method

.method public setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public setSafety(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method
