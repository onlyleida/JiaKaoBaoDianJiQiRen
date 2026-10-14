.class public Lcom/amap/api/mapcore/util/d4;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/widget/ImageView;

.field h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d4;->i:Z

    .line 3
    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    const-string p2, "location_selected.png"

    .line 4
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->d:Landroid/graphics/Bitmap;

    .line 5
    sget v1, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->a:Landroid/graphics/Bitmap;

    const-string p2, "location_pressed.png"

    .line 6
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->e:Landroid/graphics/Bitmap;

    .line 7
    sget v1, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->b:Landroid/graphics/Bitmap;

    const-string p2, "location_unselected.png"

    .line 8
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->f:Landroid/graphics/Bitmap;

    .line 9
    sget v1, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->c:Landroid/graphics/Bitmap;

    .line 10
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    const/16 p2, 0x14

    invoke-virtual {p1, v0, p2, p2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore/util/d4$a;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore/util/d4$a;-><init>(Lcom/amap/api/mapcore/util/d4;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LocationView"

    const-string v0, "create"

    .line 16
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d4;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d4;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d4;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d4;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d4;->a:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d4;->b:Landroid/graphics/Bitmap;

    .line 10
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d4;->c:Landroid/graphics/Bitmap;

    .line 11
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d4;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 12
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 13
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d4;->d:Landroid/graphics/Bitmap;

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d4;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 15
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 16
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d4;->e:Landroid/graphics/Bitmap;

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d4;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 18
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 19
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d4;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LocationView"

    const-string v2, "destroy"

    .line 20
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/d4;->i:Z

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d4;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "LocationView"

    const-string v1, "showSelect"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
