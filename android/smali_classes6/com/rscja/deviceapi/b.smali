.class public Lcom/rscja/deviceapi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "b"

.field private static c:Lcom/rscja/deviceapi/b;


# instance fields
.field protected a:Lcom/rscja/deviceapi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lg/f/a/a;->a:Z

    .line 3
    :try_start_0
    invoke-static {}, Lcom/rscja/deviceapi/a;->b()Lcom/rscja/deviceapi/a;

    move-result-object v0

    iput-object v0, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;
    :try_end_0
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized b()Lcom/rscja/deviceapi/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rscja/deviceapi/exception/ConfigurationException;
        }
    .end annotation

    const-class v0, Lcom/rscja/deviceapi/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/rscja/deviceapi/b;->c:Lcom/rscja/deviceapi/b;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lcom/rscja/deviceapi/b;->c:Lcom/rscja/deviceapi/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/rscja/deviceapi/b;

    invoke-direct {v1}, Lcom/rscja/deviceapi/b;-><init>()V

    sput-object v1, Lcom/rscja/deviceapi/b;->c:Lcom/rscja/deviceapi/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v1, Lcom/rscja/deviceapi/b;->c:Lcom/rscja/deviceapi/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()Lcom/rscja/deviceapi/DeviceAPI;
    .locals 1

    .line 1
    invoke-static {}, Lcom/rscja/deviceapi/DeviceAPI;->a()Lcom/rscja/deviceapi/DeviceAPI;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(II)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/rscja/deviceapi/a;->b()Lcom/rscja/deviceapi/a;

    move-result-object v0

    iput-object v0, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;
    :try_end_0
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/rscja/deviceapi/a;->c()Lcom/rscja/deviceapi/a;

    move-result-object v0

    iput-object v0, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;
    :try_end_2
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/rscja/deviceapi/a;->a()Lcom/rscja/deviceapi/a;

    move-result-object v0

    iput-object v0, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;
    :try_end_4
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 7
    :cond_3
    :try_start_6
    invoke-static {}, Lcom/rscja/deviceapi/a;->b()Lcom/rscja/deviceapi/a;

    move-result-object v0

    iput-object v0, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;
    :try_end_6
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/rscja/deviceapi/b;->a()Lcom/rscja/deviceapi/DeviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;

    invoke-virtual {v1}, Lcom/rscja/deviceapi/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;

    invoke-virtual {v2}, Lcom/rscja/deviceapi/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/rscja/deviceapi/DeviceAPI;->ModuleInit(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2

    .line 13
    sget-object v0, Lcom/rscja/deviceapi/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;

    invoke-virtual {v2}, Lcom/rscja/deviceapi/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   Uart= "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;

    invoke-virtual {v2}, Lcom/rscja/deviceapi/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   getBaudrate= "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rscja/deviceapi/b;->a:Lcom/rscja/deviceapi/a;

    invoke-virtual {v2}, Lcom/rscja/deviceapi/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   module="

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 p1, -0x1

    if-le p2, p1, :cond_4

    const/4 p1, 0x1

    .line 18
    monitor-exit p0

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 19
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/rscja/deviceapi/DeviceAPI;->a()Lcom/rscja/deviceapi/DeviceAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rscja/deviceapi/DeviceAPI;->ModuleReceiveEx()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e([B)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/rscja/deviceapi/DeviceAPI;->a()Lcom/rscja/deviceapi/DeviceAPI;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Lcom/rscja/deviceapi/DeviceAPI;->ModuleSend([BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_1
    :try_start_1
    sget-object v1, Lcom/rscja/deviceapi/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send() iRes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method
