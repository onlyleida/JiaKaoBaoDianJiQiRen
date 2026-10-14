.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 5(4)"


# instance fields
.field private final e1:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e4:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e5:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e6:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e7:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;DDDD)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DDDD)V"
        }
    .end annotation

    move-object v12, p0

    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    const/16 v0, 0x47

    const v1, 0xe100

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v1, -0x47

    const/16 v2, 0x4137

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v1, 0x780

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v0, -0x4365

    const v1, 0x52d00

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v0, 0x16

    const/16 v1, 0x20d

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, -0x1

    const/16 v1, 0x28

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;DD[D[D)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DD[D[D)V"
        }
    .end annotation

    move-object v10, p0

    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 8
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    const/16 v0, 0x47

    const v1, 0xe100

    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v1, -0x47

    const/16 v2, 0x4137

    .line 10
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v1, 0x780

    .line 11
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v0, -0x4365

    const v1, 0x52d00

    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    const/16 v0, 0x16

    const/16 v1, 0x20d

    .line 13
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, -0x1

    const/16 v1, 0x28

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

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

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method protected estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x2

    aget-object v4, p1, v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x3

    aget-object v4, p1, v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x4

    aget-object v4, p1, v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x5

    aget-object v4, p1, v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x6

    aget-object v4, p1, v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    aget-object v4, p2, v2

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, p3, v2

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_0

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v5, v2

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v6, v5, v2

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-interface {p4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    invoke-interface {v3, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    int-to-double p1, v3

    .line 8
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 4
    :cond_0
    aget-object v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v2, v1

    .line 5
    aget-object v2, v0, v3

    const/4 v5, 0x3

    const/16 v6, 0x28

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v2, v1

    .line 6
    aget-object v2, v0, v3

    const/16 v7, 0x9

    invoke-virtual {p0, v7, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v2, 0x2

    .line 7
    aget-object v6, v0, v2

    const/16 v8, 0x2c

    const/16 v9, 0x2d

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v6, v1

    .line 8
    aget-object v6, v0, v2

    const/16 v8, -0x38

    const/16 v9, 0xf

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v6, v3

    .line 9
    aget-object v6, v0, v2

    const/16 v8, 0x20

    invoke-virtual {p0, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v2

    .line 10
    aget-object v6, v0, v5

    const/16 v7, 0x4bac

    const/16 v8, 0x19a1

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v1

    .line 11
    aget-object v6, v0, v5

    const/16 v7, -0x6310

    const/16 v9, 0x88b

    invoke-virtual {p0, v7, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v3

    .line 12
    aget-object v6, v0, v5

    const v7, 0xfbc0

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v2

    .line 13
    aget-object v6, v0, v5

    const/16 v7, -0xd4

    const/16 v8, 0x2d9

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v6, 0x4

    .line 14
    aget-object v7, v0, v6

    const/16 v8, 0x2339

    const/16 v9, 0xc60

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v1

    .line 15
    aget-object v7, v0, v6

    const/16 v8, -0x163

    const/16 v9, 0x21

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v3

    .line 16
    aget-object v7, v0, v6

    const v8, 0xb68c

    const/16 v9, 0x147f

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v2

    .line 17
    aget-object v7, v0, v6

    const/16 v8, 0x31

    const/16 v9, 0xb0

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v5

    .line 18
    aget-object v7, v0, v6

    const/16 v8, -0x13ef

    const/16 v9, 0x48e0

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v6

    .line 19
    aget-object v7, v0, v4

    const/16 v8, 0x23

    const/16 v9, 0x180

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v1

    .line 20
    aget-object v1, v0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v1, v3

    .line 21
    aget-object v1, v0, v4

    const/16 v3, 0x1f4

    const/16 v7, 0x459

    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 22
    aget-object v1, v0, v4

    const/16 v2, 0x7d

    const/16 v3, 0xc0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v5

    .line 23
    aget-object v1, v0, v4

    const/16 v2, -0x88b

    const/16 v3, 0x1a80

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v6

    .line 24
    aget-object v1, v0, v4

    const/16 v2, 0xb

    const/16 v3, 0x54

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v4

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

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    const/16 v1, 0x23

    const/16 v2, 0x180

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1f4

    const/16 v2, 0x459

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7d

    const/16 v2, 0xc0

    .line 5
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, -0x88b

    const/16 v2, 0x1a80

    .line 6
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xb

    const/16 v2, 0x54

    .line 7
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x3

    const/16 v4, 0xa

    .line 3
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/16 v4, 0x8

    const/16 v5, 0x9

    .line 5
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v0, v3

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
