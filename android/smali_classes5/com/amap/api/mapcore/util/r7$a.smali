.class final Lcom/amap/api/mapcore/util/r7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/r7;->a(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r7$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/r7$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-class v0, Lcom/amap/api/mapcore/util/r7;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r7$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/amap/api/mapcore/util/k5;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/amap/api/mapcore/util/r7;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/w7;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/mapcore/util/p7;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/r7$a;->b:Landroid/content/Context;

    sget-object v5, Lcom/amap/api/mapcore/util/c6;->g:Ljava/lang/String;

    const/16 v6, 0x32

    const v7, 0x19000

    const-string v8, "10"

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/amap/api/mapcore/util/w7;->e(Landroid/content/Context;Lcom/amap/api/mapcore/util/p7;Ljava/lang/String;IILjava/lang/String;)V

    .line 6
    iget-object v3, v2, Lcom/amap/api/mapcore/util/p7;->e:Lcom/amap/api/mapcore/util/w6;

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Lcom/amap/api/mapcore/util/v6;

    new-instance v4, Lcom/amap/api/mapcore/util/y6;

    new-instance v5, Lcom/amap/api/mapcore/util/x6;

    invoke-direct {v5}, Lcom/amap/api/mapcore/util/x6;-><init>()V

    invoke-direct {v4, v5}, Lcom/amap/api/mapcore/util/y6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    invoke-direct {v3, v4}, Lcom/amap/api/mapcore/util/v6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    iput-object v3, v2, Lcom/amap/api/mapcore/util/p7;->e:Lcom/amap/api/mapcore/util/w6;

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "yyyyMMdd HH:mm:ss"

    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore/util/n5;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \"timestamp\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"details\":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r7$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore/util/q7;->d(Ljava/lang/String;[BLcom/amap/api/mapcore/util/p7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "mam"

    const-string v3, "ap"

    .line 11
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
