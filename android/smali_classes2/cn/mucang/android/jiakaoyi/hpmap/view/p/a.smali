.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Path;

.field private final k:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->k:Z

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->i:Landroid/graphics/Paint;

    .line 5
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->j:Landroid/graphics/Path;

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p4, :cond_0

    const/4 p3, 0x0

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_0

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->j:Landroid/graphics/Path;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->i:Landroid/graphics/Paint;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->j:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

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
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->j:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;->k:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->type:I

    const-string v2, "keyInProjectBg"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v1, 0x3e23d70a    # 0.16f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
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
