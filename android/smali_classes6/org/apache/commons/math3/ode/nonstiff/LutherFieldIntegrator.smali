.class public Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;
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

    const-string v0, "Luther"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;

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

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4035000000000000L    # 21.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    .line 5
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v3, v2

    const/4 v3, 0x1

    .line 6
    aget-object v4, v1, v3

    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v4, v2

    .line 7
    aget-object v4, v1, v3

    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v4, v3

    const/4 v4, 0x2

    .line 8
    aget-object v7, v1, v4

    const/16 v8, 0x1b

    invoke-virtual {p0, v6, v8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v7, v2

    .line 9
    aget-object v7, v1, v4

    invoke-virtual {p0, v4, v8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v3

    .line 10
    aget-object v7, v1, v4

    aget-object v8, v1, v4

    aget-object v8, v8, v2

    aput-object v8, v7, v4

    .line 11
    aget-object v7, v1, v5

    const/16 v8, 0x9

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, -0x3fcb000000000000L    # -21.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, 0x4078800000000000L    # 392.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v7, v2

    .line 12
    aget-object v7, v1, v5

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, -0x3fb4000000000000L    # -56.0

    invoke-interface {v6, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v7, v3

    .line 13
    aget-object v6, v1, v5

    const/16 v7, -0x30

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x4075000000000000L    # 336.0

    invoke-interface {v7, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v6, v4

    .line 14
    aget-object v6, v1, v5

    invoke-interface {v0, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, -0x3fb0800000000000L    # -63.0

    invoke-interface {v7, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v6, v5

    const/4 v6, 0x4

    .line 15
    aget-object v7, v1, v6

    const/16 v8, -0xff

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, -0x3f6df40000000000L    # -1155.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, 0x409ea00000000000L    # 1960.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v7, v2

    .line 16
    aget-object v7, v1, v6

    const/16 v8, -0x28

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, -0x3f8e800000000000L    # -280.0

    invoke-interface {v8, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v7, v3

    .line 17
    aget-object v7, v1, v6

    const/16 v8, -0x140

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v7, v4

    .line 18
    aget-object v7, v1, v6

    const/16 v8, 0x16b

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x404f800000000000L    # 63.0

    invoke-interface {v8, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v7, v5

    .line 19
    aget-object v7, v1, v6

    const/16 v8, 0x188

    invoke-interface {v0, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x40a2600000000000L    # 2352.0

    invoke-interface {v8, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v7, v6

    const/4 v7, 0x5

    .line 20
    aget-object v8, v1, v7

    const/16 v9, 0x69

    invoke-interface {v0, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x4074a00000000000L    # 330.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x4066800000000000L    # 180.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v8, v2

    .line 21
    aget-object v2, v1, v7

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v2, v3

    .line 22
    aget-object v2, v1, v7

    const/16 v3, 0x118

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, -0x3f97000000000000L    # -200.0

    invoke-interface {v3, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v4

    .line 23
    aget-object v2, v1, v7

    const/16 v3, -0xbd

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v8, 0x405f800000000000L    # 126.0

    invoke-interface {v3, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v5

    .line 24
    aget-object v2, v1, v7

    const/16 v3, -0x7e

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x3f7a900000000000L    # -686.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v6

    .line 25
    aget-object v2, v1, v7

    const/16 v3, -0x46

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x407ea00000000000L    # 490.0

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v0, v2, v7

    return-object v1
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    const/16 v2, 0x14

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x2d

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x31

    const/16 v2, 0xb4

    .line 6
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 7
    aget-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 8
    aget-object v1, v0, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4035000000000000L    # 21.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v1, v3

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    .line 6
    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fd4000000000000L    # -14.0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v1, v2

    .line 7
    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    return-object v1
.end method
