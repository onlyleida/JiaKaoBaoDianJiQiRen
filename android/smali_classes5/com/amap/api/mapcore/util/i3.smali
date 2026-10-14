.class public Lcom/amap/api/mapcore/util/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Z = false

.field private static e:Z = false

.field private static f:Z = false


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i3;->a:Z

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/i3;->b:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/i3;->c:I

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/mapcore/util/i3;->d:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/i3;->d:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/mapcore/util/i3;->e:Z

    return-void
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/i3;->e:Z

    return v0
.end method

.method public static f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/mapcore/util/i3;->f:Z

    return-void
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/i3;->f:Z

    return v0
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)Z
    .locals 11

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v3, -0x1000000

    int-to-float v4, v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_0
    int-to-float v8, v4

    mul-int/lit8 v9, v1, 0x3

    int-to-float v9, v9

    div-float/2addr v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    int-to-float v8, v2

    div-float/2addr v8, v5

    float-to-int v8, v8

    :goto_1
    int-to-float v9, v8

    mul-int/lit8 v10, v2, 0x3

    int-to-float v10, v10

    div-float/2addr v10, v5

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 3
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, v6, :cond_0

    move v7, v9

    :cond_0
    const/4 v10, 0x0

    if-eq v9, v7, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i3;->a:Z

    return v10

    :cond_1
    if-eq v9, v3, :cond_2

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i3;->a:Z

    return v10

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v1, "AMapdelegate"

    const-string v2, "checkBlackScreen"

    .line 5
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i3;->a:Z

    .line 7
    throw p1

    .line 8
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i3;->a:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/i3;->a:Z

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/i3;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/i3;->b:I

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/i3;->b:I

    iget v1, p0, Lcom/amap/api/mapcore/util/i3;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "BlackScreen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v1, "PureScreenCheckTool"

    const-string v2, "uploadInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
