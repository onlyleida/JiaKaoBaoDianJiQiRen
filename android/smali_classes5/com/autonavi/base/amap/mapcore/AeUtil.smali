.class public Lcom/autonavi/base/amap/mapcore/AeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CONFIGNAME:Ljava/lang/String; = "GNaviConfig.xml"

.field public static final IS_AE:Z = true

.field public static final RESZIPNAME:Ljava/lang/String; = "res.zip"

.field public static final ROOTPATH:Ljava/lang/String; = "/amap/"

.field public static final ROOT_DATA_PATH_NAME:Ljava/lang/String; = "data_v6"

.field public static final ROOT_DATA_PATH_OLD_NAME:Ljava/lang/String; = "data"

.field public static final SO_FILENAME:Ljava/lang/String; = "AMapSDK_MAP_v7_4_0"

.field public static final SO_FILENAME_NAVI:Ljava/lang/String; = "AMapSDK_NAVI_v6_5_0"

.field public static isNaviSoLoaded:Z = false


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

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/base/amap/mapcore/AeUtil;->loadEngineRes(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static checkEngineRes(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static initCrashHandle(Landroid/content/Context;Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/p6;->a()Lcom/amap/api/mapcore/util/p6;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/p6;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n6;->a(Lcom/amap/api/mapcore/util/m5;)Lcom/amap/api/mapcore/util/n6;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/n6;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n6;->a(Lcom/amap/api/mapcore/util/m5;)Lcom/amap/api/mapcore/util/n6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/n6;->d(Landroid/content/Context;)Z

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->k()[Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/autonavi/amap/mapcore/MsgProcessor;->nativeInitInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static initResource(Landroid/content/Context;)Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->getMapBaseStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data_v6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 6
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 9
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 10
    :try_start_0
    invoke-static {v4}, Lcom/amap/api/mapcore/util/m8;->a(I)Lcom/amap/api/mapcore/util/m8;

    move-result-object v4

    new-instance v5, Lcom/autonavi/base/amap/mapcore/AeUtil$1;

    invoke-direct {v5, v0, p0}, Lcom/autonavi/base/amap/mapcore/AeUtil$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore/util/m8;->d(Lcom/amap/api/mapcore/util/n8;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0, p0}, Lcom/autonavi/base/amap/mapcore/AeUtil;->loadEngineRes(Ljava/lang/String;Landroid/content/Context;)V

    .line 13
    :goto_0
    new-instance v4, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;

    invoke-direct {v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;-><init>()V

    const-string v5, "ae/GNaviConfig.xml"

    .line 14
    invoke-static {p0, v5}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    .line 15
    iput-object v0, v4, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mRootPath:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 16
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v0, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v4, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mConfigContent:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "GNaviConfig.xml \u548c\u6570\u636e\u76ee\u5f55data_v6\u4e0d\u5339\u914d"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "map/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mOfflineDataPath:Ljava/lang/String;

    .line 21
    iput-object v1, v4, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mP3dCrossPath:Ljava/lang/String;

    return-object v4
.end method

.method private static loadEngineRes(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "res"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/AeUtil;->checkEngineRes(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "ae/res.zip"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->decompress(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 7
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 10
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 11
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 12
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_3

    .line 14
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :goto_0
    if-eqz p0, :cond_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :cond_2
    :goto_1
    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public static loadLib(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "AMapSDK_MAP_v7_4_0"

    .line 1
    sget-boolean v1, Lcom/amap/api/mapcore/util/q8;->a:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/mapcore/util/q8;->b:Ljava/lang/String;

    .line 3
    sget-boolean v1, Lcom/autonavi/base/amap/mapcore/AeUtil;->isNaviSoLoaded:Z

    if-eqz v1, :cond_0

    return p0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    sget-boolean v0, Lcom/amap/api/mapcore/util/q8;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    sput-boolean v1, Lcom/autonavi/base/amap/mapcore/AeUtil;->isNaviSoLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    const-string v1, "AeUtil"

    const-string v2, "loadLib"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    return p0
.end method

.method public static readAssetsFileAndSave(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x400

    :try_start_2
    new-array v0, p2, [B

    :goto_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 10
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v0, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v0

    .line 14
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_4

    .line 15
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    if-eqz p0, :cond_5

    .line 17
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_4
    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_6

    .line 18
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    if-eqz p0, :cond_7

    .line 20
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_7
    :goto_6
    throw p1
.end method
