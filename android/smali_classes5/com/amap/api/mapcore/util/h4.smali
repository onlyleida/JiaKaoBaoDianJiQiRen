.class public Lcom/amap/api/mapcore/util/h4;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:F

.field private w:F

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/h4;->i:Z

    .line 4
    iput p2, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    .line 5
    iput p2, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 6
    iput p2, p0, Lcom/amap/api/mapcore/util/h4;->l:I

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->m:I

    .line 8
    iput p2, p0, Lcom/amap/api/mapcore/util/h4;->n:I

    .line 9
    iput p2, p0, Lcom/amap/api/mapcore/util/h4;->o:I

    .line 10
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    const/16 v0, 0x8

    .line 11
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->q:I

    .line 12
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/h4;->r:Z

    .line 13
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/h4;->s:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    .line 16
    iput v1, p0, Lcom/amap/api/mapcore/util/h4;->w:F

    .line 17
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->x:Z

    .line 18
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/h4;->y:Z

    const/4 p2, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->t:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Lcom/amap/api/mapcore/util/l3;->b(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ap.data"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 21
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/h4;->f:Landroid/graphics/Bitmap;

    .line 22
    sget v3, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    .line 23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 24
    invoke-static {p1}, Lcom/amap/api/mapcore/util/l3;->b(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "ap1.data"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 25
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/h4;->g:Landroid/graphics/Bitmap;

    .line 26
    sget v3, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 28
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 29
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    .line 30
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/icon_web_day.data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_DAY_NAME:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/icon_web_night.data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_NIGHT_NAME:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/amap/api/mapcore/util/q3;->a()Lcom/amap/api/mapcore/util/q3;

    move-result-object p1

    new-instance v0, Lcom/amap/api/mapcore/util/h4$a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/h4$a;-><init>(Lcom/amap/api/mapcore/util/h4;)V

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/q3;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    .line 36
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 38
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p2

    move-object p2, v1

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v0, p2

    :goto_1
    :try_start_4
    const-string v1, "WaterMarkerView"

    const-string v2, "create"

    .line 40
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz p2, :cond_1

    .line 41
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 43
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_3
    return-void

    :catchall_5
    move-exception p1

    if-eqz p2, :cond_3

    .line 44
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 46
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_4
    :goto_5
    throw p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/h4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/h4;->t:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/h4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/h4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private s()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/h4;->o:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h4;->t()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h4;->u()V

    .line 4
    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->m:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->n:I

    .line 6
    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->m:I

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 7
    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->m:I

    :cond_2
    if-gez v0, :cond_3

    .line 8
    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->n:I

    :cond_3
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->x:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->w:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->q:I

    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/h4;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    goto :goto_0

    .line 4
    :cond_1
    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    :goto_0
    const/16 v0, 0x8

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->q:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 11
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->f:Landroid/graphics/Bitmap;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 14
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->g:Landroid/graphics/Bitmap;

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 16
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 17
    :cond_4
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 19
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 20
    :cond_5
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    :cond_6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "WaterMarkerView"

    const-string v2, "destory"

    .line 24
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->o:I

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->l:I

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/h4;->p()V

    return-void
.end method

.method public d(IF)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->o:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr v2, p2

    .line 4
    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->w:F

    goto :goto_0

    :cond_2
    sub-float/2addr v2, p2

    .line 5
    iput v2, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h4;->x:Z

    goto :goto_0

    .line 7
    :cond_3
    iput p2, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h4;->x:Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/h4;->p()V

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    .line 4
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h4;->f:Landroid/graphics/Bitmap;

    .line 5
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-static {p2}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 8
    iget-object p2, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    .line 9
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h4;->f:Landroid/graphics/Bitmap;

    .line 10
    sget v0, Lcom/amap/api/mapcore/util/x9;->a:F

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/r3;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    invoke-static {p2}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "WaterMarkerView"

    const-string v0, "create"

    .line 13
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h4;->i:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "WaterMarkerView"

    const-string v1, "changeBitmap"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->i:Z

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    return-object v0

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->o:I

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->q:I

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/h4;->p()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h4;->y:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->e:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    :cond_2
    :goto_0
    return-void
.end method

.method public l()Landroid/graphics/Point;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->m:I

    iget v2, p0, Lcom/amap/api/mapcore/util/h4;->n:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public m(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/amap/api/mapcore/util/h4;->o:I

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->p:I

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/h4;->p()V

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    return-void
.end method

.method public o(I)F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget p1, p0, Lcom/amap/api/mapcore/util/h4;->w:F

    goto :goto_0

    .line 3
    :cond_2
    iget p1, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    :goto_0
    sub-float v1, v2, p1

    goto :goto_1

    .line 4
    :cond_3
    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->v:F

    :goto_1
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h4;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->r:Z

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h4;->s()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->r:Z

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/h4;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/h4;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/h4;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h4;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WaterMarkerView"

    const-string v1, "onDraw"

    .line 8
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/h4;->s()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->s:Z

    if-eq v0, p1, :cond_3

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h4;->s:Z

    if-eqz p1, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/h4;->i:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->k:I

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h4;->j:I

    :cond_3
    :goto_0
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h4;->i:Z

    return v0
.end method
