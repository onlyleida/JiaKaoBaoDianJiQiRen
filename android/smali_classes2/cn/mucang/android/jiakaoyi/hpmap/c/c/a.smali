.class public Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private final B:Landroid/graphics/Rect;

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroid/graphics/Paint;

.field private final E:Landroid/graphics/Path;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/RectF;

.field private final I:Landroid/graphics/RectF;

.field private final J:Landroid/graphics/RectF;

.field private final K:Landroid/graphics/RectF;

.field private final L:Z

.field private M:Ljava/lang/Boolean;

.field private N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

.field private O:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

.field private final j:Landroid/graphics/Bitmap;

.field private final k:Landroid/graphics/Bitmap;

.field private final l:Landroid/graphics/Bitmap;

.field private final m:Landroid/graphics/Bitmap;

.field private final n:Landroid/graphics/Bitmap;

.field private final o:Landroid/graphics/Bitmap;

.field private final p:Landroid/graphics/Bitmap;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Bitmap;

.field private final s:Landroid/graphics/Bitmap;

.field private final t:Landroid/graphics/RectF;

.field private final u:Landroid/graphics/RectF;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private final x:Landroid/graphics/Rect;

.field private final y:Landroid/graphics/Rect;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->M:Ljava/lang/Boolean;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a$a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->O:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->L:Z

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->copy()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_image:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->j:Landroid/graphics/Bitmap;

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__truck_model_image:I

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->k:Landroid/graphics/Bitmap;

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_left_mirror:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l:Landroid/graphics/Bitmap;

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_right_mirror:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->m:Landroid/graphics/Bitmap;

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_left_front_turnlight:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->n:Landroid/graphics/Bitmap;

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_right_front_turnlight:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->o:Landroid/graphics/Bitmap;

    .line 12
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->H:Landroid/graphics/RectF;

    .line 13
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->I:Landroid/graphics/RectF;

    .line 14
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v5, v0, v0, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->B:Landroid/graphics/Rect;

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v0, v0, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->C:Landroid/graphics/Rect;

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_front_light:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->p:Landroid/graphics/Bitmap;

    .line 17
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v4, v0, v0, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q:Landroid/graphics/Rect;

    .line 18
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->J:Landroid/graphics/RectF;

    .line 19
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_left_footer_light:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->r:Landroid/graphics/Bitmap;

    .line 20
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/hpmap/R$drawable;->hpmap__car_right_footer_light:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->s:Landroid/graphics/Bitmap;

    .line 21
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->t:Landroid/graphics/RectF;

    .line 22
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->u:Landroid/graphics/RectF;

    .line 23
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v5, v0, v0, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->v:Landroid/graphics/Rect;

    .line 24
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v0, v0, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->w:Landroid/graphics/Rect;

    .line 25
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v3, v0, v0, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->x:Landroid/graphics/Rect;

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, v0, v0, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->y:Landroid/graphics/Rect;

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v0, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->z:Landroid/graphics/Rect;

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v0, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->A:Landroid/graphics/Rect;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->F:Landroid/graphics/RectF;

    .line 31
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->G:Landroid/graphics/RectF;

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 p1, 0x64

    .line 37
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    return-void
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    return-object p1
.end method

.method private j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;FFFFFF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, p6, v2

    add-float v4, p4, v3

    .line 2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x320

    div-long/2addr v7, v9

    .line 6
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v5, v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v1, v5, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 7
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    const v9, 0x3f0ccccd    # 0.55f

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x2

    const/4 v14, 0x0

    if-eqz v5, :cond_0

    .line 8
    rem-long/2addr v7, v12

    cmp-long v5, v7, v10

    if-nez v5, :cond_1

    mul-float v5, p7, v2

    sub-float v5, p5, v5

    .line 9
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p9

    mul-float v7, v7, v9

    sub-float/2addr v5, v7

    .line 10
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->H:Landroid/graphics/RectF;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->B:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p8

    add-float/2addr v8, v4

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->C:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p9

    add-float/2addr v10, v5

    invoke-virtual {v7, v4, v5, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->n:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->B:Landroid/graphics/Rect;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->H:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v5, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v15}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    rem-long/2addr v7, v12

    cmp-long v5, v7, v10

    if-nez v5, :cond_1

    mul-float v5, p7, v2

    add-float v5, p5, v5

    .line 14
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p9

    const v8, 0x3ee66666    # 0.45f

    mul-float v7, v7, v8

    sub-float/2addr v5, v7

    .line 15
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->I:Landroid/graphics/RectF;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->C:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p8

    add-float/2addr v8, v4

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->C:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p9

    add-float/2addr v10, v5

    invoke-virtual {v7, v4, v5, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->o:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->C:Landroid/graphics/Rect;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->I:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v5, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    :cond_1
    :goto_0
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v4, :cond_2

    sub-float v3, p4, v3

    .line 18
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p8

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    mul-float v2, v2, p7

    sub-float v5, p5, v2

    .line 19
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->v:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p9

    const v8, 0x3f266666    # 0.65f

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    .line 20
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->t:Landroid/graphics/RectF;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->v:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p8

    sub-float v8, v4, v8

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->v:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p9

    sub-float v10, v5, v10

    .line 22
    invoke-virtual {v7, v8, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->r:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->v:Landroid/graphics/Rect;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v5, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 24
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p8

    mul-float v4, v4, v9

    add-float/2addr v3, v4

    add-float v2, p5, v2

    .line 25
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->w:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p9

    mul-float v4, v4, v6

    sub-float/2addr v2, v4

    .line 26
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->u:Landroid/graphics/RectF;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->w:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p8

    sub-float v5, v3, v5

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->w:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p9

    add-float/2addr v6, v2

    .line 28
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->s:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->w:Landroid/graphics/Rect;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->u:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 30
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method private k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;FFFFFF)V
    .locals 2

    .line 1
    iget-object p7, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    if-eqz p7, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float p2, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p7

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1, p2, p7, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->N:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->J:Landroid/graphics/RectF;

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p6, p6, p3

    add-float/2addr p4, p6

    iget-object p6, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q:Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    mul-float p6, p6, p8

    const p7, 0x3ecccccd    # 0.4f

    mul-float p6, p6, p7

    sub-float p6, p4, p6

    iget-object p7, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q:Landroid/graphics/Rect;

    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result p7

    int-to-float p7, p7

    mul-float p7, p7, p9

    mul-float p7, p7, p3

    sub-float p7, p5, p7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p8, p8, v0

    const v0, 0x3f19999a    # 0.6f

    mul-float p8, p8, v0

    add-float/2addr p4, p8

    iget-object p8, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q:Landroid/graphics/Rect;

    invoke-virtual {p8}, Landroid/graphics/Rect;->height()I

    move-result p8

    int-to-float p8, p8

    mul-float p9, p9, p8

    mul-float p9, p9, p3

    add-float/2addr p5, p9

    .line 8
    invoke-virtual {p2, p6, p7, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->p:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q:Landroid/graphics/Rect;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->J:Landroid/graphics/RectF;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 8

    .line 1
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v0

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v0

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v0

    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v6, p2

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private m(Ljava/util/List;)V
    .locals 5
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    .line 5
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v2

    .line 6
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 8
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float p2, v6

    .line 9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float p2, p2, v4

    sub-float v5, v1, p2

    mul-float v2, v2, v4

    sub-float v4, v0, v2

    add-float/2addr v1, p2

    add-float/2addr v0, v2

    invoke-virtual {v3, v5, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float p2, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->y:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 13
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->o(D)V

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const-string v0, "#30A2FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->m(Ljava/util/List;)V

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->m(Ljava/util/List;)V

    .line 21
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelTouchWidth:D

    double-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 26
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 27
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 28
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private o(D)V
    .locals 8

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->M:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v4, v5, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->M:Ljava/lang/Boolean;

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->M:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    int-to-double v4, v1

    mul-double p1, p1, v4

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    if-nez v4, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v6, v7, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_3

    add-int/lit8 v5, v4, -0x1

    .line 11
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v6, v7, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v4, -0x1

    .line 12
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v6, v7, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float p2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float p2, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 16
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v12, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    monitor-enter v12

    .line 2
    :try_start_0
    iget-boolean v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->L:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 5
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v13, v3

    .line 6
    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v14, v2

    .line 7
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 8
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v15, v5

    .line 10
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-float v10, v1

    .line 11
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v16, v15, v1

    .line 12
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v15, v2

    sub-float v9, v13, v3

    mul-float v2, v2, v10

    sub-float v8, v14, v2

    add-float/2addr v3, v13

    add-float v7, v14, v2

    invoke-virtual {v1, v9, v8, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v17, v10, v1

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 15
    iget-object v4, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v13

    move v6, v14

    move/from16 v18, v7

    move v7, v15

    move/from16 v19, v8

    move v8, v10

    move/from16 v20, v9

    move/from16 v9, v16

    move/from16 v21, v10

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;FFFFFF)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 18
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 19
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->p()V

    .line 20
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->E:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    const v1, -0xff7501

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 22
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v1, v1

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 23
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->j:Landroid/graphics/Bitmap;

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->x:Landroid/graphics/Rect;

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 27
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v1, v1

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v1, 0x3f262cea

    mul-float v1, v1, v15

    add-float v9, v20, v1

    .line 28
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float v7, v18, v1

    .line 29
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->F:Landroid/graphics/RectF;

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->A:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v3, v9

    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->A:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v5, v7

    invoke-virtual {v1, v9, v7, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->m:Landroid/graphics/Bitmap;

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->A:Landroid/graphics/Rect;

    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->F:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 31
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    sub-float v8, v19, v1

    .line 32
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->G:Landroid/graphics/RectF;

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v2, v9

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->z:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    add-float/2addr v3, v8

    invoke-virtual {v1, v9, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->l:Landroid/graphics/Bitmap;

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->z:Landroid/graphics/Rect;

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->G:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    iget-object v4, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->K:Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v21

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;FFFFFF)V

    .line 36
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 39
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v5

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v6

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v6

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v6

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v6

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 46
    :goto_0
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 47
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v5

    const/high16 v5, 0x40a00000    # 5.0f

    iget-object v6, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v5

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v5

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v5

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v5

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    :cond_3
    monitor-exit v12

    return-void

    .line 55
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 56
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->O:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->g()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->O:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
