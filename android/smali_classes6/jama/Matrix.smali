.class public Ljama/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private A:[[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljama/Matrix;->m:I

    .line 3
    iput p2, p0, Ljama/Matrix;->n:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x0

    aput p1, v0, p2

    .line 4
    const-class p1, D

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Ljama/Matrix;->A:[[D

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Ljama/Matrix;->m:I

    .line 7
    iput p2, p0, Ljama/Matrix;->n:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 8
    const-class v2, D

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljama/Matrix;->A:[[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    .line 9
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v0

    aput-wide p3, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Ljama/Matrix;->m:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 23
    array-length v1, p1

    div-int/2addr v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Ljama/Matrix;->n:I

    mul-int v2, p2, v1

    .line 24
    array-length v3, p1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput p2, v2, v0

    .line 25
    const-class v1, D

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Ljama/Matrix;->A:[[D

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    .line 26
    :goto_2
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_1

    .line 27
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v1

    mul-int v4, v2, p2

    add-int/2addr v4, v1

    aget-wide v4, p1, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array length must be a multiple of m."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([[D)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    array-length v0, p1

    iput v0, p0, Ljama/Matrix;->m:I

    const/4 v0, 0x0

    .line 12
    aget-object v1, p1, v0

    array-length v1, v1

    iput v1, p0, Ljama/Matrix;->n:I

    .line 13
    :goto_0
    iget v1, p0, Ljama/Matrix;->m:I

    if-ge v0, v1, :cond_1

    .line 14
    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Ljama/Matrix;->n:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All rows must have the same length."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    iput-object p1, p0, Ljama/Matrix;->A:[[D

    return-void
.end method

.method public constructor <init>([[DII)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ljama/Matrix;->A:[[D

    .line 19
    iput p2, p0, Ljama/Matrix;->m:I

    .line 20
    iput p3, p0, Ljama/Matrix;->n:I

    return-void
.end method

.method private checkMatrixDimensions(Ljama/Matrix;)V
    .locals 2

    .line 1
    iget v0, p1, Ljama/Matrix;->m:I

    iget v1, p0, Ljama/Matrix;->m:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Ljama/Matrix;->n:I

    iget v0, p0, Ljama/Matrix;->n:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix dimensions must agree."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static constructWithCopy([[D)Ljama/Matrix;
    .locals 11

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    aget-object v2, p0, v1

    array-length v2, v2

    .line 3
    new-instance v3, Ljama/Matrix;

    invoke-direct {v3, v0, v2}, Ljama/Matrix;-><init>(II)V

    .line 4
    invoke-virtual {v3}, Ljama/Matrix;->getArray()[[D

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 5
    aget-object v6, p0, v5

    array-length v6, v6

    if-ne v6, v2, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    .line 6
    aget-object v7, v4, v5

    aget-object v8, p0, v5

    aget-wide v9, v8, v6

    aput-wide v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "All rows must have the same length."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v3
.end method

.method public static identity(II)Ljama/Matrix;
    .locals 8

    .line 1
    new-instance v0, Ljama/Matrix;

    invoke-direct {v0, p0, p1}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 3
    aget-object v5, v1, v3

    if-ne v3, v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    :goto_2
    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static identity(IID)Ljama/Matrix;
    .locals 8

    .line 9
    new-instance v0, Ljama/Matrix;

    invoke-direct {v0, p0, p1}, Ljama/Matrix;-><init>(II)V

    .line 10
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 11
    aget-object v5, v1, v3

    if-ne v3, v4, :cond_0

    move-wide v6, p2

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    :goto_2
    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static random(II)Ljama/Matrix;
    .locals 8

    .line 1
    new-instance v0, Ljama/Matrix;

    invoke-direct {v0, p0, p1}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_0

    .line 3
    aget-object v5, v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static read(Ljava/io/BufferedReader;)Ljama/Matrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/4 p0, 0x0

    const/16 v1, 0xff

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    .line 6
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget v2, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 9
    :cond_1
    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 12
    new-array v4, v2, [D

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    .line 13
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 16
    :goto_2
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 17
    new-array v4, v2, [D

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_3
    const-string v6, "Row "

    if-ge v5, v2, :cond_5

    add-int/lit8 v7, v5, 0x1

    .line 18
    iget-object v8, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v4, v5

    .line 19
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    if-eq v5, v3, :cond_4

    if-lt v7, v2, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is too short."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v5, v7

    goto :goto_3

    .line 21
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is too long."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    .line 23
    new-array p0, p0, [[D

    .line 24
    invoke-virtual {v1, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 25
    new-instance v0, Ljama/Matrix;

    invoke-direct {v0, p0}, Ljama/Matrix;-><init>([[D)V

    return-object v0

    .line 26
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected EOF on matrix read."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public arrayLeftDivide(Ljama/Matrix;)Ljama/Matrix;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    .line 2
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 3
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, v1, v3

    iget-object v6, p1, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v9, v6, v4

    div-double/2addr v7, v9

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public arrayLeftDivideEquals(Ljama/Matrix;)Ljama/Matrix;
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v4, v3, v1

    iget-object v5, p1, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v2

    aget-object v3, v3, v1

    aget-wide v8, v3, v2

    div-double/2addr v6, v8

    aput-wide v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public arrayRightDivide(Ljama/Matrix;)Ljama/Matrix;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    .line 2
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 3
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    iget-object v6, p1, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v9, v6, v4

    div-double/2addr v7, v9

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public arrayRightDivideEquals(Ljama/Matrix;)Ljama/Matrix;
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v4, v3, v1

    aget-object v3, v3, v1

    aget-wide v5, v3, v2

    iget-object v3, p1, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget-wide v7, v3, v2

    div-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public arrayTimes(Ljama/Matrix;)Ljama/Matrix;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    .line 2
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 3
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    iget-object v6, p1, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v9, v6, v4

    mul-double v7, v7, v9

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public arrayTimesEquals(Ljama/Matrix;)Ljama/Matrix;
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v4, v3, v1

    aget-object v3, v3, v1

    aget-wide v5, v3, v2

    iget-object v3, p1, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget-wide v7, v3, v2

    mul-double v5, v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public chol()Ljama/CholeskyDecomposition;
    .locals 1

    .line 1
    new-instance v0, Ljama/CholeskyDecomposition;

    invoke-direct {v0, p0}, Ljama/CholeskyDecomposition;-><init>(Ljama/Matrix;)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljama/Matrix;->copy()Ljama/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public cond()D
    .locals 2

    .line 1
    new-instance v0, Ljama/SingularValueDecomposition;

    invoke-direct {v0, p0}, Ljama/SingularValueDecomposition;-><init>(Ljama/Matrix;)V

    invoke-virtual {v0}, Ljama/SingularValueDecomposition;->cond()D

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public det()D
    .locals 2

    .line 1
    new-instance v0, Ljama/LUDecomposition;

    invoke-direct {v0, p0}, Ljama/LUDecomposition;-><init>(Ljama/Matrix;)V

    invoke-virtual {v0}, Ljama/LUDecomposition;->det()D

    move-result-wide v0

    return-wide v0
.end method

.method public eig()Ljama/EigenvalueDecomposition;
    .locals 1

    .line 1
    new-instance v0, Ljama/EigenvalueDecomposition;

    invoke-direct {v0, p0}, Ljama/EigenvalueDecomposition;-><init>(Ljama/Matrix;)V

    return-object v0
.end method

.method public gemm(Ljama/Matrix;Ljama/Matrix;DD)Ljama/Matrix;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v1, Ljama/Matrix;->n:I

    .line 2
    new-instance v4, Ljama/Matrix;

    iget v5, v0, Ljama/Matrix;->m:I

    invoke-direct {v4, v5, v3}, Ljama/Matrix;-><init>(II)V

    const-wide/16 v5, 0x0

    const-string v7, "Matrix inner dimensions must agree."

    if-nez v2, :cond_4

    .line 3
    iget v2, v1, Ljama/Matrix;->m:I

    iget v8, v0, Ljama/Matrix;->n:I

    if-ne v2, v8, :cond_3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 4
    iget v2, v0, Ljama/Matrix;->m:I

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 5
    iget v7, v0, Ljama/Matrix;->n:I

    move-wide v8, v5

    :goto_1
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_1

    .line 6
    iget-object v10, v0, Ljama/Matrix;->A:[[D

    aget-object v10, v10, v2

    aget-wide v11, v10, v7

    iget-object v10, v1, Ljama/Matrix;->A:[[D

    aget-object v10, v10, v7

    aget-wide v13, v10, v3

    mul-double v11, v11, v13

    add-double/2addr v8, v11

    goto :goto_1

    .line 7
    :cond_1
    iget-object v7, v4, Ljama/Matrix;->A:[[D

    aget-object v7, v7, v2

    mul-double v8, v8, p3

    aput-wide v8, v7, v3

    goto :goto_0

    :cond_2
    return-object v4

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    iget v8, v1, Ljama/Matrix;->m:I

    iget v9, v0, Ljama/Matrix;->n:I

    if-ne v8, v9, :cond_9

    .line 10
    iget v7, v2, Ljama/Matrix;->m:I

    iget v8, v0, Ljama/Matrix;->m:I

    if-ne v7, v8, :cond_8

    iget v7, v2, Ljama/Matrix;->n:I

    if-ne v7, v3, :cond_8

    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 11
    iget v7, v0, Ljama/Matrix;->m:I

    :goto_2
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_5

    .line 12
    iget v8, v0, Ljama/Matrix;->n:I

    move-wide v9, v5

    :goto_3
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_6

    .line 13
    iget-object v11, v0, Ljama/Matrix;->A:[[D

    aget-object v11, v11, v7

    aget-wide v12, v11, v8

    iget-object v11, v1, Ljama/Matrix;->A:[[D

    aget-object v11, v11, v8

    aget-wide v14, v11, v3

    mul-double v12, v12, v14

    add-double/2addr v9, v12

    goto :goto_3

    .line 14
    :cond_6
    iget-object v8, v4, Ljama/Matrix;->A:[[D

    aget-object v8, v8, v7

    mul-double v9, v9, p3

    iget-object v11, v2, Ljama/Matrix;->A:[[D

    aget-object v11, v11, v7

    aget-wide v12, v11, v3

    mul-double v11, p5, v12

    add-double/2addr v9, v11

    aput-wide v9, v8, v3

    goto :goto_2

    :cond_7
    return-object v4

    .line 15
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incompatible result matrix."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(II)D
    .locals 2

    .line 1
    iget-object v0, p0, Ljama/Matrix;->A:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public getArray()[[D
    .locals 1

    .line 1
    iget-object v0, p0, Ljama/Matrix;->A:[[D

    return-object v0
.end method

.method public getArrayCopy()[[D
    .locals 8

    .line 1
    iget v0, p0, Ljama/Matrix;->m:I

    iget v1, p0, Ljama/Matrix;->n:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Ljama/Matrix;->m:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget v4, p0, Ljama/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 4
    aget-object v4, v0, v2

    iget-object v5, p0, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 1
    iget v0, p0, Ljama/Matrix;->n:I

    return v0
.end method

.method public getColumnPackedCopy()[D
    .locals 8

    .line 1
    iget v0, p0, Ljama/Matrix;->m:I

    iget v1, p0, Ljama/Matrix;->n:I

    mul-int v0, v0, v1

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Ljama/Matrix;->m:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget v4, p0, Ljama/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 4
    iget v4, p0, Ljama/Matrix;->m:I

    mul-int v4, v4, v3

    add-int/2addr v4, v2

    iget-object v5, p0, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMatrix(IIII)Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p4, p3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_1

    move v3, p3

    :goto_1
    if-gt v3, p4, :cond_0

    sub-int v4, v2, p1

    .line 3
    :try_start_0
    aget-object v4, v1, v4

    sub-int v5, v3, p3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    aput-wide v7, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMatrix(II[I)Ljama/Matrix;
    .locals 8

    .line 11
    new-instance v0, Ljama/Matrix;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p3

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 12
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_1

    const/4 v3, 0x0

    .line 13
    :goto_1
    :try_start_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    sub-int v4, v2, p1

    .line 14
    aget-object v4, v1, v4

    iget-object v5, p0, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget v6, p3, v3

    aget-wide v6, v5, v6

    aput-wide v6, v4, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public getMatrix([III)Ljama/Matrix;
    .locals 9

    .line 16
    new-instance v0, Ljama/Matrix;

    array-length v1, p1

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 17
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, p2

    :goto_1
    if-gt v3, p3, :cond_0

    .line 19
    aget-object v4, v1, v2

    sub-int v5, v3, p2

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget v7, p1, v2

    aget-object v6, v6, v7

    aget-wide v7, v6, v3

    aput-wide v7, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 20
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMatrix([I[I)Ljama/Matrix;
    .locals 9

    .line 5
    new-instance v0, Ljama/Matrix;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 6
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 8
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 9
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget v7, p1, v3

    aget-object v6, v6, v7

    aget v7, p2, v4

    aget-wide v7, v6, v7

    aput-wide v7, v5, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 10
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRowDimension()I
    .locals 1

    .line 1
    iget v0, p0, Ljama/Matrix;->m:I

    return v0
.end method

.method public getRowPackedCopy()[D
    .locals 8

    .line 1
    iget v0, p0, Ljama/Matrix;->m:I

    iget v1, p0, Ljama/Matrix;->n:I

    mul-int v0, v0, v1

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Ljama/Matrix;->m:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget v4, p0, Ljama/Matrix;->n:I

    if-ge v3, v4, :cond_0

    mul-int v4, v4, v2

    add-int/2addr v4, v3

    .line 4
    iget-object v5, p0, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public identity()Ljama/Matrix;
    .locals 8

    .line 4
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 5
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 7
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_1

    .line 8
    aget-object v5, v1, v3

    if-ne v3, v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    :goto_2
    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public inverse()Ljama/Matrix;
    .locals 1

    .line 1
    iget v0, p0, Ljama/Matrix;->m:I

    invoke-static {v0, v0}, Ljama/Matrix;->identity(II)Ljama/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljama/Matrix;->solve(Ljama/Matrix;)Ljama/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public lu()Ljama/LUDecomposition;
    .locals 1

    .line 1
    new-instance v0, Ljama/LUDecomposition;

    invoke-direct {v0, p0}, Ljama/LUDecomposition;-><init>(Ljama/Matrix;)V

    return-object v0
.end method

.method public minus(Ljama/Matrix;)Ljama/Matrix;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    .line 2
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 3
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    iget-object v6, p1, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v9, v6, v4

    sub-double/2addr v7, v9

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public minusEquals(Ljama/Matrix;)Ljama/Matrix;
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v4, v3, v1

    aget-object v3, v3, v1

    aget-wide v5, v3, v2

    iget-object v3, p1, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget-wide v7, v3, v2

    sub-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public norm1()D
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v6, p0, Ljama/Matrix;->n:I

    if-ge v3, v6, :cond_1

    move-wide v7, v1

    const/4 v6, 0x0

    .line 2
    :goto_1
    iget v9, p0, Ljama/Matrix;->m:I

    if-ge v6, v9, :cond_0

    .line 3
    iget-object v9, p0, Ljama/Matrix;->A:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public norm2()D
    .locals 2

    .line 1
    new-instance v0, Ljama/SingularValueDecomposition;

    invoke-direct {v0, p0}, Ljama/SingularValueDecomposition;-><init>(Ljama/Matrix;)V

    invoke-virtual {v0}, Ljama/SingularValueDecomposition;->norm2()D

    move-result-wide v0

    return-wide v0
.end method

.method public normF()D
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 2
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 3
    iget-object v5, p0, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    invoke-static {v1, v2, v6, v7}, Ljama/a/a;->a(DD)D

    move-result-wide v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public normInf()D
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v6, p0, Ljama/Matrix;->m:I

    if-ge v3, v6, :cond_1

    move-wide v7, v1

    const/4 v6, 0x0

    .line 2
    :goto_1
    iget v9, p0, Ljama/Matrix;->n:I

    if-ge v6, v9, :cond_0

    .line 3
    iget-object v9, p0, Ljama/Matrix;->A:[[D

    aget-object v9, v9, v3

    aget-wide v10, v9, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public plus(Ljama/Matrix;)Ljama/Matrix;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    .line 2
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 3
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    iget-object v6, p1, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v9, v6, v4

    add-double/2addr v7, v9

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public plusEquals(Ljama/Matrix;)Ljama/Matrix;
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Ljama/Matrix;->checkMatrixDimensions(Ljama/Matrix;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v4, v3, v1

    aget-object v3, v3, v1

    aget-wide v5, v3, v2

    iget-object v3, p1, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget-wide v7, v3, v2

    add-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public print(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Ljama/Matrix;->print(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public print(Ljava/io/PrintWriter;II)V
    .locals 3

    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 3
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 5
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 6
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 p3, 0x0

    .line 7
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    add-int/lit8 p2, p2, 0x2

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Ljama/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    return-void
.end method

.method public print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V
    .locals 7

    .line 10
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 12
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_1

    .line 13
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    invoke-virtual {p2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_0

    const/16 v6, 0x20

    .line 15
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public print(Ljava/text/NumberFormat;I)V
    .locals 3

    .line 9
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Ljama/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    return-void
.end method

.method public qr()Ljama/QRDecomposition;
    .locals 1

    .line 1
    new-instance v0, Ljama/QRDecomposition;

    invoke-direct {v0, p0}, Ljama/QRDecomposition;-><init>(Ljama/Matrix;)V

    return-object v0
.end method

.method public rank()I
    .locals 1

    .line 1
    new-instance v0, Ljama/SingularValueDecomposition;

    invoke-direct {v0, p0}, Ljama/SingularValueDecomposition;-><init>(Ljama/Matrix;)V

    invoke-virtual {v0}, Ljama/SingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public set(IID)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljama/Matrix;->A:[[D

    aget-object p1, v0, p1

    aput-wide p3, p1, p2

    return-void
.end method

.method public setMatrix(IIIILjama/Matrix;)V
    .locals 5

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    move v1, p3

    :goto_1
    if-gt v1, p4, :cond_0

    .line 1
    :try_start_0
    iget-object v2, p0, Ljama/Matrix;->A:[[D

    aget-object v2, v2, v0

    sub-int v3, v0, p1

    sub-int v4, v1, p3

    invoke-virtual {p5, v3, v4}, Ljama/Matrix;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMatrix(II[ILjama/Matrix;)V
    .locals 6

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    const/4 v1, 0x0

    .line 10
    :goto_1
    :try_start_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 11
    iget-object v2, p0, Ljama/Matrix;->A:[[D

    aget-object v2, v2, v0

    aget v3, p3, v1

    sub-int v4, v0, p1

    invoke-virtual {p4, v4, v1}, Ljama/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public setMatrix([IIILjama/Matrix;)V
    .locals 5

    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    move v1, p2

    :goto_1
    if-gt v1, p3, :cond_0

    .line 8
    iget-object v2, p0, Ljama/Matrix;->A:[[D

    aget v3, p1, v0

    aget-object v2, v2, v3

    sub-int v3, v1, p2

    invoke-virtual {p4, v0, v3}, Ljama/Matrix;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 9
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMatrix([I[ILjama/Matrix;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget v4, p1, v1

    aget-object v3, v3, v4

    aget v4, p2, v2

    invoke-virtual {p3, v1, v2}, Ljama/Matrix;->get(II)D

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :catch_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Submatrix indices"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public solve(Ljama/Matrix;)Ljama/Matrix;
    .locals 2

    .line 1
    iget v0, p0, Ljama/Matrix;->m:I

    iget v1, p0, Ljama/Matrix;->n:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljama/LUDecomposition;

    invoke-direct {v0, p0}, Ljama/LUDecomposition;-><init>(Ljama/Matrix;)V

    invoke-virtual {v0, p1}, Ljama/LUDecomposition;->solve(Ljama/Matrix;)Ljama/Matrix;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljama/QRDecomposition;

    invoke-direct {v0, p0}, Ljama/QRDecomposition;-><init>(Ljama/Matrix;)V

    invoke-virtual {v0, p1}, Ljama/QRDecomposition;->solve(Ljama/Matrix;)Ljama/Matrix;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public solveTranspose(Ljama/Matrix;)Ljama/Matrix;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljama/Matrix;->transpose()Ljama/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Ljama/Matrix;->transpose()Ljama/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljama/Matrix;->solve(Ljama/Matrix;)Ljama/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public svd()Ljama/SingularValueDecomposition;
    .locals 1

    .line 1
    new-instance v0, Ljama/SingularValueDecomposition;

    invoke-direct {v0, p0}, Ljama/SingularValueDecomposition;-><init>(Ljama/Matrix;)V

    return-object v0
.end method

.method public times(D)Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    mul-double v7, v7, p1

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public times(Ljama/Matrix;)Ljama/Matrix;
    .locals 14

    .line 6
    iget v0, p1, Ljama/Matrix;->m:I

    iget v1, p0, Ljama/Matrix;->n:I

    if-ne v0, v1, :cond_4

    .line 7
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p1, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 8
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    .line 9
    iget v2, p0, Ljama/Matrix;->n:I

    new-array v2, v2, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10
    :goto_0
    iget v5, p1, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_3

    const/4 v5, 0x0

    .line 11
    :goto_1
    iget v6, p0, Ljama/Matrix;->n:I

    if-ge v5, v6, :cond_0

    .line 12
    iget-object v6, p1, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v5

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 13
    :goto_2
    iget v6, p0, Ljama/Matrix;->m:I

    if-ge v5, v6, :cond_2

    .line 14
    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 15
    :goto_3
    iget v10, p0, Ljama/Matrix;->n:I

    if-ge v9, v10, :cond_1

    .line 16
    aget-wide v10, v6, v9

    aget-wide v12, v2, v9

    mul-double v10, v10, v12

    add-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 17
    :cond_1
    aget-object v6, v1, v5

    aput-wide v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix inner dimensions must agree."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timesEquals(D)Ljama/Matrix;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Ljama/Matrix;->m:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2
    :goto_1
    iget v3, p0, Ljama/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v4, v3, v1

    aget-object v3, v3, v1

    aget-wide v5, v3, v2

    mul-double v5, v5, p1

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    .line 14
    :goto_0
    iget v3, p0, Ljama/Matrix;->m:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 15
    :goto_1
    iget v4, p0, Ljama/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljama/Matrix;->A:[[D

    aget-object v1, v1, v2

    aget-wide v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toString(II)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 2
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 4
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 5
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    add-int/lit8 p1, p1, 0x2

    const-string v2, ""

    const/4 v3, 0x0

    .line 7
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_1

    .line 9
    iget-object v5, p0, Ljama/Matrix;->A:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, p1, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_0

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public trace()D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Ljama/Matrix;->m:I

    iget v4, p0, Ljama/Matrix;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2
    iget-object v3, p0, Ljama/Matrix;->A:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public transpose()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->n:I

    iget v2, p0, Ljama/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, v1, v4

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aput-wide v7, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public uminus()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/Matrix;->m:I

    iget v2, p0, Ljama/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/Matrix;->m:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/Matrix;->n:I

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    neg-double v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
