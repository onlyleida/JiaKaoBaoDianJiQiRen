.class public Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
.super Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x16c82f168f228d4dL


# instance fields
.field private final index:I

.field private final threshold:D


# direct methods
.method public constructor <init>(DID)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 2
    iput p3, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    .line 3
    iput-wide p4, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->threshold:D

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p4

    .line 5
    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_DEFINITE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p4, p5, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 6
    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-virtual {p4, p5, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    return v0
.end method

.method public getThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->threshold:D

    return-wide v0
.end method
