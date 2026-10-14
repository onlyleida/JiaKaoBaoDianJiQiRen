.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;,
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;
    }
.end annotation


# instance fields
.field private final background:D

.field private final darkThreshold:D

.field private final dimension:I

.field private final maxDarkFraction:D

.field private final microsphere:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;",
            ">;"
        }
    .end annotation
.end field

.field private final microsphereData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method protected constructor <init>(IIDDD)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_3

    if-lez p2, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p3, v2

    if-gtz v4, :cond_1

    cmpg-double v2, p5, v0

    if-ltz v2, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    .line 3
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    .line 5
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    .line 6
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 12
    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method

.method public constructor <init>(IIDDDLorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 14
    invoke-virtual {p9}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object p4

    invoke-virtual {p0, p4, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->add([DZ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    .line 17
    iget v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    .line 18
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    .line 19
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    .line 20
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    .line 21
    iget-object v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    .line 23
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    .line 24
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clear()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private illuminate([DDD)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;->getNormal()[D

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->cosAngle([D[D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    mul-double v1, v1, p4

    .line 4
    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->darkThreshold:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance v4, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    invoke-direct {v4, v1, v2, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private interpolate()D
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    .line 2
    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination()D

    move-result-wide v9

    cmpl-double v11, v9, v1

    if-eqz v11, :cond_0

    .line 3
    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample()D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double/2addr v4, v11

    add-double/2addr v6, v9

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-double v0, v3

    .line 4
    iget v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 5
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->maxDarkFraction:D

    cmpg-double v8, v0, v2

    if-gtz v8, :cond_2

    div-double/2addr v4, v6

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->background:D

    :goto_1
    return-wide v4
.end method


# virtual methods
.method protected add([DZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    if-ge v0, v1, :cond_2

    .line 2
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphere:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    invoke-direct {v1, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;-><init>([D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->microsphereData:Ljava/util/List;

    new-instance p2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;-><init>(DD)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 6
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget p2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->dimension:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->size:I

    return v0
.end method

.method public value([D[[D[DDD)D
    .locals 13

    move-object v0, p2

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->clear()V

    .line 2
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3
    aget-object v5, v0, v4

    move-object v6, p1

    invoke-static {v5, p1}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v8

    .line 4
    invoke-static {v8}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v9

    .line 5
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpg-double v5, v11, p6

    if-gez v5, :cond_0

    .line 6
    aget-wide v0, p3, v4

    return-wide v0

    :cond_0
    neg-double v11, v1

    .line 7
    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v11

    .line 8
    aget-wide v9, p3, v4

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->illuminate([DDD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->interpolate()D

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
