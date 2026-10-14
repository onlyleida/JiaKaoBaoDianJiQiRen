.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/MultivariateInterpolator;


# instance fields
.field private final exponent:D

.field private final microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

.field private final noInterpolationTolerance:D

.field private final sharedSphere:Z


# direct methods
.method public constructor <init>(IIDDDDZD)V
    .locals 11

    .line 1
    new-instance v10, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    new-instance v9, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;

    move v1, p1

    invoke-direct {v9, p1}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(I)V

    move-object v0, v10

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDDLorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V

    move-object p1, p0

    move-object p2, v10

    move-wide/from16 p3, p9

    move/from16 p5, p11

    move-wide/from16 p6, p12

    invoke-direct/range {p1 .. p7}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;DZD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;DZD)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_0

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->exponent:D

    .line 5
    iput-boolean p4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->sharedSphere:Z

    .line 6
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->noInterpolationTolerance:D

    return-void

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->exponent:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->noInterpolationTolerance:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_4

    .line 2
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 3
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->getDimension()I

    move-result v1

    .line 5
    aget-object v2, p1, v0

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->sharedSphere:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->microsphere:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    move-result-object v0

    .line 7
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;[[D[D)V

    return-object v1

    .line 8
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v0

    array-length p1, p1

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 11
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method
