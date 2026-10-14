.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private final i:F

.field private final j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;FI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    float-to-double p1, p3

    .line 3
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->i:F

    const/16 p2, 0xa

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->j:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;F)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    .line 5
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 7
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->i:F

    invoke-virtual {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;F)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
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

.method public i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
