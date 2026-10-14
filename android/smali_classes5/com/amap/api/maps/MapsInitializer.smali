.class public final Lcom/amap/api/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HTTP:I = 0x1

.field public static final HTTPS:I = 0x2

.field private static a:Z = true

.field private static b:Z = true

.field private static c:Z = false

.field private static d:Z = false

.field private static e:Z = true

.field private static f:Z = false

.field private static g:Z = false

.field private static h:Z = true

.field private static i:Lcom/amap/api/maps/ExceptionLogger; = null

.field private static j:Z = true

.field private static k:Ljava/lang/String; = ""

.field private static l:Ljava/lang/String; = ""

.field private static m:I = 0x1

.field public static sdcardDir:Ljava/lang/String; = ""


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

.method public static disableCachedMapDataUpdate(Z)V
    .locals 0

    return-void
.end method

.method public static getExceptionLogger()Lcom/amap/api/maps/ExceptionLogger;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->i:Lcom/amap/api/maps/ExceptionLogger;

    return-object v0
.end method

.method public static getNetWorkEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->a:Z

    return v0
.end method

.method public static getProtocol()I
    .locals 1

    .line 1
    sget v0, Lcom/amap/api/maps/MapsInitializer;->m:I

    return v0
.end method

.method public static getTextureDestroyRender()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->f:Z

    return v0
.end method

.method public static getTextureSizeChangedInvoked()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->g:Z

    return v0
.end method

.method public static getTextureViewDestorySync()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->e:Z

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "7.4.0"

    return-object v0
.end method

.method public static getWorldVectorOfflineMapStyleAssetsPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static getWorldVectorOfflineMapStyleFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore/util/ea;->f:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string p0, "MapsInitializer"

    const-string v0, "the context is null"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isDisableCachedMapDataUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadCoordinateConvertLibrary()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->b:Z

    return v0
.end method

.method public static isLoadWorldGridMap()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->c:Z

    return v0
.end method

.method public static isLoadWorldVectorMap()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->j:Z

    return v0
.end method

.method public static isSupportRecycleView()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->h:Z

    return v0
.end method

.method public static loadWorldGridMap(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->c:Z

    return-void
.end method

.method public static loadWorldVectorMap(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->j:Z

    return-void
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/mapcore/util/ea;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/d5;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBuildingHeight(I)V
    .locals 0

    return-void
.end method

.method public static setDownloadCoordinateConvertLibrary(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->b:Z

    return-void
.end method

.method public static setExceptionLogger(Lcom/amap/api/maps/ExceptionLogger;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/api/maps/MapsInitializer;->i:Lcom/amap/api/maps/ExceptionLogger;

    return-void
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    .line 2
    sput p0, Lcom/amap/api/mapcore/util/f7;->a:I

    const-string p0, ""

    .line 3
    sput-object p0, Lcom/amap/api/mapcore/util/f7;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    sput v0, Lcom/amap/api/mapcore/util/f7;->a:I

    .line 5
    sput-object p0, Lcom/amap/api/mapcore/util/f7;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static setNetWorkEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->a:Z

    return-void
.end method

.method public static setProtocol(I)V
    .locals 2

    .line 1
    sput p0, Lcom/amap/api/maps/MapsInitializer;->m:I

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object p0

    sget v0, Lcom/amap/api/maps/MapsInitializer;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/i5;->e(Z)V

    return-void
.end method

.method public static setSupportRecycleView(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->h:Z

    return-void
.end method

.method public static setTextureDestroyedRender(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->f:Z

    return-void
.end method

.method public static setTextureSizeChangedInvoked(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->g:Z

    return-void
.end method

.method public static setTextureViewDestorySync(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->e:Z

    return-void
.end method

.method public static setWorldVectorOfflineMapStyleAssetsPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/api/maps/MapsInitializer;->l:Ljava/lang/String;

    return-void
.end method

.method public static setWorldVectorOfflineMapStyleFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/api/maps/MapsInitializer;->k:Ljava/lang/String;

    return-void
.end method
