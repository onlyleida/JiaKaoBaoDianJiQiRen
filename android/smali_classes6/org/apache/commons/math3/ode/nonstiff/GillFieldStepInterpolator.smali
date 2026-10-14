.class Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 0
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

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 2
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p3, p2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x2

    .line 2
    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    invoke-interface {v4, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 4
    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eqz v11, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v16, v18

    if-gtz v11, :cond_0

    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    move-object/from16 v4, p4

    .line 10
    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x6

    .line 11
    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v3, 0x9

    .line 12
    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 14
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 15
    invoke-interface {v1, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    new-array v4, v14, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    aput-object v7, v4, v12

    const/4 v3, 0x2

    aput-object v8, v4, v3

    aput-object v1, v4, v15

    .line 16
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    new-array v4, v14, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v4, v13

    aput-object v9, v4, v12

    aput-object v2, v4, v3

    aput-object v10, v4, v15

    .line 17
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-wide/high16 v12, -0x3fe8000000000000L    # -6.0

    move-object/from16 v3, p5

    .line 18
    invoke-interface {v3, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 19
    invoke-interface {v4, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v12, 0x5

    .line 20
    invoke-interface {v1, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 21
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 22
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 23
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    new-array v3, v14, [Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x0

    aput-object v12, v3, v5

    const/4 v7, 0x1

    aput-object v13, v3, v7

    const/4 v8, 0x2

    aput-object v4, v3, v8

    aput-object v1, v3, v15

    .line 24
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    new-array v3, v14, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v3, v5

    aput-object v9, v3, v7

    aput-object v2, v3, v8

    aput-object v10, v3, v15

    .line 25
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 26
    :goto_0
    new-instance v3, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v4, p2

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;
    .locals 10
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
            "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
