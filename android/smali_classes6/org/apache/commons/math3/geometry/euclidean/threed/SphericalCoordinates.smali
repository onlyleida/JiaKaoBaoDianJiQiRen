.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299eL


# instance fields
.field private jacobian:[[D

.field private final phi:D

.field private phiHessian:[[D

.field private final r:D

.field private rHessian:[[D

.field private final theta:D

.field private thetaHessian:[[D

.field private final v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(DDD)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    .line 8
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    .line 9
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 10
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    .line 11
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v11, p3

    .line 12
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    move-wide/from16 v11, p5

    .line 13
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 14
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v3, v3, v1

    mul-double v12, v3, v9

    mul-double v3, v1, v5

    mul-double v3, v3, v9

    mul-double v16, v1, v7

    move-object v11, v14

    move-object v1, v14

    move-wide v14, v3

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getAlpha()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-void
.end method

.method private computeHessians()V
    .locals 43

    move-object/from16 v0, p0

    .line 1
    const-class v1, D

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    if-nez v2, :cond_0

    .line 2
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    .line 3
    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    .line 4
    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double v14, v8, v10

    .line 5
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    add-double v18, v14, v12

    move-wide/from16 v20, v10

    .line 6
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v22, v2, v10

    div-double v24, v4, v10

    div-double v10, v6, v10

    div-double v26, v2, v14

    div-double v28, v4, v14

    div-double v22, v22, v18

    div-double v24, v24, v18

    div-double v10, v10, v18

    move-wide/from16 v30, v8

    const/4 v8, 0x2

    new-array v9, v8, [I

    .line 7
    fill-array-data v9, :array_0

    invoke-static {v1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    iput-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/16 v32, 0x0

    .line 8
    aget-object v33, v9, v32

    mul-double v34, v4, v24

    mul-double v36, v6, v10

    add-double v38, v34, v36

    aput-wide v38, v33, v32

    const/16 v33, 0x1

    .line 9
    aget-object v38, v9, v33

    move-object/from16 v40, v9

    neg-double v8, v2

    mul-double v24, v24, v8

    aput-wide v24, v38, v32

    move-wide/from16 v24, v8

    const/4 v8, 0x2

    .line 10
    aget-object v9, v40, v8

    move-wide/from16 v41, v12

    neg-double v12, v6

    mul-double v12, v12, v22

    aput-wide v12, v9, v32

    .line 11
    aget-object v9, v40, v33

    mul-double v22, v22, v2

    add-double v36, v22, v36

    aput-wide v36, v9, v33

    .line 12
    aget-object v9, v40, v8

    neg-double v12, v4

    mul-double v12, v12, v10

    aput-wide v12, v9, v33

    .line 13
    aget-object v9, v40, v8

    add-double v22, v22, v34

    aput-wide v22, v9, v8

    .line 14
    aget-object v9, v40, v32

    aget-object v12, v40, v33

    aget-wide v22, v12, v32

    aput-wide v22, v9, v33

    .line 15
    aget-object v9, v40, v32

    aget-object v12, v40, v8

    aget-wide v22, v12, v32

    aput-wide v22, v9, v8

    .line 16
    aget-object v9, v40, v33

    aget-object v12, v40, v8

    aget-wide v22, v12, v33

    aput-wide v22, v9, v8

    new-array v9, v8, [I

    .line 17
    fill-array-data v9, :array_1

    invoke-static {v1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    iput-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    .line 18
    aget-object v9, v8, v32

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v22, v26, v12

    mul-double v22, v22, v28

    aput-wide v22, v9, v32

    .line 19
    aget-object v9, v8, v33

    mul-double v22, v28, v28

    mul-double v34, v26, v26

    sub-double v22, v22, v34

    aput-wide v22, v9, v32

    .line 20
    aget-object v9, v8, v33

    const-wide/high16 v22, -0x4000000000000000L    # -2.0

    mul-double v26, v26, v22

    mul-double v26, v26, v28

    aput-wide v26, v9, v33

    .line 21
    aget-object v9, v8, v32

    aget-object v8, v8, v33

    aget-wide v22, v8, v32

    aput-wide v22, v9, v33

    mul-double v8, v16, v18

    mul-double v22, v16, v8

    mul-double v8, v8, v18

    mul-double v18, v8, v14

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    mul-double v26, v26, v14

    add-double v26, v26, v41

    const/4 v12, 0x2

    new-array v13, v12, [I

    .line 22
    fill-array-data v13, :array_2

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    .line 23
    aget-object v12, v1, v32

    mul-double v30, v30, v26

    sub-double v30, v22, v30

    mul-double v30, v30, v6

    div-double v30, v30, v18

    aput-wide v30, v12, v32

    .line 24
    aget-object v12, v1, v33

    mul-double v24, v24, v4

    mul-double v24, v24, v6

    mul-double v24, v24, v26

    div-double v24, v24, v18

    aput-wide v24, v12, v32

    const/4 v12, 0x2

    .line 25
    aget-object v13, v1, v12

    sub-double v14, v14, v41

    mul-double v2, v2, v14

    div-double/2addr v2, v8

    aput-wide v2, v13, v32

    .line 26
    aget-object v2, v1, v33

    mul-double v20, v20, v26

    sub-double v22, v22, v20

    mul-double v6, v6, v22

    div-double v6, v6, v18

    aput-wide v6, v2, v33

    .line 27
    aget-object v2, v1, v12

    mul-double v4, v4, v14

    div-double/2addr v4, v8

    aput-wide v4, v2, v33

    .line 28
    aget-object v2, v1, v12

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v3

    mul-double v16, v16, v10

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v16, v16, v3

    aput-wide v16, v2, v12

    .line 29
    aget-object v2, v1, v32

    aget-object v3, v1, v33

    aget-wide v4, v3, v32

    aput-wide v4, v2, v33

    .line 30
    aget-object v2, v1, v32

    aget-object v3, v1, v12

    aget-wide v4, v3, v32

    aput-wide v4, v2, v12

    .line 31
    aget-object v2, v1, v33

    aget-object v1, v1, v12

    aget-wide v3, v1, v33

    aput-wide v3, v2, v12

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private computeJacobian()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 3
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 4
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    .line 5
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v11, v5, v5

    add-double/2addr v11, v7

    const/4 v13, 0x2

    new-array v14, v13, [I

    .line 6
    fill-array-data v14, :array_0

    const-class v15, D

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    iput-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v15, 0x0

    .line 7
    aget-object v16, v14, v15

    move-object/from16 v18, v14

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v19, v1, v13

    aput-wide v19, v16, v15

    .line 8
    aget-object v16, v18, v15

    div-double v19, v3, v13

    const/16 v21, 0x1

    aput-wide v19, v16, v21

    .line 9
    aget-object v16, v18, v15

    div-double v13, v5, v13

    const/16 v17, 0x2

    aput-wide v13, v16, v17

    .line 10
    aget-object v13, v18, v21

    move-wide/from16 v19, v9

    neg-double v9, v3

    div-double/2addr v9, v7

    aput-wide v9, v13, v15

    .line 11
    aget-object v9, v18, v21

    div-double v7, v1, v7

    aput-wide v7, v9, v21

    .line 12
    aget-object v7, v18, v17

    mul-double v1, v1, v5

    mul-double v9, v19, v11

    div-double/2addr v1, v9

    aput-wide v1, v7, v15

    .line 13
    aget-object v1, v18, v17

    mul-double v3, v3, v5

    div-double/2addr v3, v9

    aput-wide v3, v1, v21

    .line 14
    aget-object v1, v18, v17

    move-wide/from16 v2, v19

    neg-double v2, v2

    div-double/2addr v2, v11

    aput-wide v2, v1, v17

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;-><init>(DDD)V

    return-object v7
.end method


# virtual methods
.method public getCartesian()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPhi()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    return-wide v0
.end method

.method public toCartesianGradient([D)[D
    .locals 12

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 2
    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v5, v4, v1

    aget-wide v6, v5, v1

    mul-double v2, v2, v6

    const/4 v5, 0x1

    aget-wide v6, p1, v5

    aget-object v8, v4, v5

    aget-wide v9, v8, v1

    mul-double v6, v6, v9

    add-double/2addr v2, v6

    const/4 v6, 0x2

    aget-wide v7, p1, v6

    aget-object v9, v4, v6

    aget-wide v10, v9, v1

    mul-double v7, v7, v10

    add-double/2addr v2, v7

    aput-wide v2, v0, v1

    aget-wide v2, p1, v1

    aget-object v7, v4, v1

    aget-wide v8, v7, v5

    mul-double v2, v2, v8

    aget-wide v7, p1, v5

    aget-object v9, v4, v5

    aget-wide v10, v9, v5

    mul-double v7, v7, v10

    add-double/2addr v2, v7

    aget-wide v7, p1, v6

    aget-object v9, v4, v6

    aget-wide v10, v9, v5

    mul-double v7, v7, v10

    add-double/2addr v2, v7

    aput-wide v2, v0, v5

    aget-wide v2, p1, v1

    aget-object v1, v4, v1

    aget-wide v7, v1, v6

    mul-double v2, v2, v7

    aget-wide v7, p1, v6

    aget-object p1, v4, v6

    aget-wide v4, p1, v6

    mul-double v7, v7, v4

    add-double/2addr v2, v7

    aput-wide v2, v0, v6

    return-object v0
.end method

.method public toCartesianHessian([[D[D)[[D
    .locals 18

    move-object/from16 v0, p0

    .line 1
    const-class v1, D

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeHessians()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    new-array v4, v2, [I

    .line 4
    fill-array-data v4, :array_1

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v4, 0x0

    .line 5
    aget-object v5, v3, v4

    aget-object v6, p1, v4

    aget-wide v7, v6, v4

    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v9, v6, v4

    aget-wide v10, v9, v4

    mul-double v7, v7, v10

    const/4 v9, 0x1

    aget-object v10, p1, v9

    aget-wide v11, v10, v4

    aget-object v10, v6, v9

    aget-wide v13, v10, v4

    mul-double v11, v11, v13

    add-double/2addr v7, v11

    aget-object v10, p1, v2

    aget-wide v11, v10, v4

    aget-object v10, v6, v2

    aget-wide v13, v10, v4

    mul-double v11, v11, v13

    add-double/2addr v7, v11

    aput-wide v7, v5, v4

    .line 6
    aget-object v5, v3, v4

    aget-object v7, p1, v4

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v9

    mul-double v10, v10, v12

    aget-object v7, p1, v9

    aget-wide v12, v7, v4

    aget-object v7, v6, v9

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v4

    aget-object v7, v6, v2

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v9

    .line 7
    aget-object v5, v3, v4

    aget-object v7, p1, v4

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v2

    mul-double v10, v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v4

    aget-object v7, v6, v2

    aget-wide v14, v7, v2

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v2

    .line 8
    aget-object v5, v3, v9

    aget-object v7, p1, v9

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v4

    mul-double v10, v10, v12

    aget-object v7, p1, v9

    aget-wide v12, v7, v9

    aget-object v7, v6, v9

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v9

    aget-object v7, v6, v2

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v4

    .line 9
    aget-object v5, v3, v9

    aget-object v7, p1, v9

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v9

    mul-double v10, v10, v12

    aget-object v7, p1, v9

    aget-wide v12, v7, v9

    aget-object v7, v6, v9

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v9

    aget-object v7, v6, v2

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v9

    .line 10
    aget-object v5, v3, v2

    aget-object v7, p1, v2

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v4

    mul-double v10, v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v9

    aget-object v7, v6, v9

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v2

    aget-object v7, v6, v2

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v4

    .line 11
    aget-object v5, v3, v2

    aget-object v7, p1, v2

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v9

    mul-double v10, v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v9

    aget-object v7, v6, v9

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v2

    aget-object v7, v6, v2

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v9

    .line 12
    aget-object v5, v3, v2

    aget-object v7, p1, v2

    aget-wide v10, v7, v4

    aget-object v7, v6, v4

    aget-wide v12, v7, v2

    mul-double v10, v10, v12

    aget-object v7, p1, v2

    aget-wide v12, v7, v2

    aget-object v7, v6, v2

    aget-wide v14, v7, v2

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v2

    .line 13
    aget-object v5, v1, v4

    aget-object v7, v6, v4

    aget-wide v10, v7, v4

    aget-object v7, v3, v4

    aget-wide v12, v7, v4

    mul-double v10, v10, v12

    aget-object v7, v6, v9

    aget-wide v12, v7, v4

    aget-object v7, v3, v9

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, v6, v2

    aget-wide v12, v7, v4

    aget-object v7, v3, v2

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v4

    .line 14
    aget-object v5, v1, v9

    aget-object v7, v6, v4

    aget-wide v10, v7, v9

    aget-object v7, v3, v4

    aget-wide v12, v7, v4

    mul-double v10, v10, v12

    aget-object v7, v6, v9

    aget-wide v12, v7, v9

    aget-object v7, v3, v9

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, v6, v2

    aget-wide v12, v7, v9

    aget-object v7, v3, v2

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v4

    .line 15
    aget-object v5, v1, v2

    aget-object v7, v6, v4

    aget-wide v10, v7, v2

    aget-object v7, v3, v4

    aget-wide v12, v7, v4

    mul-double v10, v10, v12

    aget-object v7, v6, v2

    aget-wide v12, v7, v2

    aget-object v7, v3, v2

    aget-wide v14, v7, v4

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v4

    .line 16
    aget-object v5, v1, v9

    aget-object v7, v6, v4

    aget-wide v10, v7, v9

    aget-object v7, v3, v4

    aget-wide v12, v7, v9

    mul-double v10, v10, v12

    aget-object v7, v6, v9

    aget-wide v12, v7, v9

    aget-object v7, v3, v9

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aget-object v7, v6, v2

    aget-wide v12, v7, v9

    aget-object v7, v3, v2

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v9

    .line 17
    aget-object v5, v1, v2

    aget-object v7, v6, v4

    aget-wide v10, v7, v2

    aget-object v7, v3, v4

    aget-wide v12, v7, v9

    mul-double v10, v10, v12

    aget-object v7, v6, v2

    aget-wide v12, v7, v2

    aget-object v7, v3, v2

    aget-wide v14, v7, v9

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v5, v9

    .line 18
    aget-object v5, v1, v2

    aget-object v7, v6, v4

    aget-wide v10, v7, v2

    aget-object v7, v3, v4

    aget-wide v12, v7, v2

    mul-double v10, v10, v12

    aget-object v6, v6, v2

    aget-wide v7, v6, v2

    aget-object v3, v3, v2

    aget-wide v12, v3, v2

    mul-double v7, v7, v12

    add-double/2addr v10, v7

    aput-wide v10, v5, v2

    .line 19
    aget-object v3, v1, v4

    aget-wide v5, v3, v4

    aget-wide v7, p2, v4

    iget-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v11, v10, v4

    aget-wide v12, v11, v4

    mul-double v7, v7, v12

    aget-wide v11, p2, v9

    iget-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v14, v13, v4

    aget-wide v15, v14, v4

    mul-double v11, v11, v15

    add-double/2addr v7, v11

    aget-wide v11, p2, v2

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v15, v14, v4

    aget-wide v16, v15, v4

    mul-double v11, v11, v16

    add-double/2addr v7, v11

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 20
    aget-object v3, v1, v9

    aget-wide v5, v3, v4

    aget-wide v7, p2, v4

    aget-object v11, v10, v9

    aget-wide v15, v11, v4

    mul-double v7, v7, v15

    aget-wide v11, p2, v9

    aget-object v15, v13, v9

    aget-wide v16, v15, v4

    mul-double v11, v11, v16

    add-double/2addr v7, v11

    aget-wide v11, p2, v2

    aget-object v15, v14, v9

    aget-wide v16, v15, v4

    mul-double v11, v11, v16

    add-double/2addr v7, v11

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 21
    aget-object v3, v1, v2

    aget-wide v5, v3, v4

    aget-wide v7, p2, v4

    aget-object v11, v10, v2

    aget-wide v15, v11, v4

    mul-double v7, v7, v15

    aget-wide v11, p2, v2

    aget-object v15, v14, v2

    aget-wide v16, v15, v4

    mul-double v11, v11, v16

    add-double/2addr v7, v11

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 22
    aget-object v3, v1, v9

    aget-wide v5, v3, v9

    aget-wide v7, p2, v4

    aget-object v11, v10, v9

    aget-wide v15, v11, v9

    mul-double v7, v7, v15

    aget-wide v11, p2, v9

    aget-object v13, v13, v9

    aget-wide v15, v13, v9

    mul-double v11, v11, v15

    add-double/2addr v7, v11

    aget-wide v11, p2, v2

    aget-object v13, v14, v9

    aget-wide v15, v13, v9

    mul-double v11, v11, v15

    add-double/2addr v7, v11

    add-double/2addr v5, v7

    aput-wide v5, v3, v9

    .line 23
    aget-object v3, v1, v2

    aget-wide v5, v3, v9

    aget-wide v7, p2, v4

    aget-object v11, v10, v2

    aget-wide v12, v11, v9

    mul-double v7, v7, v12

    aget-wide v11, p2, v2

    aget-object v13, v14, v2

    aget-wide v15, v13, v9

    mul-double v11, v11, v15

    add-double/2addr v7, v11

    add-double/2addr v5, v7

    aput-wide v5, v3, v9

    .line 24
    aget-object v3, v1, v2

    aget-wide v5, v3, v2

    aget-wide v7, p2, v4

    aget-object v10, v10, v2

    aget-wide v11, v10, v2

    mul-double v7, v7, v11

    aget-wide v10, p2, v2

    aget-object v12, v14, v2

    aget-wide v13, v12, v2

    mul-double v10, v10, v13

    add-double/2addr v7, v10

    add-double/2addr v5, v7

    aput-wide v5, v3, v2

    .line 25
    aget-object v3, v1, v4

    aget-object v5, v1, v9

    aget-wide v6, v5, v4

    aput-wide v6, v3, v9

    .line 26
    aget-object v3, v1, v4

    aget-object v5, v1, v2

    aget-wide v4, v5, v4

    aput-wide v4, v3, v2

    .line 27
    aget-object v3, v1, v9

    aget-object v4, v1, v2

    aget-wide v5, v4, v9

    aput-wide v5, v3, v2

    return-object v1

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
    .end array-data
.end method
