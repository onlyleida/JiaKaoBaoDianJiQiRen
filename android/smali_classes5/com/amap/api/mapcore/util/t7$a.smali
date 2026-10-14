.class final Lcom/amap/api/mapcore/util/t7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/t7;->d(Lcom/amap/api/mapcore/util/s7;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore/util/s7;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/s7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t7$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/t7$a;->b:Lcom/amap/api/mapcore/util/s7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    const-class v0, Lcom/amap/api/mapcore/util/t7;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/t7;->a()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/w7;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/mapcore/util/p7;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/t7$a;->a:Landroid/content/Context;

    sget-object v5, Lcom/amap/api/mapcore/util/c6;->f:Ljava/lang/String;

    sget v6, Lcom/amap/api/mapcore/util/t7;->a:I

    const/high16 v7, 0x200000

    const-string v8, "6"

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/amap/api/mapcore/util/w7;->e(Landroid/content/Context;Lcom/amap/api/mapcore/util/p7;Ljava/lang/String;IILjava/lang/String;)V

    .line 5
    iget-object v3, v2, Lcom/amap/api/mapcore/util/p7;->e:Lcom/amap/api/mapcore/util/w6;

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Lcom/amap/api/mapcore/util/v6;

    new-instance v4, Lcom/amap/api/mapcore/util/x6;

    new-instance v5, Lcom/amap/api/mapcore/util/y6;

    new-instance v6, Lcom/amap/api/mapcore/util/x6;

    invoke-direct {v6}, Lcom/amap/api/mapcore/util/x6;-><init>()V

    invoke-direct {v5, v6}, Lcom/amap/api/mapcore/util/y6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    invoke-direct {v4, v5}, Lcom/amap/api/mapcore/util/x6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    invoke-direct {v3, v4}, Lcom/amap/api/mapcore/util/v6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    iput-object v3, v2, Lcom/amap/api/mapcore/util/p7;->e:Lcom/amap/api/mapcore/util/w6;

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/t7$a;->b:Lcom/amap/api/mapcore/util/s7;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/s7;->b()[B

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore/util/q7;->d(Ljava/lang/String;[BLcom/amap/api/mapcore/util/p7;)V

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "aple"

    .line 9
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
