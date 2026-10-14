.class public Lcn/mucang/android/jky/usbcamera/detectside/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jky/usbcamera/detectside/o$c;,
        Lcn/mucang/android/jky/usbcamera/detectside/o$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Lcn/mucang/android/jky/usbcamera/detectside/o$c;

.field private static e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->b:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/o$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jky/usbcamera/detectside/o$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()Lcn/mucang/android/jky/usbcamera/detectside/o$c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->d:Lcn/mucang/android/jky/usbcamera/detectside/o$c;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static d(Lorg/opencv/core/Mat;JZ)V
    .locals 5

    .line 1
    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/o;

    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/o;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u820d\u5f03"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4efb\u52a1\u5f00\u59cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/r;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/jky/usbcamera/detectside/r;-><init>(Lorg/opencv/core/Mat;JZ)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Landroid/graphics/Bitmap;Ljava/util/List;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;J)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 2
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const-wide v2, -0x100000000L

    and-long/2addr v2, p2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v3, v2

    .line 5
    iput v3, v1, Landroid/os/Message;->arg1:I

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p2

    long-to-int v3, v2

    .line 6
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 7
    new-instance v2, Lcn/mucang/android/jky/usbcamera/detectside/o$b;

    invoke-direct {v2, p2, p3, p1, p0}, Lcn/mucang/android/jky/usbcamera/detectside/o$b;-><init>(JLjava/util/List;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    sget-object p0, Lcn/mucang/android/jky/usbcamera/detectside/o;->e:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static g(Lcn/mucang/android/jky/usbcamera/detectside/o$c;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jky/usbcamera/detectside/o;->d:Lcn/mucang/android/jky/usbcamera/detectside/o$c;

    return-void
.end method

.method public static h()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
