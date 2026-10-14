.class public abstract Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/a;",
        ">",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;"
    }
.end annotation


# static fields
.field public static m:D = 150.0


# instance fields
.field public i:I

.field public j:Ljava/lang/Long;

.field public k:Z

.field protected l:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V
    .locals 7

    if-eqz p3, :cond_0

    const/high16 v0, 0x41e00000    # 28.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 2
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 4
    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V
    .locals 8

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v4

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v5

    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v6

    move-object v2, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a:F

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b:F

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 2
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p2

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V
    .locals 7

    if-eqz p3, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 2
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 4
    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p3

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected n(FF)F
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

.method public abstract o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
