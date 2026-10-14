.class public Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private final complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(D)V

    .line 3
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DD)V

    .line 5
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DDD)V

    .line 7
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    return-void
.end method


# virtual methods
.method public doSolve()D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMin()D

    move-result-wide v7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMax()D

    move-result-wide v10

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getStartValue()D

    move-result-wide v12

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    move-wide v5, v10

    .line 5
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->verifySequence(DDD)V

    .line 6
    invoke-virtual {v9, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 7
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v14

    if-gtz v2, :cond_0

    return-wide v12

    .line 8
    :cond_0
    invoke-virtual {v9, v7, v8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 9
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v14

    if-gtz v2, :cond_1

    return-wide v7

    :cond_1
    mul-double v0, v16, v5

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v12

    move-wide/from16 v7, v16

    .line 10
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v0

    return-wide v0

    .line 11
    :cond_2
    invoke-virtual {v9, v10, v11}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 12
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v4, v0, v14

    if-gtz v4, :cond_3

    return-wide v10

    :cond_3
    mul-double v0, v16, v18

    cmpg-double v4, v0, v2

    if-gez v4, :cond_4

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v10

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    .line 13
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v0

    return-wide v0

    .line 14
    :cond_4
    new-instance v12, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-object v0, v12

    move-wide v1, v7

    move-wide v3, v10

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v12
.end method

.method public laguerre(DDDD)D
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->getCoefficients()[D

    move-result-object p5

    invoke-static {p5}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p5

    .line 2
    new-instance p6, Lorg/apache/commons/math3/complex/Complex;

    add-double p7, p1, p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p7, p7, v0

    const-wide/16 v0, 0x0

    invoke-direct {p6, p7, p8, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 3
    iget-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-virtual {p7, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p7

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result p8

    if-eqz p8, :cond_0

    .line 5
    invoke-virtual {p7}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p7, 0x7ff8000000000000L    # Double.NaN

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-virtual {v0, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p5

    const/4 p6, 0x0

    .line 7
    :goto_0
    array-length v0, p5

    if-ge p6, v0, :cond_2

    .line 8
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    aget-object v6, p5, p6

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    aget-object p1, p5, p6

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide p7

    goto :goto_1

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p7
.end method

.method public solveAllComplex([DD)[Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p4

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 3
    iget-object p4, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p4, p1, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public solveComplex([DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p4

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 3
    iget-object p4, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p4, p1, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method
