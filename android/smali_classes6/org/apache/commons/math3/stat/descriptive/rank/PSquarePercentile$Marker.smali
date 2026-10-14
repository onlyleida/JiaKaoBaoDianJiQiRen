.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Marker"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31a013708eff5b3fL


# instance fields
.field private desiredMarkerIncrement:D

.field private desiredMarkerPosition:D

.field private index:I

.field private intMarkerPosition:D

.field private transient linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private markerHeight:D

.field private transient next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

.field private final nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private transient previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 5
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 6
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-void
.end method

.method private constructor <init>(DDDD)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 9
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    .line 10
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    .line 11
    iput-wide p7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    return-void
.end method

.method synthetic constructor <init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v0
.end method

.method static synthetic access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide p1
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->estimate()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->updateDesiredPosition()V

    return-void
.end method

.method private difference()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private estimate()D
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->difference()D

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v4, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double v8, v4, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    cmpl-double v14, v8, v10

    if-lez v14, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 3
    :goto_0
    iget-object v9, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v14, v9, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double v16, v14, v6

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpg-double v20, v16, v18

    if-gez v20, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    cmpl-double v17, v1, v10

    if-ltz v17, :cond_2

    if-nez v8, :cond_3

    :cond_2
    cmpg-double v8, v1, v18

    if-gtz v8, :cond_7

    if-eqz v16, :cond_7

    :cond_3
    const-wide/16 v10, 0x0

    cmpl-double v16, v1, v10

    if-ltz v16, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    const/4 v2, 0x3

    new-array v8, v2, [D

    aput-wide v14, v8, v12

    aput-wide v6, v8, v13

    const/4 v14, 0x2

    aput-wide v4, v8, v14

    new-array v2, v2, [D

    .line 4
    iget-wide v4, v9, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    aput-wide v4, v2, v12

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    aput-wide v4, v2, v13

    iget-wide v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    aput-wide v3, v2, v14

    int-to-double v3, v1

    add-double/2addr v6, v3

    .line 5
    iget-object v3, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v3, v8, v2}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v3

    .line 6
    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 7
    invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->isEstimateBad([DD)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    aget-wide v3, v8, v13

    sub-double v3, v6, v3

    cmpl-double v5, v3, v10

    if-lez v5, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, -0x1

    :goto_3
    new-array v3, v14, [D

    .line 9
    aget-wide v4, v8, v13

    aput-wide v4, v3, v12

    add-int/lit8 v16, v16, 0x1

    aget-wide v4, v8, v16

    aput-wide v4, v3, v13

    new-array v4, v14, [D

    .line 10
    aget-wide v8, v2, v13

    aput-wide v8, v4, v12

    aget-wide v8, v2, v16

    aput-wide v8, v4, v13

    new-array v2, v13, [[D

    aput-object v4, v2, v12

    .line 11
    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 12
    iget-object v2, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v2

    .line 13
    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 14
    :cond_6
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    .line 15
    :cond_7
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v1
.end method

.method private incrementPosition(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    return-void
.end method

.method private index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    return-object p0
.end method

.method private isEstimateBad([DD)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-wide v1, p1, v0

    cmpg-double v3, p2, v1

    if-lez v3, :cond_0

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmpl-double p1, p2, v1

    if-ltz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-object p0
.end method

.method private previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 3
    new-instance p1, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {p1}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    return-void
.end method

.method private updateDesiredPosition()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v9, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    goto :goto_5

    :cond_0
    if-eqz p1, :cond_6

    .line 1
    instance-of v2, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    if-eqz v2, :cond_6

    .line 2
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 3
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 4
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 5
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 6
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object v3, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    .line 8
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object p1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget p1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v2, p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 1
    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v1, v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v1, v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-static {v3, v4, v2}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v3

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "index=%.0f,n=%.0f,np=%.2f,q=%.2f,dn=%.2f,prev=%d,next=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
