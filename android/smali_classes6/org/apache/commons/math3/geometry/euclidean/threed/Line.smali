.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final tolerance:D

.field private zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 6
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 7
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    return-void
.end method


# virtual methods
.method public closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    mul-double v4, v2, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    .line 2
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpg-double v8, v6, v4

    if-gez v8, :cond_0

    .line 3
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v1

    .line 4
    :cond_0
    iget-object v4, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v8

    .line 6
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    .line 7
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v4, v4, v2

    sub-double/2addr v8, v4

    div-double v14, v8, v6

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v10, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)D
    .locals 6

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    .line 6
    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 7
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v3

    div-double/2addr v3, v1

    .line 9
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 2
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v5, v0

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v4, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_1

    :cond_0
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    .line 1
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 2
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNormSq()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-direct {p2, v2, v3, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 4
    new-instance p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    neg-double v4, v4

    div-double/2addr v4, v0

    move-object v0, p2

    move-wide v1, v2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->zero:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->direction:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public wholeLine()Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    return-object v0
.end method
