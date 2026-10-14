.class public Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;
    }
.end annotation


# instance fields
.field private final i:I

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Matrix;

.field private l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Bitmap;

.field private final n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->d:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->m:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->i:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->j:Landroid/graphics/Rect;

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->l:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->k:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    .line 2
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v2

    .line 3
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->l:Landroid/graphics/Paint;

    const v3, -0xb350b0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->l:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->c:F

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->k:Landroid/graphics/Matrix;

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->k:Landroid/graphics/Matrix;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->i:I

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->m:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->k:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->c:F

    neg-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v2, v1

    neg-float v3, v0

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->c:F

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->j:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v1, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 21
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 22
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->c:F

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 24
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v1, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double p2, p2, v5

    const/4 p1, 0x0

    cmpl-double v5, v3, p2

    if-lez v5, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-wide p2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v5, p2, v1

    if-nez v5, :cond_1

    iget-wide p2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v5, p2, v1

    if-nez v5, :cond_1

    move-object v0, p1

    .line 4
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v3, v4, v0, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1
.end method

.method public i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
