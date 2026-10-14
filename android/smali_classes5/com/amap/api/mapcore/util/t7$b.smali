.class final Lcom/amap/api/mapcore/util/t7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/t7;->c(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/t7;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w7;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/mapcore/util/p7;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    sget-object v3, Lcom/amap/api/mapcore/util/c6;->f:Ljava/lang/String;

    sget v4, Lcom/amap/api/mapcore/util/t7;->a:I

    const/high16 v5, 0x200000

    const-string v6, "6"

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/mapcore/util/w7;->e(Landroid/content/Context;Lcom/amap/api/mapcore/util/p7;Ljava/lang/String;IILjava/lang/String;)V

    const v1, 0xdbba00

    .line 3
    iput v1, v0, Lcom/amap/api/mapcore/util/p7;->h:I

    .line 4
    iget-object v1, v0, Lcom/amap/api/mapcore/util/p7;->g:Lcom/amap/api/mapcore/util/e8;

    if-nez v1, :cond_0

    .line 5
    new-instance v5, Lcom/amap/api/mapcore/util/v6;

    new-instance v1, Lcom/amap/api/mapcore/util/x6;

    new-instance v2, Lcom/amap/api/mapcore/util/y6;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/y6;-><init>()V

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/x6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    invoke-direct {v5, v1}, Lcom/amap/api/mapcore/util/v6;-><init>(Lcom/amap/api/mapcore/util/w6;)V

    .line 6
    new-instance v1, Lcom/amap/api/mapcore/util/a8;

    new-instance v8, Lcom/amap/api/mapcore/util/z7;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/mapcore/util/f8;

    invoke-direct {v4}, Lcom/amap/api/mapcore/util/f8;-><init>()V

    new-instance v6, Ljava/lang/String;

    const/16 v2, 0xa

    .line 7
    invoke-static {v2}, Lcom/amap/api/mapcore/util/y5;->a(I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    .line 8
    invoke-static {v10}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/mapcore/util/g5;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    .line 9
    invoke-static {v10}, Lcom/amap/api/mapcore/util/g5;->R(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    .line 10
    invoke-static {v10}, Lcom/amap/api/mapcore/util/g5;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x4

    invoke-static {}, Lcom/amap/api/mapcore/util/g5;->q()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x5

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x6

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    .line 11
    invoke-static {v10}, Lcom/amap/api/mapcore/util/g5;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/16 v9, 0x8

    iget-object v10, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/mapcore/util/c5;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/16 v9, 0x9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v7, v9

    iget-object v9, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    .line 12
    invoke-static {v9}, Lcom/amap/api/mapcore/util/c5;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    const/16 v2, 0xb

    iget-object v9, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    .line 13
    invoke-static {v9}, Lcom/amap/api/mapcore/util/c5;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z7;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/e8;Lcom/amap/api/mapcore/util/w6;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v1, v8}, Lcom/amap/api/mapcore/util/a8;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/p7;->g:Lcom/amap/api/mapcore/util/e8;

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/amap/api/mapcore/util/p7;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fKey"

    .line 15
    iput-object v1, v0, Lcom/amap/api/mapcore/util/p7;->i:Ljava/lang/String;

    .line 16
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore/util/j8;

    iget-object v8, p0, Lcom/amap/api/mapcore/util/t7$b;->a:Landroid/content/Context;

    iget v9, v0, Lcom/amap/api/mapcore/util/p7;->h:I

    iget-object v10, v0, Lcom/amap/api/mapcore/util/p7;->i:Ljava/lang/String;

    new-instance v11, Lcom/amap/api/mapcore/util/h8;

    sget-boolean v4, Lcom/amap/api/mapcore/util/t7;->b:Z

    .line 17
    invoke-static {}, Lcom/amap/api/mapcore/util/t7;->e()I

    move-result v2

    mul-int/lit16 v5, v2, 0x400

    sget v2, Lcom/amap/api/mapcore/util/t7;->d:I

    mul-int/lit16 v6, v2, 0x400

    const-string v7, "offLocKey"

    move-object v2, v11

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/h8;-><init>(Landroid/content/Context;ZIILjava/lang/String;)V

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/amap/api/mapcore/util/j8;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/mapcore/util/k8;)V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    .line 18
    invoke-static {v0}, Lcom/amap/api/mapcore/util/q7;->c(Lcom/amap/api/mapcore/util/p7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "uold"

    .line 19
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
