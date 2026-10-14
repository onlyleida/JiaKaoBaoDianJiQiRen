.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

.field private static final serialVersionUID:J = -0x1de3341942831b79L


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    sput-object v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p9, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v2, p1, p1

    mul-double v4, p3, p3

    add-double/2addr v2, v4

    mul-double v4, p5, p5

    add-double/2addr v2, v4

    mul-double v4, p7, p7

    add-double/2addr v2, v4

    .line 2
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    mul-double p1, p1, v0

    mul-double p3, p3, v0

    mul-double p5, p5, v0

    mul-double p7, p7, v0

    .line 3
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 5
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 6
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;DDD)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 58
    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p4

    invoke-direct {p3, p4, p5, p6, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 59
    new-instance p4, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-direct {p4, p1, p7, p8, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 60
    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    .line 61
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 62
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 63
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 64
    iget-wide p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 10
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p4, v2, :cond_0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_0
    mul-double p2, p2, v2

    .line 11
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    .line 12
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p2

    mul-double p2, p2, v2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p2

    mul-double p2, p2, v2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 15
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    mul-double v2, v2, p1

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 16
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    const-wide v6, -0x4010000000000012L    # -0.999999999999998

    mul-double v6, v6, v0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 44
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 45
    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 46
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 47
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double v4, v4, v2

    .line 49
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    div-double/2addr v6, v2

    .line 50
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    mul-double v0, v0, v6

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 52
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    mul-double v0, v0, v6

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 53
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    mul-double v6, v6, p1

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    move-object/from16 v2, p1

    .line 30
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 32
    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    move-object/from16 v5, p3

    .line 33
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 34
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [[D

    new-array v9, v7, [D

    .line 35
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v14

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v20

    invoke-static/range {v10 .. v21}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v23

    invoke-static/range {v13 .. v24}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    const/4 v13, 0x1

    aput-wide v10, v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v14

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v20

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v22

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v24

    invoke-static/range {v14 .. v25}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    const/4 v14, 0x2

    aput-wide v10, v9, v14

    aput-object v9, v8, v12

    new-array v9, v7, [D

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v14

    aput-object v9, v8, v13

    new-array v9, v7, [D

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    aput-wide v1, v9, v14

    aput-object v9, v8, v14

    .line 36
    invoke-static {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v1

    .line 37
    aget-wide v2, v1, v12

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 38
    aget-wide v2, v1, v13

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 39
    aget-wide v2, v1, v14

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 40
    aget-wide v2, v1, v7

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>([[DD)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v4

    array-length v2, v2

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v6

    array-length v2, v2

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v5

    array-length v2, v2

    if-ne v2, v3, :cond_1

    .line 19
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->orthogonalizeMatrix([[DD)[[D

    move-result-object v1

    .line 20
    aget-object v2, v1, v4

    aget-wide v7, v2, v4

    aget-object v2, v1, v6

    aget-wide v9, v2, v6

    aget-object v2, v1, v5

    aget-wide v11, v2, v5

    mul-double v9, v9, v11

    aget-object v2, v1, v5

    aget-wide v11, v2, v6

    aget-object v2, v1, v6

    aget-wide v13, v2, v5

    mul-double v11, v11, v13

    sub-double/2addr v9, v11

    mul-double v7, v7, v9

    aget-object v2, v1, v6

    aget-wide v9, v2, v4

    aget-object v2, v1, v4

    aget-wide v11, v2, v6

    aget-object v2, v1, v5

    aget-wide v13, v2, v5

    mul-double v11, v11, v13

    aget-object v2, v1, v5

    aget-wide v13, v2, v6

    aget-object v2, v1, v4

    aget-wide v15, v2, v5

    mul-double v13, v13, v15

    sub-double/2addr v11, v13

    mul-double v9, v9, v11

    sub-double/2addr v7, v9

    aget-object v2, v1, v5

    aget-wide v9, v2, v4

    aget-object v2, v1, v4

    aget-wide v11, v2, v6

    aget-object v2, v1, v6

    aget-wide v13, v2, v5

    mul-double v11, v11, v13

    aget-object v2, v1, v6

    aget-wide v13, v2, v6

    aget-object v2, v1, v4

    aget-wide v15, v2, v5

    mul-double v13, v13, v15

    sub-double/2addr v11, v13

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_0

    .line 21
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v1

    .line 22
    aget-wide v7, v1, v4

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 23
    aget-wide v6, v1, v6

    iput-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 24
    aget-wide v4, v1, v5

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 25
    aget-wide v2, v1, v3

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 26
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 27
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    aget-object v1, v1, v4

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v6, v2, v4

    iget-wide v8, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v14, v8, v12

    move-object/from16 v16, v11

    iget-wide v10, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v17, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v19, v10, v2

    add-double v14, v14, v19

    move-wide/from16 v19, v2

    iget-wide v1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v21, v10

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v23, v1, v10

    add-double v14, v14, v23

    sub-double/2addr v6, v14

    mul-double v14, v8, v4

    mul-double v23, v17, v12

    add-double v14, v14, v23

    mul-double v23, v21, v10

    mul-double v25, v1, v19

    sub-double v23, v23, v25

    add-double v14, v14, v23

    mul-double v23, v21, v4

    mul-double v25, v17, v19

    add-double v23, v23, v25

    mul-double v25, v1, v12

    mul-double v27, v8, v10

    sub-double v25, v25, v27

    add-double v23, v23, v25

    mul-double v1, v1, v4

    mul-double v3, v17, v10

    add-double/2addr v1, v3

    mul-double v8, v8, v19

    mul-double v10, v21, v12

    sub-double/2addr v8, v10

    add-double/2addr v8, v1

    const/4 v10, 0x0

    move-object/from16 v1, v16

    move-wide v2, v6

    move-wide v4, v14

    move-wide/from16 v6, v23

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v16
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v4, v2

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v4, v4, v6

    iget-wide v8, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v14, v8, v12

    move-object/from16 v16, v11

    iget-wide v10, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v17, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v19, v10, v2

    add-double v14, v14, v19

    move-wide/from16 v19, v2

    iget-wide v1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v21, v10

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v23, v1, v10

    add-double v14, v14, v23

    sub-double v3, v4, v14

    neg-double v14, v8

    mul-double v14, v14, v6

    mul-double v23, v17, v12

    add-double v14, v14, v23

    mul-double v23, v21, v10

    mul-double v25, v1, v19

    sub-double v23, v23, v25

    add-double v14, v14, v23

    move-wide/from16 v23, v14

    move-wide/from16 v14, v21

    move-wide/from16 v21, v3

    neg-double v3, v14

    mul-double v3, v3, v6

    mul-double v25, v17, v19

    add-double v3, v3, v25

    mul-double v25, v1, v12

    mul-double v27, v8, v10

    sub-double v25, v25, v27

    add-double v25, v3, v25

    neg-double v1, v1

    mul-double v1, v1, v6

    mul-double v3, v17, v10

    add-double/2addr v1, v3

    mul-double v8, v8, v19

    mul-double v10, v14, v12

    sub-double/2addr v8, v10

    add-double/2addr v8, v1

    const/4 v10, 0x0

    move-object/from16 v1, v16

    move-wide/from16 v2, v21

    move-wide/from16 v4, v23

    move-wide/from16 v6, v25

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v16
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide p0

    return-wide p0
.end method

.method private static mat2quat([[D)[D
    .locals 19

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 1
    aget-object v2, p0, v1

    aget-wide v3, v2, v1

    const/4 v2, 0x1

    aget-object v5, p0, v2

    aget-wide v6, v5, v2

    add-double/2addr v3, v6

    const/4 v5, 0x2

    aget-object v6, p0, v5

    aget-wide v7, v6, v5

    add-double/2addr v3, v7

    const-wide v6, -0x4037ae147ae147aeL    # -0.19

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const/4 v14, 0x3

    cmpl-double v15, v3, v6

    if-lez v15, :cond_0

    add-double/2addr v3, v10

    .line 2
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v12

    aput-wide v3, v0, v1

    .line 3
    aget-wide v3, v0, v1

    div-double/2addr v8, v3

    .line 4
    aget-object v3, p0, v2

    aget-wide v6, v3, v5

    aget-object v3, p0, v5

    aget-wide v10, v3, v2

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v2

    .line 5
    aget-object v3, p0, v5

    aget-wide v6, v3, v1

    aget-object v3, p0, v1

    aget-wide v10, v3, v5

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v5

    .line 6
    aget-object v3, p0, v1

    aget-wide v4, v3, v2

    aget-object v2, p0, v2

    aget-wide v1, v2, v1

    sub-double/2addr v4, v1

    mul-double v8, v8, v4

    aput-wide v8, v0, v14

    goto/16 :goto_0

    .line 7
    :cond_0
    aget-object v3, p0, v1

    aget-wide v15, v3, v1

    aget-object v3, p0, v2

    aget-wide v17, v3, v2

    sub-double v15, v15, v17

    aget-object v3, p0, v5

    aget-wide v17, v3, v5

    sub-double v15, v15, v17

    cmpl-double v3, v15, v6

    if-lez v3, :cond_1

    add-double/2addr v15, v10

    .line 8
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v12

    aput-wide v3, v0, v2

    .line 9
    aget-wide v3, v0, v2

    div-double/2addr v8, v3

    .line 10
    aget-object v3, p0, v2

    aget-wide v6, v3, v5

    aget-object v3, p0, v5

    aget-wide v10, v3, v2

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v1

    .line 11
    aget-object v3, p0, v1

    aget-wide v6, v3, v2

    aget-object v2, p0, v2

    aget-wide v3, v2, v1

    add-double/2addr v6, v3

    mul-double v6, v6, v8

    aput-wide v6, v0, v5

    .line 12
    aget-object v2, p0, v1

    aget-wide v3, v2, v5

    aget-object v2, p0, v5

    aget-wide v1, v2, v1

    add-double/2addr v3, v1

    mul-double v8, v8, v3

    aput-wide v8, v0, v14

    goto/16 :goto_0

    .line 13
    :cond_1
    aget-object v3, p0, v2

    aget-wide v15, v3, v2

    aget-object v3, p0, v1

    aget-wide v17, v3, v1

    sub-double v15, v15, v17

    aget-object v3, p0, v5

    aget-wide v17, v3, v5

    sub-double v15, v15, v17

    cmpl-double v3, v15, v6

    if-lez v3, :cond_2

    add-double/2addr v15, v10

    .line 14
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v12

    aput-wide v3, v0, v5

    .line 15
    aget-wide v3, v0, v5

    div-double/2addr v8, v3

    .line 16
    aget-object v3, p0, v5

    aget-wide v6, v3, v1

    aget-object v3, p0, v1

    aget-wide v10, v3, v5

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v1

    .line 17
    aget-object v3, p0, v1

    aget-wide v6, v3, v2

    aget-object v3, p0, v2

    aget-wide v10, v3, v1

    add-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v2

    .line 18
    aget-object v1, p0, v5

    aget-wide v3, v1, v2

    aget-object v1, p0, v2

    aget-wide v5, v1, v5

    add-double/2addr v3, v5

    mul-double v8, v8, v3

    aput-wide v8, v0, v14

    goto :goto_0

    .line 19
    :cond_2
    aget-object v3, p0, v5

    aget-wide v6, v3, v5

    aget-object v3, p0, v1

    aget-wide v15, v3, v1

    sub-double/2addr v6, v15

    aget-object v3, p0, v2

    aget-wide v15, v3, v2

    sub-double/2addr v6, v15

    add-double/2addr v6, v10

    .line 20
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v12

    aput-wide v3, v0, v14

    .line 21
    aget-wide v3, v0, v14

    div-double/2addr v8, v3

    .line 22
    aget-object v3, p0, v1

    aget-wide v6, v3, v2

    aget-object v3, p0, v2

    aget-wide v10, v3, v1

    sub-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v1

    .line 23
    aget-object v3, p0, v1

    aget-wide v6, v3, v5

    aget-object v3, p0, v5

    aget-wide v10, v3, v1

    add-double/2addr v6, v10

    mul-double v6, v6, v8

    aput-wide v6, v0, v2

    .line 24
    aget-object v1, p0, v5

    aget-wide v3, v1, v2

    aget-object v1, p0, v2

    aget-wide v6, v1, v5

    add-double/2addr v3, v6

    mul-double v8, v8, v3

    aput-wide v8, v0, v5

    :goto_0
    return-object v0
.end method

.method private orthogonalizeMatrix([[DD)[[D
    .locals 60
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 3
    aget-object v5, p1, v4

    .line 4
    aget-wide v6, v1, v0

    .line 5
    aget-wide v8, v1, v2

    .line 6
    aget-wide v10, v1, v4

    .line 7
    aget-wide v12, v3, v0

    .line 8
    aget-wide v14, v3, v2

    .line 9
    aget-wide v16, v3, v4

    .line 10
    aget-wide v18, v5, v0

    .line 11
    aget-wide v20, v5, v2

    .line 12
    aget-wide v22, v5, v4

    new-array v2, v4, [I

    .line 13
    fill-array-data v2, :array_0

    const-class v4, D

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 14
    aget-object v4, v2, v0

    const/16 v24, 0x1

    .line 15
    aget-object v26, v2, v24

    const/16 v25, 0x2

    .line 16
    aget-object v27, v2, v25

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    :goto_0
    add-int/lit8 v0, v30, 0x1

    move-object/from16 p1, v2

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    .line 17
    aget-wide v30, v1, v2

    mul-double v30, v30, v6

    aget-wide v32, v3, v2

    mul-double v32, v32, v12

    add-double v32, v30, v32

    aget-wide v34, v5, v2

    mul-double v34, v34, v18

    add-double v32, v32, v34

    .line 18
    aget-wide v34, v1, v24

    mul-double v34, v34, v6

    aget-wide v36, v3, v24

    mul-double v36, v36, v12

    add-double v34, v34, v36

    aget-wide v36, v5, v24

    mul-double v36, v36, v18

    add-double v34, v34, v36

    const/4 v2, 0x2

    .line 19
    aget-wide v36, v1, v2

    mul-double v36, v36, v6

    aget-wide v38, v3, v2

    mul-double v38, v38, v12

    add-double v36, v36, v38

    aget-wide v38, v5, v2

    mul-double v38, v38, v18

    add-double v36, v36, v38

    const/4 v2, 0x0

    .line 20
    aget-wide v30, v1, v2

    mul-double v30, v30, v8

    aget-wide v38, v3, v2

    mul-double v38, v38, v14

    add-double v38, v30, v38

    aget-wide v40, v5, v2

    mul-double v40, v40, v20

    add-double v38, v38, v40

    const/4 v2, 0x1

    .line 21
    aget-wide v40, v1, v2

    mul-double v40, v40, v8

    aget-wide v42, v3, v2

    mul-double v42, v42, v14

    add-double v40, v40, v42

    aget-wide v42, v5, v2

    mul-double v42, v42, v20

    add-double v40, v40, v42

    const/4 v2, 0x2

    .line 22
    aget-wide v42, v1, v2

    mul-double v42, v42, v8

    aget-wide v44, v3, v2

    mul-double v44, v44, v14

    add-double v42, v42, v44

    aget-wide v44, v5, v2

    mul-double v44, v44, v20

    add-double v42, v42, v44

    const/4 v2, 0x0

    .line 23
    aget-wide v30, v1, v2

    mul-double v30, v30, v10

    aget-wide v44, v3, v2

    mul-double v44, v44, v16

    add-double v44, v30, v44

    aget-wide v46, v5, v2

    mul-double v46, v46, v22

    add-double v44, v44, v46

    const/4 v2, 0x1

    .line 24
    aget-wide v46, v1, v2

    mul-double v46, v46, v10

    aget-wide v48, v3, v2

    mul-double v48, v48, v16

    add-double v46, v46, v48

    aget-wide v48, v5, v2

    mul-double v48, v48, v22

    add-double v46, v46, v48

    const/4 v2, 0x2

    .line 25
    aget-wide v48, v1, v2

    mul-double v48, v48, v10

    aget-wide v50, v3, v2

    mul-double v50, v50, v16

    add-double v48, v48, v50

    aget-wide v50, v5, v2

    mul-double v50, v50, v22

    add-double v48, v48, v50

    mul-double v50, v6, v32

    mul-double v52, v8, v34

    add-double v50, v50, v52

    mul-double v52, v10, v36

    add-double v50, v50, v52

    const/4 v2, 0x0

    .line 26
    aget-wide v30, v1, v2

    sub-double v50, v50, v30

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    mul-double v50, v50, v52

    sub-double v30, v6, v50

    aput-wide v30, v4, v2

    mul-double v50, v6, v38

    mul-double v54, v8, v40

    add-double v50, v50, v54

    mul-double v54, v10, v42

    add-double v50, v50, v54

    const/4 v2, 0x1

    .line 27
    aget-wide v54, v1, v2

    sub-double v50, v50, v54

    mul-double v50, v50, v52

    sub-double v50, v8, v50

    aput-wide v50, v4, v2

    mul-double v6, v6, v44

    mul-double v8, v8, v46

    add-double/2addr v6, v8

    mul-double v8, v10, v48

    add-double/2addr v6, v8

    const/4 v2, 0x2

    .line 28
    aget-wide v8, v1, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v52

    sub-double/2addr v10, v6

    aput-wide v10, v4, v2

    mul-double v6, v12, v32

    mul-double v8, v14, v34

    add-double/2addr v6, v8

    mul-double v8, v16, v36

    add-double/2addr v6, v8

    const/4 v2, 0x0

    .line 29
    aget-wide v8, v3, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v52

    sub-double v6, v12, v6

    aput-wide v6, v26, v2

    mul-double v6, v12, v38

    mul-double v8, v14, v40

    add-double/2addr v6, v8

    mul-double v8, v16, v42

    add-double/2addr v6, v8

    const/4 v2, 0x1

    .line 30
    aget-wide v8, v3, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v52

    sub-double v6, v14, v6

    aput-wide v6, v26, v2

    mul-double v12, v12, v44

    mul-double v14, v14, v46

    add-double/2addr v12, v14

    mul-double v6, v16, v48

    add-double/2addr v12, v6

    const/4 v2, 0x2

    .line 31
    aget-wide v6, v3, v2

    sub-double/2addr v12, v6

    mul-double v12, v12, v52

    sub-double v16, v16, v12

    aput-wide v16, v26, v2

    mul-double v32, v32, v18

    mul-double v34, v34, v20

    add-double v32, v32, v34

    mul-double v36, v36, v22

    add-double v32, v32, v36

    const/4 v2, 0x0

    .line 32
    aget-wide v6, v5, v2

    sub-double v32, v32, v6

    mul-double v32, v32, v52

    sub-double v6, v18, v32

    aput-wide v6, v27, v2

    mul-double v38, v38, v18

    mul-double v40, v40, v20

    add-double v38, v38, v40

    mul-double v42, v42, v22

    add-double v38, v38, v42

    const/4 v2, 0x1

    .line 33
    aget-wide v6, v5, v2

    sub-double v38, v38, v6

    mul-double v38, v38, v52

    sub-double v6, v20, v38

    aput-wide v6, v27, v2

    mul-double v18, v18, v44

    mul-double v20, v20, v46

    add-double v18, v18, v20

    mul-double v48, v48, v22

    add-double v18, v18, v48

    const/4 v2, 0x2

    .line 34
    aget-wide v6, v5, v2

    sub-double v18, v18, v6

    mul-double v18, v18, v52

    sub-double v22, v22, v18

    aput-wide v22, v27, v2

    const/4 v6, 0x0

    .line 35
    aget-wide v7, v4, v6

    aget-wide v9, v1, v6

    sub-double/2addr v7, v9

    const/4 v9, 0x1

    .line 36
    aget-wide v10, v4, v9

    aget-wide v12, v1, v9

    sub-double/2addr v10, v12

    .line 37
    aget-wide v12, v4, v2

    aget-wide v14, v1, v2

    sub-double/2addr v12, v14

    .line 38
    aget-wide v14, v26, v6

    aget-wide v16, v3, v6

    sub-double v14, v14, v16

    .line 39
    aget-wide v16, v26, v9

    aget-wide v18, v3, v9

    sub-double v16, v16, v18

    .line 40
    aget-wide v18, v26, v2

    aget-wide v20, v3, v2

    sub-double v18, v18, v20

    .line 41
    aget-wide v20, v27, v6

    aget-wide v22, v5, v6

    sub-double v20, v20, v22

    .line 42
    aget-wide v22, v27, v9

    aget-wide v32, v5, v9

    sub-double v22, v22, v32

    .line 43
    aget-wide v32, v27, v2

    aget-wide v34, v5, v2

    sub-double v32, v32, v34

    mul-double v7, v7, v7

    mul-double v10, v10, v10

    add-double/2addr v7, v10

    mul-double v12, v12, v12

    add-double/2addr v7, v12

    mul-double v14, v14, v14

    add-double/2addr v7, v14

    mul-double v16, v16, v16

    add-double v7, v7, v16

    mul-double v18, v18, v18

    add-double v7, v7, v18

    mul-double v20, v20, v20

    add-double v7, v7, v20

    mul-double v22, v22, v22

    add-double v7, v7, v22

    mul-double v32, v32, v32

    add-double v6, v7, v32

    sub-double v8, v6, v28

    .line 44
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v2, v8, p2

    if-gtz v2, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 45
    aget-wide v8, v4, v2

    const/4 v10, 0x1

    .line 46
    aget-wide v11, v4, v10

    const/4 v13, 0x2

    .line 47
    aget-wide v14, v4, v13

    .line 48
    aget-wide v16, v26, v2

    .line 49
    aget-wide v18, v26, v10

    .line 50
    aget-wide v20, v26, v13

    .line 51
    aget-wide v22, v27, v2

    .line 52
    aget-wide v24, v27, v10

    .line 53
    aget-wide v28, v27, v13

    move-object/from16 v2, p1

    move/from16 v30, v0

    move-wide/from16 v56, v24

    const/16 v24, 0x1

    move-wide/from16 v58, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v6

    move-wide v6, v8

    move-wide v8, v11

    move-wide v10, v14

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move-wide/from16 v16, v20

    move-wide/from16 v18, v58

    move-wide/from16 v20, v56

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 54
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v10, [Ljava/lang/Object;

    sub-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    .line 15
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    return-object p1
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 4
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    .line 5
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v9, v9

    .line 6
    new-instance v18, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v11, v1, v9

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v15, v13, v5

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v21, v13, v3

    sub-double v15, v15, v21

    sub-double/2addr v11, v15

    mul-double v11, v11, v9

    move-wide v15, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v21, v7, v5

    add-double v11, v11, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v21

    sub-double v23, v11, v1

    mul-double v11, v3, v9

    mul-double v25, v13, v1

    mul-double v27, v5, v15

    sub-double v25, v25, v27

    sub-double v11, v11, v25

    mul-double v11, v11, v9

    mul-double v25, v7, v19

    add-double v11, v11, v25

    mul-double v11, v11, v21

    sub-double v25, v11, v3

    mul-double v11, v15, v9

    mul-double v5, v5, v3

    mul-double v1, v1, v19

    sub-double/2addr v5, v1

    sub-double/2addr v11, v5

    mul-double v9, v9, v11

    mul-double v7, v7, v13

    add-double/2addr v9, v7

    mul-double v9, v9, v21

    sub-double v16, v9, v15

    move-object/from16 v11, v18

    move-wide/from16 v12, v23

    move-wide/from16 v14, v25

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v18
.end method

.method public applyInverseTo([D[D)V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 7
    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 8
    aget-wide v5, p1, v4

    const/4 v7, 0x2

    .line 9
    aget-wide v8, p1, v7

    .line 10
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v12, v10, v2

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    add-double v12, v12, v16

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v19, v4, v8

    add-double v12, v12, v19

    move-wide/from16 v19, v8

    .line 11
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v7, v7

    mul-double v21, v2, v7

    mul-double v23, v14, v19

    mul-double v25, v4, v17

    sub-double v23, v23, v25

    sub-double v21, v21, v23

    mul-double v21, v21, v7

    mul-double v23, v12, v10

    add-double v21, v21, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v23

    sub-double v21, v21, v2

    .line 12
    aput-wide v21, p2, v1

    mul-double v21, v17, v7

    mul-double v25, v4, v2

    mul-double v27, v10, v19

    sub-double v25, v25, v27

    sub-double v21, v21, v25

    mul-double v21, v21, v7

    mul-double v25, v12, v14

    add-double v21, v21, v25

    mul-double v21, v21, v23

    sub-double v21, v21, v17

    const/4 v1, 0x1

    .line 13
    aput-wide v21, p2, v1

    mul-double v21, v19, v7

    mul-double v10, v10, v17

    mul-double v14, v14, v2

    sub-double/2addr v10, v14

    sub-double v21, v21, v10

    mul-double v7, v7, v21

    mul-double v12, v12, v4

    add-double/2addr v7, v12

    mul-double v7, v7, v23

    sub-double v7, v7, v19

    const/4 v1, 0x2

    .line 14
    aput-wide v7, p2, v1

    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    .line 13
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 4
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    .line 5
    new-instance v16, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v11, v1, v9

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v17, v13, v5

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v21, v13, v3

    sub-double v17, v17, v21

    sub-double v11, v11, v17

    mul-double v11, v11, v9

    move-wide/from16 v17, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v21, v7, v5

    add-double v11, v11, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v21

    sub-double/2addr v11, v1

    mul-double v23, v3, v9

    mul-double v25, v13, v1

    mul-double v27, v5, v17

    sub-double v25, v25, v27

    sub-double v23, v23, v25

    mul-double v23, v23, v9

    mul-double v25, v7, v19

    add-double v23, v23, v25

    mul-double v23, v23, v21

    sub-double v23, v23, v3

    mul-double v25, v17, v9

    mul-double v5, v5, v3

    mul-double v1, v1, v19

    sub-double/2addr v5, v1

    sub-double v25, v25, v5

    mul-double v9, v9, v25

    mul-double v7, v7, v13

    add-double/2addr v9, v7

    mul-double v9, v9, v21

    sub-double v14, v9, v17

    move-object/from16 v9, v16

    move-wide v10, v11

    move-wide/from16 v12, v23

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v16
.end method

.method public applyTo([D[D)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 6
    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 7
    aget-wide v5, p1, v4

    const/4 v7, 0x2

    .line 8
    aget-wide v8, p1, v7

    .line 9
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v12, v10, v2

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    add-double v12, v12, v16

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v19, v4, v8

    add-double v12, v12, v19

    .line 10
    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v20, v2, v6

    mul-double v22, v14, v8

    mul-double v24, v4, v17

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v20, v20, v6

    mul-double v22, v12, v10

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v22

    sub-double v20, v20, v2

    aput-wide v20, p2, v1

    mul-double v20, v17, v6

    mul-double v24, v4, v2

    mul-double v26, v10, v8

    sub-double v24, v24, v26

    sub-double v20, v20, v24

    mul-double v20, v20, v6

    mul-double v24, v12, v14

    add-double v20, v20, v24

    mul-double v20, v20, v22

    sub-double v20, v20, v17

    const/4 v1, 0x1

    .line 11
    aput-wide v20, p2, v1

    mul-double v20, v8, v6

    mul-double v10, v10, v17

    mul-double v14, v14, v2

    sub-double/2addr v10, v14

    sub-double v20, v20, v10

    mul-double v6, v6, v20

    mul-double v12, v12, v4

    add-double/2addr v6, v12

    mul-double v6, v6, v22

    sub-double/2addr v6, v8

    const/4 v1, 0x2

    .line 12
    aput-wide v6, p2, v1

    return-void
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAngle()D
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, -0x4046666666666666L    # -0.1

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    neg-double v0, v0

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v0, v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v4, v4, v4

    add-double/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v4, v4, v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D

    move-result-object p1

    return-object p1
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide v3, 0x3feffffffff24190L    # 0.9999999999

    const-wide v5, -0x40100000000dbe70L    # -0.9999999999

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p2, v0, :cond_17

    .line 3
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1

    .line 4
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 5
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_0

    new-array v0, v2, [D

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 9
    :cond_1
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_3

    .line 10
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 11
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_2

    new-array v0, v2, [D

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 14
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 15
    :cond_3
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_5

    .line 16
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 17
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_4

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_4

    new-array v0, v2, [D

    .line 19
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 20
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 21
    :cond_5
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_7

    .line 22
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 23
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_6

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_6

    new-array v0, v2, [D

    .line 25
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 26
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 27
    :cond_7
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_9

    .line 28
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 29
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_8

    new-array v0, v2, [D

    .line 31
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 32
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 33
    :cond_9
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_b

    .line 34
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 35
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_a

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_a

    new-array v0, v2, [D

    .line 37
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 38
    :cond_a
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 39
    :cond_b
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_d

    .line 40
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_c

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_c

    new-array v0, v2, [D

    .line 43
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 44
    :cond_c
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 45
    :cond_d
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_f

    .line 46
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_e

    new-array v0, v2, [D

    .line 49
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 50
    :cond_e
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 51
    :cond_f
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_11

    .line 52
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_10

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_10

    new-array v0, v2, [D

    .line 55
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 56
    :cond_10
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 57
    :cond_11
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_13

    .line 58
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_12

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_12

    new-array v0, v2, [D

    .line 61
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 62
    :cond_12
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 63
    :cond_13
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_15

    .line 64
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_14

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_14

    new-array v0, v2, [D

    .line 67
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 68
    :cond_14
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 69
    :cond_15
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_16

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_16

    new-array v0, v2, [D

    .line 72
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 73
    :cond_16
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 74
    :cond_17
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_19

    .line 75
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 76
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 77
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_18

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_18

    new-array v0, v2, [D

    .line 78
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 79
    :cond_18
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 80
    :cond_19
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1b

    .line 81
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 82
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_1a

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_1a

    new-array v0, v2, [D

    .line 84
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 85
    :cond_1a
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 86
    :cond_1b
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1d

    .line 87
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 88
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_1c

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_1c

    new-array v0, v2, [D

    .line 90
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 91
    :cond_1c
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 92
    :cond_1d
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1f

    .line 93
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 94
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_1e

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_1e

    new-array v0, v2, [D

    .line 96
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 97
    :cond_1e
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 98
    :cond_1f
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_21

    .line 99
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 100
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_20

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_20

    new-array v0, v2, [D

    .line 102
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 103
    :cond_20
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 104
    :cond_21
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_23

    .line 105
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 106
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_22

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_22

    new-array v0, v2, [D

    .line 108
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 109
    :cond_22
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 110
    :cond_23
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_25

    .line 111
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_24

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_24

    new-array v0, v2, [D

    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 115
    :cond_24
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 116
    :cond_25
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_27

    .line 117
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_26

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_26

    new-array v0, v2, [D

    .line 120
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 121
    :cond_26
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 122
    :cond_27
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_29

    .line 123
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_28

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_28

    new-array v0, v2, [D

    .line 126
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 127
    :cond_28
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 128
    :cond_29
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_2b

    .line 129
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_2a

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_2a

    new-array v0, v2, [D

    .line 132
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 133
    :cond_2a
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 134
    :cond_2b
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_2d

    .line 135
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_2c

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_2c

    new-array v0, v2, [D

    .line 138
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 139
    :cond_2c
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 140
    :cond_2d
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v0, v9, v5

    if-ltz v0, :cond_2e

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_2e

    new-array v0, v2, [D

    .line 143
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v0, v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, v0, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p1

    aput-wide p1, v0, v1

    return-object v0

    .line 144
    :cond_2e
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 13

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    :goto_0
    return-object p1

    .line 4
    :cond_1
    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v4, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5
    :goto_1
    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    cmpg-double p1, v6, v2

    if-gez p1, :cond_3

    .line 6
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 7
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v0, v4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v9, v0, v4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v11, v0, v4

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object p1

    :cond_3
    neg-double v2, v4

    .line 8
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 9
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v5, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v7, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v0, v2

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object p1
.end method

.method public getMatrix()[[D
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v3, v1, v1

    .line 2
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v1, v5

    .line 3
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v11, v1, v9

    .line 4
    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v1, v1, v13

    mul-double v15, v5, v5

    mul-double v17, v5, v9

    mul-double v5, v5, v13

    mul-double v19, v9, v9

    mul-double v9, v9, v13

    mul-double v13, v13, v13

    const/4 v0, 0x3

    move-wide/from16 v21, v13

    new-array v13, v0, [[D

    new-array v14, v0, [D

    const/16 v23, 0x0

    aput-object v14, v13, v23

    new-array v14, v0, [D

    const/16 v24, 0x1

    aput-object v14, v13, v24

    new-array v0, v0, [D

    const/4 v14, 0x2

    aput-object v0, v13, v14

    .line 5
    aget-object v0, v13, v23

    add-double/2addr v15, v3

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    sub-double v15, v15, v27

    aput-wide v15, v0, v23

    .line 6
    aget-object v0, v13, v24

    sub-double v15, v17, v1

    mul-double v15, v15, v25

    aput-wide v15, v0, v23

    .line 7
    aget-object v0, v13, v14

    add-double v15, v5, v11

    mul-double v15, v15, v25

    aput-wide v15, v0, v23

    .line 8
    aget-object v0, v13, v23

    add-double v17, v17, v1

    mul-double v17, v17, v25

    aput-wide v17, v0, v24

    .line 9
    aget-object v0, v13, v24

    add-double v19, v3, v19

    mul-double v19, v19, v25

    sub-double v19, v19, v27

    aput-wide v19, v0, v24

    .line 10
    aget-object v0, v13, v14

    sub-double v1, v9, v7

    mul-double v1, v1, v25

    aput-wide v1, v0, v24

    .line 11
    aget-object v0, v13, v23

    sub-double/2addr v5, v11

    mul-double v5, v5, v25

    aput-wide v5, v0, v14

    .line 12
    aget-object v0, v13, v24

    add-double/2addr v9, v7

    mul-double v9, v9, v25

    aput-wide v9, v0, v14

    .line 13
    aget-object v0, v13, v14

    add-double v3, v3, v21

    mul-double v3, v3, v25

    sub-double v3, v3, v27

    aput-wide v3, v0, v14

    return-object v13
.end method

.method public getQ0()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-wide v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 11

    .line 1
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v1, v0

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v10
.end method
