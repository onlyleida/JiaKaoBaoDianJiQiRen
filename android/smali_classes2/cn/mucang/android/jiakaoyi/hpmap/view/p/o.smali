.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;
    }
.end annotation


# instance fields
.field private final i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

.field private final j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->j:Landroid/graphics/Paint;

    .line 4
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v1, 0x3d75c28f    # 0.06f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->e:F

    invoke-virtual {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result p2

    .line 5
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const/high16 v0, 0x40200000    # 2.5f

    mul-float p2, p2, v0

    float-to-double v6, p2

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->b:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->c:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->j:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->a:Ljava/lang/String;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v4

    add-float/2addr v1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
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
