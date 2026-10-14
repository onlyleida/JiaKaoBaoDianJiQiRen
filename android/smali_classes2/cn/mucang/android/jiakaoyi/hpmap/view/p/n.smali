.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;
    }
.end annotation


# instance fields
.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->i:Landroid/graphics/Paint;

    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->j:Landroid/graphics/Paint;

    .line 8
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->k:Landroid/graphics/Path;

    .line 11
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->l:Landroid/graphics/Path;

    .line 12
    iget v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->b:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    .line 13
    iget v4, p3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->c:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v4

    .line 14
    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v3, v6, v2

    aput v4, v6, v0

    invoke-direct {v5, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 15
    iget v3, p3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->d:F

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->d:F

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->k:Landroid/graphics/Path;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->l:Landroid/graphics/Path;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->k:Landroid/graphics/Path;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->l:Landroid/graphics/Path;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->l:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->k:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v1, 0x3e23d70a    # 0.16f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
