.class public final Lcom/amap/api/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f

.field private static final ICON_ID_PREFIX:Ljava/lang/String; = "com.amap.api.icon_"

.field private static nextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/mapcore/util/dz$a;->b:Lcom/amap/api/mapcore/util/dz$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static defaultMarker(F)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    .line 3
    :try_start_0
    div-int/lit8 p0, p0, 0x1e

    mul-int/lit8 p0, p0, 0x1e

    int-to-float p0, p0

    const/16 v0, 0x14a

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v2, p0, v0

    if-lez v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    :goto_0
    const-string v0, ""

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    const-string v0, "RED"

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    const-string v0, "ORANGE"

    goto :goto_1

    :cond_3
    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_4

    const-string v0, "YELLOW"

    goto :goto_1

    :cond_4
    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_5

    const-string v0, "GREEN"

    goto :goto_1

    :cond_5
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_6

    const-string v0, "CYAN"

    goto :goto_1

    :cond_6
    const/high16 v1, 0x43520000    # 210.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_7

    const-string v0, "AZURE"

    goto :goto_1

    :cond_7
    const/high16 v1, 0x43700000    # 240.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_8

    const-string v0, "BLUE"

    goto :goto_1

    :cond_8
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_9

    const-string v0, "VIOLET"

    goto :goto_1

    :cond_9
    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_a

    const-string v0, "MAGENTA"

    goto :goto_1

    :cond_a
    const/high16 v1, 0x43a50000    # 330.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_b

    const-string v0, "ROSE"

    .line 4
    :cond_b
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/r3;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lcom/amap/api/maps/model/BitmapDescriptorFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 7
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    sget v1, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->nextId:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2
    sput v1, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->nextId:I

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amap.api.icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->nextId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->nextId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v2, p0, v1}, Lcom/amap/api/maps/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 5
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0

    .line 6
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 5
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->q(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/ea;->f:Landroid/content/Context;

    return-object v0
.end method
