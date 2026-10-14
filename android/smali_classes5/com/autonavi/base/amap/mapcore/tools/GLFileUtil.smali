.class public Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    throw p1

    :catchall_1
    move-exception p1

    .line 10
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    throw p1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "cache"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/app_cache"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "files"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/app_files"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method public static readFileContents(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_1
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    throw v0

    :catch_0
    move-object p0, v0

    .line 12
    :catch_1
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static writeDatasToFile(Ljava/lang/String;[B)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 4
    :try_start_0
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 12
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 14
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 16
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 18
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    throw p0

    .line 20
    :catch_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 21
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return-void

    .line 22
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 23
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
