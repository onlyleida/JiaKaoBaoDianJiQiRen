.class Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final N:I = 0xa


# instance fields
.field public end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private posList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public startAngle:F

.field private startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public static fitLine(Ljava/util/List;II)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;II)",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    move v8, p1

    move-wide v2, v0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    if-gt v8, p2, :cond_0

    .line 1
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v0, v9

    .line 2
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v4, v9

    .line 3
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    .line 4
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v9, v9, v11

    add-double/2addr v2, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    mul-double p0, v0, v0

    int-to-double v8, p2

    div-double/2addr p0, v8

    sub-double/2addr p0, v2

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v10, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double p2, v2, v10

    if-gez p2, :cond_1

    .line 6
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    div-double/2addr v0, v8

    double-to-float p1, v0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;-><init>(F)V

    return-object p0

    :cond_1
    mul-double v2, v4, v0

    div-double/2addr v2, v8

    sub-double/2addr v2, v6

    div-double/2addr v2, p0

    mul-double v0, v0, v2

    sub-double/2addr v4, v0

    div-double/2addr v4, v8

    .line 7
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    double-to-float p1, v2

    double-to-float p2, v4

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;-><init>(FF)V

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public find(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 6
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 8
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-static {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->fitLine(Ljava/util/List;II)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v2

    .line 10
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->fitLine(Ljava/util/List;II)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object p1

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v2

    float-to-double v2, v2

    invoke-direct {v0, v4, v5, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v4

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startAngle:F

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_4

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public inverseFind(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v5, p1, -0x1

    if-ge v0, v5, :cond_2

    .line 5
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v6, v7, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    return-object v2

    :cond_1
    add-double/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x2

    int-to-double v6, p1

    div-double/2addr v3, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v3, v6

    if-gtz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-static {p1, v1, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->fitLine(Ljava/util/List;II)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object p1

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v6

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v1

    float-to-double v6, v1

    invoke-direct {v0, v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->posList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startAngle:F

    return-object p1

    :cond_3
    return-object v2
.end method

.method public rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startAngle:F

    neg-float p1, p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->startAngle:F

    neg-float p1, p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-wide v0, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v6
.end method
