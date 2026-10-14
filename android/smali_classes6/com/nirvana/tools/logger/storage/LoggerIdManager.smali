.class public Lcom/nirvana/tools/logger/storage/LoggerIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTH_APP_INFO:Ljava/lang/String; = "AUTH_APP_INFO"

.field private static final KEY_UNIQUE_ID:Ljava/lang/String; = "uniqueId"

.field private static final SP_FILE_NAME:Ljava/lang/String; = "nirvana.tools.logger"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileStorage:Lcom/nirvana/tools/logger/storage/FileStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/nirvana/tools/logger/UmaaidSdk;->isUmAaidSdkAble()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nirvana/tools/logger/UmaaidSdk;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private generateUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nirvana/tools/core/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/nirvana/tools/core/AppUtils;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/nirvana/tools/core/CryptUtil;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getUmaaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nirvana/tools/logger/UmaaidSdk;->isUmAaidSdkAble()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nirvana/tools/logger/UmaaidSdk;->getAaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mFileStorage:Lcom/nirvana/tools/logger/storage/FileStorage;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/nirvana/tools/logger/storage/FileStorageForQ;

    iget-object v1, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nirvana/tools/logger/storage/FileStorageForQ;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nirvana/tools/logger/storage/FileStorage;

    iget-object v1, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nirvana/tools/logger/storage/FileStorage;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mFileStorage:Lcom/nirvana/tools/logger/storage/FileStorage;

    :cond_1
    iget-object v0, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mContext:Landroid/content/Context;

    const-string v1, "AUTH_APP_INFO"

    const-string v2, "uniqueId"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/nirvana/tools/logger/utils/UTSharedPreferencesHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mFileStorage:Lcom/nirvana/tools/logger/storage/FileStorage;

    const-string v3, ".uniqueId"

    invoke-virtual {v0, v3}, Lcom/nirvana/tools/logger/storage/FileStorage;->firstFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->generateUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mFileStorage:Lcom/nirvana/tools/logger/storage/FileStorage;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v0, v5}, Lcom/nirvana/tools/logger/storage/FileStorage;->createNewFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_2
    iget-object v3, p0, Lcom/nirvana/tools/logger/storage/LoggerIdManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, v0}, Lcom/nirvana/tools/logger/utils/UTSharedPreferencesHelper;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "com.ut.device.UTDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
