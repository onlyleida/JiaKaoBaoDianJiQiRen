.class public Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 5
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 6
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 7

    .line 7
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public angleToInZ(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v0, v2

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceTo3D(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 8

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, v4

    .line 3
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v4, v6

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    mul-double v4, v4, v4

    add-double/2addr v0, v4

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceToLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v7, v3, v5

    .line 2
    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v13, v9, v11

    mul-double v15, v7, v7

    mul-double v17, v13, v13

    add-double v15, v15, v17

    const-wide v17, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v15, v17

    if-gez v2, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    return-wide v1

    .line 4
    :cond_0
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v17, v1, v3

    sub-double v5, v3, v5

    mul-double v17, v17, v5

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v19, v5, v9

    sub-double v11, v9, v11

    mul-double v19, v19, v11

    add-double v17, v17, v19

    div-double v17, v17, v15

    mul-double v7, v7, v17

    add-double/2addr v3, v7

    mul-double v17, v17, v13

    add-double v9, v9, v17

    sub-double/2addr v3, v1

    sub-double/2addr v9, v5

    mul-double v3, v3, v3

    mul-double v9, v9, v9

    add-double/2addr v3, v9

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method public dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ignoreZ()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object p0
.end method

.method public meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object p0
.end method

.method public model()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public move(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object p0
.end method

.method public projectOn(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public rotate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v4, v0, p1

    mul-double v6, v2, p3

    sub-double/2addr v4, v6

    .line 3
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, p3

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object p0
.end method

.method public rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 5
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    .line 6
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    mul-double v10, v2, p2

    mul-double v12, v6, p4

    sub-double/2addr v10, v12

    mul-double v2, v2, p4

    mul-double v6, v6, p2

    add-double/2addr v2, v6

    add-double/2addr v10, v4

    .line 7
    iput-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v2, v8

    .line 8
    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v0
.end method

.method public scale(D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object p0
.end method

.method public setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 5
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object p0
.end method

.method public setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 6
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 7
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 8
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object p0
.end method

.method public setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pos{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object p0
.end method

.method public translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 4

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v2, v2, v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v4, v4, v4

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v6, v6, v6

    add-double/2addr v4, v6

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double v1, v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 4

    .line 3
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double v0, v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v2, v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p2
.end method
