.class public Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;,
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;,
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final identifiers:[[J

.field private final neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field private final network:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field private final numberOfColumns:I

.field private final numberOfRows:I

.field private final wrapColumns:Z

.field private final wrapRows:Z


# direct methods
.method public constructor <init>(IZIZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-lt p1, v0, :cond_4

    if-lt p3, v0, :cond_3

    .line 19
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 20
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 21
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 22
    iput-boolean p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 23
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    new-array p2, v0, [I

    aput p3, p2, v2

    const/4 p4, 0x0

    aput p1, p2, p4

    .line 24
    const-class p5, J

    invoke-static {p5, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[J

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 25
    array-length p2, p6

    .line 26
    new-instance p5, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v0, 0x0

    invoke-direct {p5, v0, v1, p2}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 27
    new-array v1, p2, [D

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_0

    .line 28
    aget-object v3, p6, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;->value()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v2, v2, p5

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    return-void

    .line 31
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 32
    :cond_4
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method private constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;Lorg/apache/commons/math3/ml/neuralnet/Network;[[J)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    array-length v0, p5

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    const/4 v0, 0x0

    .line 35
    aget-object v0, p5, v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 36
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 37
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 38
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 39
    iput-object p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 40
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    return-void
.end method

.method constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p4

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    const/4 v1, 0x0

    .line 3
    aget-object v2, p4, v1

    array-length v2, v2

    iput v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-lt v0, v4, :cond_3

    if-lt v2, v4, :cond_2

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 7
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 8
    aget-object p1, p4, v1

    aget-object p1, p1, v1

    array-length p1, p1

    .line 9
    new-instance p2, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v5, 0x0

    invoke-direct {p2, v5, v6, p1}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    new-array p1, v4, [I

    aput v2, p1, v3

    aput v0, p1, v1

    .line 10
    const-class p2, J

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    const/4 p1, 0x0

    .line 11
    :goto_0
    iget p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge p1, p2, :cond_1

    const/4 p2, 0x0

    .line 12
    :goto_1
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge p2, p3, :cond_0

    .line 13
    iget-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object p3, p3, p1

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    aget-object v2, p4, p1

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v2

    aput-wide v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    return-void

    .line 15
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v5, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v5, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private createLinks()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v5, v6, :cond_1c

    const/4 v6, 0x0

    .line 5
    :goto_1
    iget v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v6, v7, :cond_1b

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    sget-object v7, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood:[I

    iget-object v8, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_1
    if-lez v5, :cond_3

    if-lez v6, :cond_2

    .line 9
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ge v6, v3, :cond_3

    .line 10
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-ge v5, v1, :cond_5

    if-lez v6, :cond_4

    .line 11
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ge v6, v3, :cond_5

    .line 12
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_5
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v7, :cond_9

    if-nez v5, :cond_7

    if-lez v6, :cond_6

    .line 14
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ge v6, v3, :cond_9

    .line 15
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-ne v5, v1, :cond_9

    if-lez v6, :cond_8

    .line 16
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-ge v6, v3, :cond_9

    .line 17
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_9
    :goto_2
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v7, :cond_d

    if-nez v6, :cond_b

    if-lez v5, :cond_a

    .line 19
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-ge v5, v1, :cond_d

    .line 20
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    if-ne v6, v3, :cond_d

    if-lez v5, :cond_c

    .line 21
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-ge v5, v1, :cond_d

    .line 22
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_d
    :goto_3
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v7, :cond_11

    if-nez v5, :cond_e

    if-nez v6, :cond_e

    .line 24
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    if-nez v5, :cond_f

    if-ne v6, v3, :cond_f

    .line 25
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    if-ne v5, v1, :cond_10

    if-nez v6, :cond_10

    .line 26
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    if-ne v5, v1, :cond_11

    if-ne v6, v3, :cond_11

    .line 27
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_4
    if-lez v5, :cond_12

    .line 28
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-ge v5, v1, :cond_13

    .line 29
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_13
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v7, :cond_15

    if-nez v5, :cond_14

    .line 31
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    if-ne v5, v1, :cond_15

    .line 32
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_5
    if-lez v6, :cond_16

    .line 33
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    if-ge v6, v3, :cond_17

    .line 34
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_17
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v7, :cond_19

    if-nez v6, :cond_18

    .line 36
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_18
    if-ne v6, v3, :cond_19

    .line 37
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_19
    :goto_6
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v8, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v6

    invoke-virtual {v7, v9, v10}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v7

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 40
    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v11, v9, v10}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v9

    .line 41
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v10, v7, v9}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    goto :goto_7

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1c
    return-void
.end method

.method private getLocation(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)[I
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p3, v4, :cond_2

    if-eq p3, v3, :cond_1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    :goto_0
    add-int/2addr p2, p3

    .line 3
    iget-boolean p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz p3, :cond_4

    if-gez p2, :cond_3

    .line 4
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/2addr p2, p3

    goto :goto_1

    .line 5
    :cond_3
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    rem-int/2addr p2, p3

    .line 6
    :cond_4
    :goto_1
    sget-object p3, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    if-eq p3, v4, :cond_7

    if-eq p3, v3, :cond_6

    if-ne p3, v1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    .line 7
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    :cond_6
    const/4 v0, 0x1

    :cond_7
    :goto_2
    add-int/2addr p1, v0

    .line 8
    iget-boolean p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz p3, :cond_9

    if-gez p1, :cond_8

    .line 9
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/2addr p1, p3

    goto :goto_3

    .line 10
    :cond_8
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    rem-int/2addr p1, p3

    :cond_9
    :goto_3
    if-ltz p1, :cond_b

    .line 11
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge p1, p3, :cond_b

    if-ltz p2, :cond_b

    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-lt p2, p3, :cond_a

    goto :goto_4

    :cond_a
    new-array p3, v3, [I

    aput p1, p3, v2

    aput p2, p3, v4

    return-object p3

    :cond_b
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, [D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v3, v4, :cond_0

    .line 4
    aget-object v4, v0, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;

    iget-boolean v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    iget-boolean v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copy()Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, J

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[J

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, v7, v0

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v4, v4, v0

    aget-wide v5, v4, v2

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    iget-boolean v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->copy()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;Lorg/apache/commons/math3/ml/neuralnet/Network;[[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    return-object v0
.end method

.method public getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 2
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    .line 3
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge p2, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object p1, v1, p1

    aget-wide v1, p1, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 6
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getLocation(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)[I

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8
    aget p2, p1, p2

    const/4 p3, 0x1

    aget p1, p1, p3

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/ml/neuralnet/Neuron;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ml/neuralnet/Network;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
