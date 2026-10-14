.class public Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final dimension:I

.field private final rand:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public nextVector()[D
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    if-ge v4, v5, :cond_0

    .line 3
    iget-object v5, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    .line 4
    aput-wide v5, v0, v4

    mul-double v5, v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    .line 6
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    if-ge v1, v2, :cond_1

    .line 7
    aget-wide v2, v0, v1

    mul-double v2, v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
