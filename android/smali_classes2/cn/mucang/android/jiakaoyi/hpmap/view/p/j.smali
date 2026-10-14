.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private final i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final j:Landroid/graphics/Paint;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 p1, 0x2710

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->j:Landroid/graphics/Paint;

    const v0, -0xff0100

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->k:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->j:Landroid/graphics/Paint;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->k:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->j:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x41a00000    # 20.0f

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->i(FF)F

    move-result p2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected i(FF)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    div-float v0, p1, v1

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    mul-float p1, p2, v1

    :cond_0
    return p1
.end method

.method public j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method
