.class public Lcom/amap/api/mapcore/util/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/ITextDelegate;


# static fields
.field private static F:I


# instance fields
.field private A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Z

.field private E:[F

.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private f:I

.field private g:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/amap/api/maps/model/LatLng;

.field private l:F

.field private m:F

.field private n:Z

.field private o:Lcom/amap/api/mapcore/util/u;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Typeface;

.field private v:F

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Paint;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/util/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->a:F

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->b:F

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->c:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->d:I

    .line 5
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->e:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->w:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->A:Z

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->C:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->D:Z

    const/16 v0, 0x24

    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->E:[F

    .line 16
    iput-object p2, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    .line 17
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignX()I

    move-result p2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignY()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/amap/api/mapcore/util/e2;->setAlign(II)V

    .line 20
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->isVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    .line 21
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e2;->q:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getBackgroundColor()I

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore/util/e2;->r:I

    .line 23
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontColor()I

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore/util/e2;->s:I

    .line 24
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontSize()I

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore/util/e2;->t:I

    .line 25
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e2;->p:Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getZIndex()F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore/util/e2;->v:F

    .line 27
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e2;->u:Landroid/graphics/Typeface;

    .line 28
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e2;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e2;->j:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getRotate()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/e2;->setRotateAngle(F)V

    .line 30
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->c()V

    .line 31
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e2;->calFPoint()Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->g()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result p1

    .line 4
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/e2;->d(Lcom/amap/api/mapcore/util/ha;)V

    return p1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/ha;

    invoke-direct {v0, p2, v1}, Lcom/amap/api/mapcore/util/ha;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_2
    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->h()I

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/mapcore/util/ha;)V

    .line 11
    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/e2;->d(Lcom/amap/api/mapcore/util/ha;)V

    const/4 p1, 0x1

    .line 12
    invoke-static {v1, p2, p1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/e2;->F:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/e2;->F:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore/util/e2;->F:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->u:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/mapcore/util/e2;->t:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/mapcore/util/e2;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 11
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    .line 12
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 13
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/e2;->q:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore/util/e2;->w:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e2;->w:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 15
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    iget v3, p0, Lcom/amap/api/mapcore/util/e2;->r:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 17
    iget-object v3, p0, Lcom/amap/api/mapcore/util/e2;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/e2;->w:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/e2;->x:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 19
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->h:I

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "initBitmap"

    .line 21
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Lcom/amap/api/mapcore/util/ha;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ha;->w()V

    :cond_0
    return-void
.end method

.method private e(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->h:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/e2;->i:I

    int-to-float v1, v1

    mul-float p4, p4, v1

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->e:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 4
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 5
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result p1

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/e2;->E:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    mul-float v5, v0, v4

    sub-float v5, v2, v5

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 7
    iget v5, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v5

    mul-float v8, v8, p4

    add-float/2addr v8, v1

    const/4 v9, 0x1

    aput v8, v3, v9

    const/4 v8, 0x2

    .line 8
    aput v2, v3, v8

    const/4 v8, 0x3

    .line 9
    aput v1, v3, v8

    .line 10
    iget v8, p0, Lcom/amap/api/mapcore/util/e2;->a:F

    const/4 v9, 0x6

    aput v8, v3, v9

    const/4 v9, 0x7

    .line 11
    aput p1, v3, v9

    sub-float v9, v7, v4

    mul-float v9, v9, v0

    add-float/2addr v9, v2

    const/16 v10, 0x9

    .line 12
    aput v9, v3, v10

    sub-float v9, v7, v5

    mul-float v9, v9, p4

    add-float/2addr v9, v1

    const/16 v10, 0xa

    .line 13
    aput v9, v3, v10

    const/16 v9, 0xb

    .line 14
    aput v2, v3, v9

    const/16 v9, 0xc

    .line 15
    aput v1, v3, v9

    const/16 v9, 0xf

    .line 16
    aput v8, v3, v9

    const/16 v9, 0x10

    .line 17
    aput p1, v3, v9

    sub-float/2addr v7, v4

    mul-float v7, v7, v0

    add-float/2addr v7, v2

    const/16 v9, 0x12

    .line 18
    aput v7, v3, v9

    mul-float v7, p4, v5

    sub-float v7, v1, v7

    const/16 v9, 0x13

    .line 19
    aput v7, v3, v9

    const/16 v7, 0x14

    .line 20
    aput v2, v3, v7

    const/16 v7, 0x15

    .line 21
    aput v1, v3, v7

    const/16 v7, 0x18

    .line 22
    aput v8, v3, v7

    const/16 v7, 0x19

    .line 23
    aput p1, v3, v7

    mul-float v0, v0, v4

    sub-float v0, v2, v0

    const/16 v4, 0x1b

    .line 24
    aput v0, v3, v4

    mul-float p4, p4, v5

    sub-float p4, v1, p4

    const/16 v0, 0x1c

    .line 25
    aput p4, v3, v0

    const/16 p4, 0x1d

    .line 26
    aput v2, v3, p4

    const/16 p4, 0x1e

    .line 27
    aput v1, v3, p4

    const/16 p4, 0x21

    .line 28
    aput v8, v3, p4

    const/16 p4, 0x22

    .line 29
    aput p1, v3, p4

    .line 30
    array-length p1, v3

    invoke-static {v3, v6, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/u;->k(Lcom/amap/api/mapcore/util/ha;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private h()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v0, v1, v2

    return v0
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->c()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->D:Z

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public calFPoint()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/util/e2;->y:I

    .line 5
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/amap/api/mapcore/util/e2;->z:I

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v7, p0, Lcom/amap/api/mapcore/util/e2;->e:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-interface/range {v2 .. v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 7
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 v0, 0x1

    return v0
.end method

.method public checkInBounds()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/e2;->y:I

    iget v2, p0, Lcom/amap/api/mapcore/util/e2;->z:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public destroy(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->C:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e2;->remove()Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ha;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/u;->k(Lcom/amap/api/mapcore/util/ha;)V

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e2;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e2;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 13
    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 14
    :cond_4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    .line 15
    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->p:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "TextDelegateImp"

    const-string v1, "destroy"

    .line 16
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "destroy erro"

    const-string v0, "TextDelegateImp destroy"

    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    return-void
.end method

.method public drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->e:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/e2;->y:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->e:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/e2;->z:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/e2;->e(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "TextDelegateImp"

    const-string p3, "drawMarker"

    .line 5
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e2;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getAlignX()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->c:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->d:I

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->r:I

    return v0
.end method

.method public getFontColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->s:I

    return v0
.end method

.method public getFontSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->t:I

    return v0
.end method

.method public getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Text"

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/e2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e2;->j:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->b:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->u:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/e2;->v:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllowLow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBelowMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnTap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->A:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    return v0
.end method

.method public loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/e2;->D:Z

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/e2;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->f:I

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/e2;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "TextDelegateImp"

    const-string v1, "loadtexture"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public reLoadTexture()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->D:Z

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/e2;->f:I

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->c()V

    return-void
.end method

.method public remove()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->f()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/u;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result v0

    return v0
.end method

.method public setAlign(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->c:I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    iput v3, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    goto :goto_0

    .line 3
    :cond_0
    iput v3, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    goto :goto_0

    .line 4
    :cond_1
    iput v1, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    goto :goto_0

    .line 5
    :cond_2
    iput v2, p0, Lcom/amap/api/mapcore/util/e2;->l:F

    .line 6
    :goto_0
    iput p2, p0, Lcom/amap/api/mapcore/util/e2;->d:I

    const/16 p1, 0x8

    if-eq p2, p1, :cond_5

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x20

    if-eq p2, p1, :cond_3

    .line 7
    iput v3, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    goto :goto_1

    .line 8
    :cond_3
    iput v3, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    goto :goto_1

    .line 9
    :cond_4
    iput v1, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    goto :goto_1

    .line 10
    :cond_5
    iput v2, p0, Lcom/amap/api/mapcore/util/e2;->m:F

    .line 11
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->f()V

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->r:I

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->i()V

    return-void
.end method

.method public setFontColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->s:I

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->i()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->t:I

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->i()V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e2;->p:Ljava/lang/Object;

    return-void
.end method

.method public setOnTap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/e2;->A:Z

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e2;->k:Lcom/amap/api/maps/model/LatLng;

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e2;->calFPoint()Z

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->f()V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->b:F

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->a:F

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->f()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e2;->q:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->i()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e2;->u:Landroid/graphics/Typeface;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->i()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/e2;->n:Z

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e2;->f()V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/e2;->v:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e2;->o:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->A()V

    return-void
.end method
