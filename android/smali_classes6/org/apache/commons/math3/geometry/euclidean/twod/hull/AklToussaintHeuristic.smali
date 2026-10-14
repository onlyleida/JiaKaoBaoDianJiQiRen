.class public final Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildQuadrilateral([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static insideQuadrilateral(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v2, 0x1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v1, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v1, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, v6

    .line 6
    :goto_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 7
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v8

    mul-double v8, v8, v4

    const-wide/16 v10, 0x0

    cmpg-double v3, v8, v10

    if-gez v3, :cond_3

    return v0

    :cond_3
    move-object v3, v7

    goto :goto_0

    :cond_4
    :goto_2
    return v2
.end method

.method public static reducePoints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    :cond_0
    move-object v2, v7

    :cond_1
    if-eqz v4, :cond_2

    .line 3
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-lez v12, :cond_3

    :cond_2
    move-object v4, v7

    :cond_3
    if-eqz v3, :cond_4

    .line 4
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    cmpg-double v12, v8, v10

    if-gez v12, :cond_5

    :cond_4
    move-object v3, v7

    :cond_5
    if-eqz v5, :cond_6

    .line 5
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-lez v12, :cond_7

    :cond_6
    move-object v5, v7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x4

    if-ge v6, v0, :cond_9

    return-object p0

    :cond_9
    new-array v0, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 6
    invoke-static {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;->buildQuadrilateral([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_a

    return-object p0

    .line 8
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 10
    invoke-static {v2, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AklToussaintHeuristic;->insideQuadrilateral(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    return-object v1
.end method
