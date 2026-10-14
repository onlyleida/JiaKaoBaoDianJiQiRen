.class public Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private final i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->j:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x41000000    # 8.0f

    .line 6
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v0, v0

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p2, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->j:Landroid/graphics/Paint;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method
