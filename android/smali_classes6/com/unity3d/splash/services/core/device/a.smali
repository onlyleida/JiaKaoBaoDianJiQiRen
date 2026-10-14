.class public Lcom/unity3d/splash/services/core/device/a;
.super Lcom/unity3d/splash/services/c/a/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/splash/services/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/device/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/device/a;->c:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    return-void
.end method


# virtual methods
.method public h()Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/device/a;->c:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    return-object v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/device/a;->j()Z

    invoke-super {p0}, Lcom/unity3d/splash/services/c/a/a;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/device/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/unity3d/splash/services/c/a/b;->c(Ljava/io/File;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/c/a/a;->g(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Error creating storage JSON"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/device/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/device/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/c/a/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/c/a/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/c/a/b;->g(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
