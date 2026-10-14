.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<",
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

.field private final step:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {p0}, Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

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

.method protected fraction(II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v0, p2

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 19
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
    invoke-virtual {v6, v0, v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

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

    const/4 v12, 0x0

    const/4 v13, 0x1

    cmpl-double v2, v0, v10

    if-lez v2, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 6
    :goto_0
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    add-int/lit8 v15, v0, 0x1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v15, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    array-length v1, v8

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v14, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpl-double v2, v0, v10

    if-ltz v2, :cond_1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpg-double v2, v0, v10

    if-gtz v2, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 15
    :goto_1
    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setIsLastStep(Z)V

    .line 16
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v16, v12

    const/4 v1, 0x1

    :goto_3
    if-ge v1, v15, :cond_6

    const/4 v2, 0x0

    .line 18
    :goto_4
    array-length v3, v8

    if-ge v2, v3, :cond_5

    .line 19
    aget-object v3, v16, v12

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v17, v1, -0x1

    aget-object v4, v4, v17

    aget-object v4, v4, v12

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x1

    :goto_5
    if-ge v4, v1, :cond_4

    .line 20
    aget-object v18, v16, v4

    aget-object v13, v18, v2

    iget-object v10, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v10, v10, v17

    aget-object v10, v10, v4

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    goto :goto_5

    .line 21
    :cond_4
    aget-object v4, v0, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    goto :goto_4

    .line 22
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v10, v1, -0x1

    aget-object v4, v4, v10

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v16, v1

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 23
    :goto_6
    array-length v2, v8

    if-ge v1, v2, :cond_8

    .line 24
    aget-object v2, v16, v12

    aget-object v2, v2, v1

    iget-object v3, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v12

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x1

    :goto_7
    if-ge v3, v15, :cond_7

    .line 25
    aget-object v4, v16, v3

    aget-object v4, v4, v1

    iget-object v10, v6, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v10, v10, v3

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 26
    :cond_7
    aget-object v3, v0, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 27
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 28
    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 29
    new-instance v4, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v4, v1, v5, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 30
    array-length v1, v8

    invoke-static {v5, v12, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v10

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v16

    move-object v11, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v14, :cond_9

    .line 34
    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_a

    goto :goto_8

    :cond_9
    const-wide/16 v2, 0x0

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_a

    :goto_8
    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    .line 35
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_a

    :cond_b
    const-wide/16 v2, 0x0

    .line 36
    :cond_c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 39
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v0

    :cond_d
    move-object v5, v11

    const/4 v13, 0x1

    move-wide v10, v2

    goto/16 :goto_2
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<",
            "TT;>;TT;[TT;TT;)[TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p3 .. p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v7, v5, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-virtual/range {p3 .. p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v9, p4

    .line 5
    invoke-interface {v9, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-interface {v1, v2, v4}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const/4 v10, 0x1

    :goto_0
    if-ge v10, v5, :cond_2

    const/4 v12, 0x0

    .line 7
    :goto_1
    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 8
    aget-object v13, v7, v11

    aget-object v13, v13, v12

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v15, v10, -0x1

    aget-object v14, v14, v15

    aget-object v14, v14, v11

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v14, 0x1

    :goto_2
    if-ge v14, v10, :cond_0

    .line 9
    aget-object v16, v7, v14

    aget-object v6, v16, v12

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v11, v11, v15

    aget-object v11, v11, v14

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v13, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 10
    :cond_0
    aget-object v6, v4, v12

    invoke-interface {v9, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v8, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v11, v10, -0x1

    aget-object v6, v6, v11

    invoke-interface {v9, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v6, v8}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v7, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 12
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_4

    const/4 v2, 0x0

    .line 13
    aget-object v6, v7, v2

    aget-object v6, v6, v1

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, v8, v2

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x1

    :goto_4
    if-ge v8, v5, :cond_3

    .line 14
    aget-object v10, v7, v8

    aget-object v10, v10, v1

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v11, v11, v8

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 15
    :cond_3
    aget-object v8, v4, v1

    invoke-interface {v9, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v4
.end method
