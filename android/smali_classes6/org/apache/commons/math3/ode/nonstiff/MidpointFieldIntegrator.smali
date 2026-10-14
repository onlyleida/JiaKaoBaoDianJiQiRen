.class public Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "midpoint"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    .line 2
    aget-object v3, v0, v2

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v3, v2

    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
