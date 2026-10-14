.class public Lcom/serenegiant/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CHECK_INTERVAL:J = 0x0L

.field public static DIR_NAME:Ljava/lang/String; = "UsbWebCamera"

.field public static FREE_RATIO:F = 0.0f

.field public static FREE_SIZE:F = 0.0f

.field public static FREE_SIZE_MINUTE:F = 0.0f

.field public static FREE_SIZE_OFFSET:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static final mDateTimeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/serenegiant/utils/FileUtils;->mDateTimeFormat:Ljava/text/SimpleDateFormat;

    const v0, 0x3cf5c28f    # 0.03f

    .line 2
    sput v0, Lcom/serenegiant/utils/FileUtils;->FREE_RATIO:F

    const/high16 v0, 0x4ba00000    # 2.097152E7f

    .line 3
    sput v0, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE_OFFSET:F

    const/high16 v0, 0x4d960000    # 3.145728E8f

    .line 4
    sput v0, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE:F

    const/high16 v0, 0x4c200000    # 4.194304E7f

    .line 5
    sput v0, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE_MINUTE:F

    const-wide/32 v0, 0xafc8

    .line 6
    sput-wide v0, Lcom/serenegiant/utils/FileUtils;->CHECK_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkFreeSpace(Landroid/content/Context;FFI)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {p0, v1, p3}, Lcom/serenegiant/utils/FileUtils;->getCaptureDir(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    long-to-float p3, v1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-float p0, v1

    div-float p0, p3, p0

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_2

    cmpl-float p0, p3, p2

    if-lez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "checkFreeSpace:"

    .line 8
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public static final checkFreeSpace(Landroid/content/Context;JJI)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget v0, Lcom/serenegiant/utils/FileUtils;->FREE_RATIO:F

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    sub-long/2addr p1, v1

    long-to-float p1, p1

    const p2, 0x476a6000    # 60000.0f

    div-float/2addr p1, p2

    sget p2, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE_MINUTE:F

    mul-float p1, p1, p2

    sget p2, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE_OFFSET:F

    add-float/2addr p1, p2

    goto :goto_0

    :cond_1
    sget p1, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE:F

    .line 3
    :goto_0
    invoke-static {p0, v0, p1, p5}, Lcom/serenegiant/utils/FileUtils;->checkFreeSpace(Landroid/content/Context;FFI)Z

    move-result p0

    return p0
.end method

.method public static final getAvailableFreeSpace(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 2

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/FileUtils;->getCaptureDir(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p0

    move-wide v0, p0

    :cond_0
    return-wide v0
.end method

.method public static final getCaptureDir(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 1
    invoke-static {p0, p2}, Lcom/serenegiant/utils/SAFUtils;->hasStorageAccess(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0, p2}, Lcom/serenegiant/utils/SAFUtils;->createStorageDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    new-instance p1, Ljava/io/File;

    .line 4
    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDirName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/File;

    .line 5
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDirName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, p0

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public static final getCaptureFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/serenegiant/utils/FileUtils;->getCaptureFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final getCaptureFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDateTimeString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDateTimeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-lez p4, :cond_3

    .line 3
    invoke-static {p0, p4}, Lcom/serenegiant/utils/SAFUtils;->hasStorageAccess(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p0, p4}, Lcom/serenegiant/utils/SAFUtils;->createStorageDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 5
    invoke-virtual {p4}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p4

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    sget-object p4, Lcom/serenegiant/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "\u306a\u3093\u3067\u304b\u66f8\u304d\u8fbc\u3081\u3093"

    invoke-static {p4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz p3, :cond_3

    .line 7
    new-instance p4, Ljava/io/File;

    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDirName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p3, p4

    :cond_3
    if-nez p3, :cond_4

    const/4 p4, 0x0

    .line 8
    invoke-static {p0, p1, p4}, Lcom/serenegiant/utils/FileUtils;->getCaptureDir(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p3, p0

    :cond_4
    if-eqz p3, :cond_5

    .line 11
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p3, p0

    :cond_5
    return-object p3
.end method

.method public static final getDateTimeString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2
    sget-object v1, Lcom/serenegiant/utils/FileUtils;->mDateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/utils/FileUtils;->DIR_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Serenegiant"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/serenegiant/utils/FileUtils;->DIR_NAME:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getExternalMounts()Ljava/lang/String;
    .locals 8

    const-string v0, "/"

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mount"

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "secure"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "asec"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "fat"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, " "

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 9
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10
    array-length v5, v4

    if-le v5, v7, :cond_0

    aget-object v5, v4, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    aget-object v2, v4, v7

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v5, "fuse"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 16
    array-length v5, v4

    if-le v5, v7, :cond_0

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v2
.end method

.method public static final getFreeRatio(Landroid/content/Context;Ljava/lang/String;I)F
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/FileUtils;->getCaptureDir(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p1

    long-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    long-to-float p0, v0

    div-float/2addr p1, p0

    return p1

    :cond_1
    return v0
.end method

.method public static getStorageInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/serenegiant/utils/StorageInfo;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/FileUtils;->getCaptureDir(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p1

    long-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance p2, Lcom/serenegiant/utils/StorageInfo;

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    float-to-long p0, p1

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/serenegiant/utils/StorageInfo;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "getStorageInfo:"

    .line 4
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final replaceFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
