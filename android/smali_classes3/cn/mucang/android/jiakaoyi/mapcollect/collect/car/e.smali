.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

.field private j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_0

    const v2, -0xcc9901

    const/16 v3, 0xf

    const/16 v8, 0x30

    const-string v7, "\u524d\u5929\u7ebf"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_1

    const v2, -0xcc9901

    const/16 v3, 0xf

    const/16 v8, 0x30

    const-string v7, "\u4e3b\u5929\u7ebf"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 4
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private j(Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Paint;FLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "F",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_4

    .line 1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_2

    if-nez v2, :cond_1

    .line 4
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    :cond_1
    mul-int/lit8 v5, v4, 0x4

    .line 5
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v6

    aput v6, v0, v5

    add-int/lit8 v6, v5, 0x1

    .line 6
    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v7

    aput v2, v0, v6

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    add-int/lit8 v6, v5, 0x2

    .line 8
    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x3

    .line 9
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v6, v6

    aput v6, v0, v5

    goto :goto_0

    .line 10
    :cond_2
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    .line 11
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 14
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    const/16 v0, 0x18

    if-lt p4, v0, :cond_3

    .line 15
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, p4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 16
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 17
    iget-wide v2, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v2

    iget-wide v2, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v6, v2

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v2

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v8, v2

    move-object v4, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 18
    :cond_3
    sget-object p4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p4, -0x139001

    .line 19
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-virtual {p0, p5, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-int/lit8 v0, v1, 0x1

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v1, p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    sub-double v6, v1, v6

    move-object v2, p0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->l(Ljava/lang/String;DDLandroid/graphics/Canvas;)V

    .line 24
    iget-wide v1, p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v2, p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p5, v2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p2, v1, p5, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p5, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    .line 2
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-wide v0, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float p1, v0

    iget-wide v0, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p5, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, p5, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v0, 0x0

    invoke-virtual {p2, p6, v0, p5, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 p2, 0x41f00000    # 30.0f

    const/high16 p5, -0x3e100000    # -30.0f

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x3

    if-ne p7, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    sub-float/2addr p5, p2

    :goto_0
    move v0, p5

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-ne p7, v2, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v1

    add-float/2addr p5, p2

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    if-ne p7, v2, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    sub-float p2, p5, p2

    goto :goto_1

    :cond_3
    const/16 p5, 0x50

    if-ne p7, p5, :cond_0

    .line 10
    :goto_1
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    const/high16 p7, 0x3f800000    # 1.0f

    invoke-virtual {p5, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-wide v2, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float p5, v2

    add-float/2addr p5, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    sub-float/2addr p5, p1

    iget-wide v0, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v0

    add-float/2addr p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p3, p6, p5, p1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private l(Ljava/lang/String;DDLandroid/graphics/Canvas;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-double v3, v1

    sub-double/2addr p2, v3

    double-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v2

    float-to-double v0, p3

    add-double/2addr p4, v0

    double-to-float p3, p4

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_0

    const v2, -0xcc9901

    const/16 v3, 0xc

    const/4 v8, 0x3

    const-string v7, "\u5de6\u524d\u8f6e"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_1

    const v2, -0xcc9901

    const/16 v3, 0xc

    const/4 v8, 0x3

    const-string v7, "\u5de6\u540e\u8f6e"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 4
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_2

    const v2, -0xcc9901

    const/16 v3, 0xc

    const/4 v8, 0x5

    const-string v7, "\u53f3\u524d\u8f6e"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 6
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_3

    const v2, -0xcc9901

    const/16 v3, 0xc

    const/4 v8, 0x5

    const-string v7, "\u53f3\u540e\u8f6e"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 8
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->k(IILandroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j(Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Paint;FLjava/util/List;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->m(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 7
    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    move-object v7, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j(Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Paint;FLjava/util/List;)V

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->j(Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Paint;FLjava/util/List;)V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/e;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
