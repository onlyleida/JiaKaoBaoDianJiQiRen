.class public Lorg/apache/commons/math3/linear/MatrixUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;,
        Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

.field public static final OCTAVE_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance()Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/MatrixUtils;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;

    const-string v2, "["

    const-string v3, "]"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "; "

    const-string v7, ", "

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/linear/MatrixUtils;->OCTAVE_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;)",
            "Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;-><init>()V

    .line 2
    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static blockInverse(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 2
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_4

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-interface {p0, v2, p1, v2, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    .line 4
    invoke-interface {p0, v2, p1, v1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 5
    invoke-interface {p0, v1, v4, v2, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 6
    invoke-interface {p0, v1, v4, v1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    .line 7
    new-instance v4, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 8
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v4}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 11
    new-instance v6, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v6, p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 12
    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v6

    .line 13
    invoke-interface {v6}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    invoke-interface {v6}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 15
    invoke-interface {v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v7, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 16
    new-instance v7, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v7, v3}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 17
    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v3

    .line 18
    invoke-interface {v3}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 19
    invoke-interface {v3}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 20
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {p0, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    .line 21
    new-instance v7, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v7, p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 22
    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 24
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    .line 25
    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 26
    invoke-interface {v6, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 27
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 28
    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    invoke-interface {v5, v0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 29
    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    invoke-interface {v5, v0, v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 30
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    invoke-interface {v5, p1, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 31
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p0

    invoke-interface {v5, p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    return-object v5

    .line 32
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0

    .line 33
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0

    .line 34
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0

    .line 35
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0

    .line 36
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1
.end method

.method public static checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p0, v2, p1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public static checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COLUMN_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 2
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    return-void
.end method

.method public static checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROW_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 2
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    const/4 v0, 0x0

    if-lt p2, p1, :cond_1

    .line 3
    invoke-static {p0, p3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 4
    invoke-static {p0, p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    if-lt p4, p3, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_COLUMN_AFTER_FINAL_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public static checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 7
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 8
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 10
    invoke-static {p0, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    aget v0, p2, v1

    .line 12
    invoke-static {p0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 13
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_SELECTED_COLUMN_INDEX_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 14
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_SELECTED_ROW_INDEX_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 15
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 16
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p0, v2, p1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public static checkSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z

    return-void
.end method

.method public static createColumnFieldMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-object v4, p0, v3

    invoke-interface {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-wide v4, p0, v3

    invoke-interface {v1, v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createFieldDiagonalMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v2, p0, v0

    invoke-interface {v1, v0, v0, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createFieldIdentityMatrix(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 2
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 3
    invoke-static {p0, p1, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    .line 4
    aget-object v5, v2, v4

    .line 5
    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    aput-object v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {p1, p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public static createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    mul-int v0, p1, p2

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    :goto_0
    return-object v0
.end method

.method public static createFieldMatrix([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 3
    array-length v1, p0

    aget-object v0, p0, v0

    array-length v0, v0

    mul-int v1, v1, v0

    const/16 v0, 0x1000

    if-gt v1, v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    :goto_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createFieldVector([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    aget-object v1, p0, v1

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 1
    array-length v0, p0

    array-length v1, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-wide v2, p0, v1

    invoke-interface {v0, v1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 1
    invoke-static {p0, p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-interface {v0, v1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    mul-int v0, p0, p1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public static createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 3
    array-length v1, p0

    aget-object v0, p0, v0

    array-length v0, v0

    mul-int v1, v1, v0

    const/16 v0, 0x1000

    if-gt v1, v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    :goto_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createRealVector([D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createRowFieldMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-object v4, p0, v3

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static createRowRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-wide v4, p0, v3

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static deserializeRealMatrix(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    .line 3
    const-class v5, D

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 4
    aget-object v6, v2, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p2, v2, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 11
    invoke-virtual {p1, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12
    throw p1

    :catch_1
    move-exception p0

    .line 13
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 14
    invoke-virtual {p1, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw p1
.end method

.method public static deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2
    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p2, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 9
    invoke-virtual {p1, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw p1

    :catch_1
    move-exception p0

    .line 11
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw p1
.end method

.method public static fractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/Fraction;",
            ">;)",
            "Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;-><init>()V

    .line 2
    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;->getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static inverse(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->inverse(Lorg/apache/commons/math3/linear/RealMatrix;D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static inverse(Lorg/apache/commons/math3/linear/RealMatrix;D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p2

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1
.end method

.method public static isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z

    move-result p0

    return p0
.end method

.method private static isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z
    .locals 11

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 2
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-nez p3, :cond_0

    return v2

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    add-int/lit8 v3, v1, 0x1

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_4

    .line 4
    invoke-interface {p0, v1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    .line 5
    invoke-interface {p0, v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    sub-double v9, v5, v7

    .line 6
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double v5, v5, p1

    cmpl-double v7, v9, v5

    if-lez v7, :cond_3

    if-nez p3, :cond_2

    return v2

    .line 7
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    invoke-direct {p0, v1, v4, p1, p2}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static serializeRealMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/io/ObjectOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 2
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    .line 5
    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static solveLowerTriangularSystem(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 5
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v9, v5, v7

    if-ltz v9, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v5, v3

    .line 7
    invoke-virtual {p1, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    invoke-interface {p0, v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    mul-double v9, v9, v5

    sub-double/2addr v7, v9

    invoke-virtual {p1, v4, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    .line 11
    :cond_5
    :goto_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    :goto_4
    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public static solveUpperTriangularSystem(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 4
    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 5
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v9, v5, v7

    if-ltz v9, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v5, v3

    .line 7
    invoke-virtual {p1, v1, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-le v3, v2, :cond_1

    .line 8
    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    invoke-interface {p0, v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    mul-double v9, v9, v5

    sub-double/2addr v7, v9

    invoke-virtual {p1, v3, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    .line 11
    :cond_5
    :goto_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    :goto_4
    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
