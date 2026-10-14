.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
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
.field private final a70:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a72:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a73:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a74:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a75:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d4:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d5:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d6:Lorg/apache/commons/math3/RealFieldElement;
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
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x4041800000000000L    # 35.0

    .line 3
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 p3, 0x4078000000000000L    # 384.0

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x407f400000000000L    # 500.0

    .line 4
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x4091640000000000L    # 1113.0

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x405f400000000000L    # 125.0

    .line 5
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 p3, 0x4068000000000000L    # 192.0

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, -0x3f5eea0000000000L    # -2187.0

    .line 6
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x40ba800000000000L    # 6784.0

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 p2, 0x4026000000000000L    # 11.0

    .line 7
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 p3, 0x4055000000000000L    # 84.0

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, -0x3df850f726680000L    # -1.2715105075E10

    .line 8
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x420503b754000000L    # 1.1282082432E10

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x42345ea8ff940000L    # 8.74874797E10

    .line 9
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x421e7462aebc0000L    # 3.2700410799E10

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, -0x3dfc163f19c80000L    # -1.0690763975E10

    .line 10
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x41dc04f470000000L    # 1.880347072E9

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x42646e2913596000L    # 7.01980252875E11

    .line 11
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x4247341a6cc00000L    # 1.99316789632E11

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, -0x3e2a55f997c00000L    # -1.453857185E9

    .line 12
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p3, 0x41c88455e2000000L    # 8.22651844E8

    invoke-interface {p2, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x4190b055e4000000L    # 6.9997945E7

    .line 13
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide p2, 0x417c04f470000000L    # 2.9380423E7

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 21
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

    move-object/from16 v2, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v5, 0x2

    .line 3
    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {v3, v6}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, -0x3

    .line 5
    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 6
    invoke-interface {v6, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v17

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v17, v19

    if-gtz v8, :cond_0

    .line 8
    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    invoke-interface {v8, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 10
    invoke-interface {v1, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 11
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 12
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 14
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 15
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v15, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 16
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 17
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 18
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object v10, v6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    move-object v6, v10

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 19
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 20
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 21
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p4, v10

    const/4 v10, 0x2

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v15, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 22
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p5, v10

    const/4 v10, 0x2

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v15, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 23
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 24
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x7

    new-array v15, v7, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v12, v15, v16

    const/4 v12, 0x1

    aput-object v13, v15, v12

    const/4 v8, 0x2

    aput-object v14, v15, v8

    const/4 v13, 0x3

    aput-object v11, v15, v13

    const/4 v11, 0x4

    aput-object v9, v15, v11

    const/4 v9, 0x5

    aput-object v2, v15, v9

    const/4 v2, 0x6

    aput-object v1, v15, v2

    .line 25
    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    new-array v7, v7, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v7, v16

    aput-object v5, v7, v12

    aput-object p4, v7, v8

    aput-object p5, v7, v13

    aput-object v10, v7, v11

    aput-object v3, v7, v9

    aput-object v6, v7, v2

    .line 26
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    goto/16 :goto_0

    .line 27
    :cond_0
    invoke-interface/range {p5 .. p5}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v5, p5

    .line 28
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 29
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 30
    invoke-interface {v1, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 31
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 32
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 33
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v12, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 34
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v13, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 35
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v14, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 36
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 37
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 38
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 39
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 40
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 41
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p4, v14

    const/4 v14, 0x2

    invoke-interface {v8, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    invoke-interface {v7, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v15, v14}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 42
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 p5, v14

    const/4 v14, 0x2

    invoke-interface {v8, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    invoke-interface {v7, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v15, v14}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 43
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x2

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 44
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x7

    new-array v15, v7, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v15, v16

    const/4 v9, 0x1

    aput-object v10, v15, v9

    const/4 v8, 0x2

    aput-object v11, v15, v8

    const/4 v10, 0x3

    aput-object v12, v15, v10

    const/4 v11, 0x4

    aput-object v13, v15, v11

    const/4 v12, 0x5

    aput-object v2, v15, v12

    const/4 v2, 0x6

    aput-object v1, v15, v2

    .line 45
    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    new-array v7, v7, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v7, v16

    aput-object v5, v7, v9

    aput-object p4, v7, v8

    aput-object p5, v7, v10

    aput-object v14, v7, v11

    aput-object v3, v7, v12

    aput-object v6, v7, v2

    .line 46
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 47
    :goto_0
    new-instance v3, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v4, p2

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
