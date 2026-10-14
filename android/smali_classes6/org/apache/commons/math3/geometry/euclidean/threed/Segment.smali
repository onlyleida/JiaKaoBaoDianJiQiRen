.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    return-void
.end method


# virtual methods
.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method
