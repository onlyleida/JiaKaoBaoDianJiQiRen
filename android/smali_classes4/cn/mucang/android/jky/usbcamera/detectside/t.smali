.class public Lcn/mucang/android/jky/usbcamera/detectside/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/mucang/android/jky/usbcamera/detectside/u; = null

.field private static volatile b:Z = false

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/i;->a:Lcn/mucang/android/jky/usbcamera/detectside/i;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()F
    .locals 2

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->c:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-virtual {v1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->h()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    const/high16 v1, -0x3b860000    # -1000.0f

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Z
    .locals 2

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d()V
    .locals 3

    .line 1
    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-virtual {v1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "SideDetectorTag"

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 5
    sput-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static synthetic e()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-virtual {v1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->o()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic f()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-virtual {v1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->p()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic g()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-direct {v0}, Lcn/mucang/android/jky/usbcamera/detectside/u;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->s()V

    .line 3
    const-class v1, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v1

    .line 4
    :try_start_0
    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcn/mucang/android/jky/usbcamera/detectside/t;->b:Z

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized h()V
    .locals 2

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/g;->a:Lcn/mucang/android/jky/usbcamera/detectside/g;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized i()V
    .locals 2

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/f;->a:Lcn/mucang/android/jky/usbcamera/detectside/f;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized j(Z)V
    .locals 1

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-boolean p0, Lcn/mucang/android/jky/usbcamera/detectside/t;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized k()V
    .locals 2

    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/t;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->b:Z

    const/4 v1, 0x0

    .line 5
    sput-boolean v1, Lcn/mucang/android/jky/usbcamera/detectside/t;->c:Z

    .line 6
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/h;->a:Lcn/mucang/android/jky/usbcamera/detectside/h;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
