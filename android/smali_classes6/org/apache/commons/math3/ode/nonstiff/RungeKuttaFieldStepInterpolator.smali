.class abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final yDotK:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;-><init>(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->field:Lorg/apache/commons/math3/Field;

    .line 3
    array-length p2, p3

    const/4 p4, -0x1

    invoke-static {p1, p2, p4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 p1, 0x0

    .line 4
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object p4, p3, p1

    invoke-virtual {p4}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 3
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v2

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected abstract create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
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

.method protected create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
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

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->field:Lorg/apache/commons/math3/Field;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method protected varargs currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    return-object p1
.end method

.method protected varargs derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->yDotK:[[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->combine([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    return-object p1
.end method
