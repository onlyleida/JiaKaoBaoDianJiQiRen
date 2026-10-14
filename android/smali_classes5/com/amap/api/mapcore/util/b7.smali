.class public Lcom/amap/api/mapcore/util/b7;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/b7$b;
    }
.end annotation


# static fields
.field private static e:I = 0x0

.field private static f:I = 0x3

.field private static g:J = 0x7530L

.field private static h:Z = false


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private c:Lcom/amap/api/mapcore/util/b7$b;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->c:Lcom/amap/api/mapcore/util/b7$b;

    .line 4
    new-instance v0, Lcom/amap/api/mapcore/util/b7$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/b7$a;-><init>(Lcom/amap/api/mapcore/util/b7;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->a:Ljava/lang/ref/WeakReference;

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b7;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 7
    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->c()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b7;)Lcom/amap/api/mapcore/util/b7$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b7;->c:Lcom/amap/api/mapcore/util/b7$b;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/b7;Lcom/amap/api/mapcore/util/b7$b;)Lcom/amap/api/mapcore/util/b7$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b7;->c:Lcom/amap/api/mapcore/util/b7$b;

    return-object p1
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/amap/api/mapcore/util/b7;->e:I

    .line 2
    sput-boolean v0, Lcom/amap/api/mapcore/util/b7;->h:Z

    return-void
.end method

.method static synthetic d(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/mapcore/util/b7;->h:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/b7;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b7;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/b7;->h:Z

    return v0
.end method

.method static synthetic g()I
    .locals 2

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/b7;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/amap/api/mapcore/util/b7;->e:I

    return v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/b7;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b7;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic i()I
    .locals 1

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/b7;->e:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/b7;->f:I

    return v0
.end method

.method private k()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/b7;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget v2, Lcom/amap/api/mapcore/util/b7;->f:I

    if-gt v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b7;->d:Landroid/os/Handler;

    add-int/lit8 v1, v1, 0x1

    int-to-long v3, v1

    sget-wide v5, Lcom/amap/api/mapcore/util/b7;->g:J

    mul-long v3, v3, v5

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b7;->d:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->d:Landroid/os/Handler;

    .line 6
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b7;->c:Lcom/amap/api/mapcore/util/b7$b;

    .line 7
    invoke-static {}, Lcom/amap/api/mapcore/util/b7;->c()V

    .line 8
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b7;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
