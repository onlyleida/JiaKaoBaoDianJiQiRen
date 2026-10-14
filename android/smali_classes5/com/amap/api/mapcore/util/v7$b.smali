.class final Lcom/amap/api/mapcore/util/v7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/v7;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v7$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/v7;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w7;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/mapcore/util/p7;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v7$b;->a:Landroid/content/Context;

    sget-object v3, Lcom/amap/api/mapcore/util/c6;->e:Ljava/lang/String;

    const/16 v4, 0x3e8

    const v5, 0x4b000

    const-string v6, "2"

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/mapcore/util/w7;->e(Landroid/content/Context;Lcom/amap/api/mapcore/util/p7;Ljava/lang/String;IILjava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/amap/api/mapcore/util/p7;->g:Lcom/amap/api/mapcore/util/e8;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/api/mapcore/util/x7;

    new-instance v2, Lcom/amap/api/mapcore/util/b8;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/v7$b;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/mapcore/util/y7;

    new-instance v5, Lcom/amap/api/mapcore/util/d8;

    new-instance v6, Lcom/amap/api/mapcore/util/f8;

    invoke-direct {v6}, Lcom/amap/api/mapcore/util/f8;-><init>()V

    invoke-direct {v5, v6}, Lcom/amap/api/mapcore/util/d8;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    invoke-direct {v4, v5}, Lcom/amap/api/mapcore/util/y7;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    invoke-direct {v2, v3, v4}, Lcom/amap/api/mapcore/util/b8;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/e8;)V

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/x7;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/p7;->g:Lcom/amap/api/mapcore/util/e8;

    :cond_0
    const v1, 0x36ee80

    .line 5
    iput v1, v0, Lcom/amap/api/mapcore/util/p7;->h:I

    .line 6
    iget-object v1, v0, Lcom/amap/api/mapcore/util/p7;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cKey"

    .line 7
    iput-object v1, v0, Lcom/amap/api/mapcore/util/p7;->i:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lcom/amap/api/mapcore/util/j8;

    iget-object v8, p0, Lcom/amap/api/mapcore/util/v7$b;->a:Landroid/content/Context;

    iget v9, v0, Lcom/amap/api/mapcore/util/p7;->h:I

    iget-object v10, v0, Lcom/amap/api/mapcore/util/p7;->i:Ljava/lang/String;

    new-instance v11, Lcom/amap/api/mapcore/util/g8;

    const/16 v12, 0x1e

    iget-object v13, v0, Lcom/amap/api/mapcore/util/p7;->a:Ljava/lang/String;

    new-instance v14, Lcom/amap/api/mapcore/util/h8;

    sget-boolean v4, Lcom/amap/api/mapcore/util/v7;->a:Z

    .line 10
    invoke-static {}, Lcom/amap/api/mapcore/util/v7;->e()I

    move-result v2

    mul-int/lit16 v5, v2, 0x400

    sget v2, Lcom/amap/api/mapcore/util/v7;->b:I

    mul-int/lit16 v6, v2, 0x400

    const-string v7, "staticUpdate"

    move-object v2, v14

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/h8;-><init>(Landroid/content/Context;ZIILjava/lang/String;)V

    invoke-direct {v11, v12, v13, v14}, Lcom/amap/api/mapcore/util/g8;-><init>(ILjava/lang/String;Lcom/amap/api/mapcore/util/k8;)V

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/amap/api/mapcore/util/j8;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/mapcore/util/k8;)V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    .line 11
    :cond_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/q7;->c(Lcom/amap/api/mapcore/util/p7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "stm"

    const-string v2, "usd"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
