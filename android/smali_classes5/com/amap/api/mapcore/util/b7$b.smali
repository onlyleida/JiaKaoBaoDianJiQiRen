.class Lcom/amap/api/mapcore/util/b7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/b7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/mapcore/util/c8;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->b:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b7$b;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b7$b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b7$b;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/api/mapcore/util/b7$b$a;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/b7$b$a;-><init>(Lcom/amap/api/mapcore/util/b7$b;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->c:Lcom/amap/api/mapcore/util/c8;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/amap/api/mapcore/util/c8;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b7$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/c8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->c:Lcom/amap/api/mapcore/util/c8;

    .line 5
    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->g()I

    .line 6
    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->i()I

    move-result v0

    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->j()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_2

    .line 7
    invoke-static {v2}, Lcom/amap/api/mapcore/util/b7;->d(Z)Z

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b7$b;->b()V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b;->c:Lcom/amap/api/mapcore/util/c8;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u4;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/c8$a;

    if-eqz v0, :cond_4

    .line 11
    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/c8$a;->a:Z

    if-nez v0, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b7$b;->b()V

    .line 13
    :cond_3
    invoke-static {v2}, Lcom/amap/api/mapcore/util/b7;->d(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "authForPro"

    const-string v2, "loadConfigData_uploadException"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
