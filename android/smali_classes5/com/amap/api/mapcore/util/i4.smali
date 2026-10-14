.class Lcom/amap/api/mapcore/util/i4;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    const-string p2, "zoomin_selected.png"

    .line 3
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->g:Landroid/graphics/Bitmap;

    .line 4
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_unselected.png"

    .line 5
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->h:Landroid/graphics/Bitmap;

    .line 6
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    .line 7
    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->b:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_selected.png"

    .line 8
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->i:Landroid/graphics/Bitmap;

    .line 9
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_unselected.png"

    .line 10
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->j:Landroid/graphics/Bitmap;

    .line 11
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->d:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_pressed.png"

    .line 12
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->k:Landroid/graphics/Bitmap;

    .line 13
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->e:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_pressed.png"

    .line 14
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->l:Landroid/graphics/Bitmap;

    .line 15
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    .line 16
    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->f:Landroid/graphics/Bitmap;

    .line 17
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    iget-object p2, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 20
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    .line 21
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 23
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore/util/i4$a;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore/util/i4$a;-><init>(Lcom/amap/api/mapcore/util/i4;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore/util/i4$b;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore/util/i4$b;-><init>(Lcom/amap/api/mapcore/util/i4;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    const/4 p2, -0x2

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 26
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "ZoomControllerView"

    const-string v0, "create"

    .line 30
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/i4;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/i4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/i4;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/i4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/i4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/i4;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/i4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->d:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->b:Landroid/graphics/Bitmap;

    .line 10
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    .line 11
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->d:Landroid/graphics/Bitmap;

    .line 12
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->e:Landroid/graphics/Bitmap;

    .line 13
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->f:Landroid/graphics/Bitmap;

    .line 14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 15
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 16
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->g:Landroid/graphics/Bitmap;

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 18
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 19
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->h:Landroid/graphics/Bitmap;

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 21
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 22
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->i:Landroid/graphics/Bitmap;

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 24
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 25
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->g:Landroid/graphics/Bitmap;

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 27
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 28
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->k:Landroid/graphics/Bitmap;

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 30
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 31
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->l:Landroid/graphics/Bitmap;

    .line 32
    :cond_5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ZoomControllerView"

    const-string v2, "destory"

    .line 34
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(F)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i4;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ZoomControllerView"

    const-string v1, "setZoomBitmap"

    .line 11
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/e4$c;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x10

    .line 2
    iput p1, v0, Lcom/amap/api/mapcore/util/e4$c;->d:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x50

    .line 3
    iput p1, v0, Lcom/amap/api/mapcore/util/e4$c;->d:I

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "ZoomControllerView"

    const-string v1, "setZoomPosition"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
