.class Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;
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
.field private final nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scaled:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private scalingH:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;Z",
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

    move-object v7, p0

    move-object v0, p0

    move v1, p5

    move-object v2, p6

    move-object v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;-><init>(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    move-object v0, p1

    .line 3
    iput-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scalingH:Lorg/apache/commons/math3/RealFieldElement;

    move-object v0, p2

    .line 4
    iput-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 5
    invoke-virtual {p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    iput-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    return-void
.end method

.method public static taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TS;>;>(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TS;>;TS;TS;[TS;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TS;>;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    invoke-interface {v0, p2}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    array-length v2, p3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    array-length v3, p3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p4

    check-cast p4, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    array-length v3, p4

    add-int/lit8 v3, v3, -0x1

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_1

    add-int/lit8 v5, v3, 0x2

    .line 9
    aget-object v6, p4, v3

    .line 10
    invoke-interface {p2, v5}, Lorg/apache/commons/math3/RealFieldElement;->pow(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 11
    :goto_1
    array-length v8, v6

    if-ge v4, v8, :cond_0

    .line 12
    aget-object v8, v6, v4

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    aget-object v9, v1, v4

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v1, v4

    .line 14
    aget-object v9, v2, v4

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/FieldODEState;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    .line 16
    :goto_2
    array-length p4, v1

    if-ge v4, p4, :cond_2

    .line 17
    aget-object p4, v1, v4

    aget-object v3, p3, v4

    invoke-interface {v3, p2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, v1, v4

    .line 18
    aget-object p4, p0, v4

    aget-object v3, v1, v4

    invoke-interface {p4, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, p0, v4

    .line 19
    aget-object p4, v2, v4

    aget-object v3, p3, v4

    invoke-interface {v3, p2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p4, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {p2, p1, p0, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object p2
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scalingH:Lorg/apache/commons/math3/RealFieldElement;

    iget-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    return-object p1
.end method

.method protected create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;
    .locals 13
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
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 2
    new-instance v12, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scalingH:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->reference:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-object v1, v12

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v12
.end method

.method protected bridge synthetic create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
