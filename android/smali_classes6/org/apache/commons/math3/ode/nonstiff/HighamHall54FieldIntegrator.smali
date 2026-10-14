.class public Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;
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
.field private static final METHOD_NAME:Ljava/lang/String; = "Higham-Hall 5(4)"


# instance fields
.field private final e:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
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

    const-string v2, "Higham-Hall 5(4)"

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    const/4 v0, 0x7

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, -0x1

    const/16 v3, 0x14

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x51

    const/16 v4, 0xa0

    .line 5
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, -0x6

    const/4 v4, 0x5

    .line 6
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/16 v1, 0x19

    const/16 v5, 0x20

    .line 7
    invoke-virtual {p0, v1, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const/16 v1, 0x10

    .line 8
    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xa

    .line 9
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

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

    const-string v2, "Higham-Hall 5(4)"

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 10
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    const/4 v0, 0x7

    .line 11
    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, -0x1

    const/16 v3, 0x14

    .line 12
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 13
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x51

    const/16 v4, 0xa0

    .line 14
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, -0x6

    const/4 v4, 0x5

    .line 15
    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/16 v1, 0x19

    const/16 v5, 0x20

    .line 16
    invoke-virtual {p0, v1, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const/16 v1, 0x10

    .line 17
    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xa

    .line 18
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

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

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

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

    if-ge v2, v3, :cond_2

    .line 3
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x1

    .line 4
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldIntegrator;->e:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 5
    aget-object v6, p1, v4

    aget-object v6, v6, v2

    aget-object v5, v5, v4

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_0
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

    .line 7
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_1

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v5, v2

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v6, v5, v2

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    invoke-interface {p4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    invoke-interface {v3, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    int-to-double p1, v3

    .line 10
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 12
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

    const/16 v3, 0x9

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v2, 0x1

    .line 5
    aget-object v3, v0, v2

    const/16 v5, 0xc

    invoke-virtual {p0, v2, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v3, v1

    .line 6
    aget-object v3, v0, v2

    const/4 v6, 0x4

    invoke-virtual {p0, v2, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v3, v2

    .line 7
    aget-object v3, v0, v4

    const/16 v7, 0x8

    invoke-virtual {p0, v2, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v3, v1

    .line 8
    aget-object v3, v0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v3, v2

    .line 9
    aget-object v3, v0, v4

    const/4 v8, 0x3

    invoke-virtual {p0, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v3, v4

    .line 10
    aget-object v3, v0, v8

    const/16 v9, 0x5b

    const/16 v10, 0x1f4

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v3, v1

    .line 11
    aget-object v3, v0, v8

    const/16 v9, -0x1b

    const/16 v10, 0x64

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v3, v2

    .line 12
    aget-object v3, v0, v8

    const/16 v9, 0x4e

    const/16 v10, 0x7d

    invoke-virtual {p0, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v3, v4

    .line 13
    aget-object v3, v0, v8

    invoke-virtual {p0, v7, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v3, v8

    .line 14
    aget-object v3, v0, v6

    const/16 v7, -0xb

    const/16 v9, 0x14

    invoke-virtual {p0, v7, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v3, v1

    .line 15
    aget-object v3, v0, v6

    const/16 v7, 0x1b

    invoke-virtual {p0, v7, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v3, v2

    .line 16
    aget-object v3, v0, v6

    const/4 v9, 0x5

    invoke-virtual {p0, v5, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v3, v4

    .line 17
    aget-object v3, v0, v6

    const/16 v11, -0x24

    invoke-virtual {p0, v11, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v3, v8

    .line 18
    aget-object v3, v0, v6

    invoke-virtual {p0, v9, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v3, v6

    .line 19
    aget-object v3, v0, v9

    invoke-virtual {p0, v2, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v1

    .line 20
    aget-object v1, v0, v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v2

    .line 21
    aget-object v1, v0, v9

    const/16 v2, 0x20

    invoke-virtual {p0, v7, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v4

    .line 22
    aget-object v1, v0, v9

    const/4 v2, -0x4

    invoke-virtual {p0, v2, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v8

    .line 23
    aget-object v1, v0, v9

    const/16 v2, 0x60

    invoke-virtual {p0, v10, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v6

    .line 24
    aget-object v1, v0, v9

    const/16 v2, 0x30

    invoke-virtual {p0, v9, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v9

    return-object v0
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

    const/16 v2, 0xc

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

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

    const/16 v1, 0x1b

    const/16 v2, 0x20

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, -0x4

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x7d

    const/16 v2, 0x60

    .line 6
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x30

    .line 7
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

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
    .locals 5
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

    const/4 v1, 0x2

    const/16 v2, 0x9

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v0, v2

    .line 4
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 5
    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v3

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
