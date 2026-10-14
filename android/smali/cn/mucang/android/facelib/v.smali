.class public final Lcn/mucang/android/facelib/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\u0010J\u001a\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e0\u0010J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/facelib/TfLitePool;",
        "",
        "()V",
        "detector",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;",
        "detectorHandler",
        "Landroid/os/Handler;",
        "detectorThread",
        "Landroid/os/HandlerThread;",
        "maskDetector",
        "Lcn/mucang/android/facelib/TfLiteMaskDetector;",
        "maskDetectorHandler",
        "maskDetectorThread",
        "getDetector",
        "",
        "callBack",
        "Lkotlin/Function1;",
        "getMaskDetector",
        "postMaskThread",
        "task",
        "Ljava/lang/Runnable;",
        "recognizeFace",
        "",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier$Recognition;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getExtra",
        "",
        "release",
        "facelib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/facelib/v;

.field private static b:Lcn/mucang/android/facelib/y/e;

.field private static c:Lcn/mucang/android/facelib/u;

.field private static d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;

.field private static f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/facelib/v;

    invoke-direct {v0}, Lcn/mucang/android/facelib/v;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/android/facelib/y/e;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->b:Lcn/mucang/android/facelib/y/e;

    return-object v0
.end method

.method public static final synthetic b()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic c()Lcn/mucang/android/facelib/u;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->c:Lcn/mucang/android/facelib/u;

    return-object v0
.end method

.method public static final synthetic d()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic e(Lcn/mucang/android/facelib/y/e;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/facelib/v;->b:Lcn/mucang/android/facelib/y/e;

    return-void
.end method

.method public static final synthetic f(Lcn/mucang/android/facelib/u;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/facelib/v;->c:Lcn/mucang/android/facelib/u;

    return-void
.end method

.method public static synthetic i(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/facelib/v;->l(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private static final l(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Landroid/graphics/Bitmap;Z)V
    .locals 2

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/facelib/v;->b:Lcn/mucang/android/facelib/y/e;

    if-nez v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2, p3}, Lcn/mucang/android/facelib/y/e;->a(Landroid/graphics/Bitmap;Z)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final g(Lkotlin/jvm/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/facelib/y/e;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcn/mucang/android/facelib/v;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TfLitePoolDetector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/facelib/v;->d:Landroid/os/HandlerThread;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/mucang/android/facelib/v;->d:Landroid/os/HandlerThread;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/facelib/v;->e:Landroid/os/Handler;

    .line 7
    :cond_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/facelib/v;->b:Lcn/mucang/android/facelib/y/e;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_2
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    new-instance v2, Lcn/mucang/android/facelib/v$a;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/android/facelib/v$a;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 14
    sget-object p1, Lcn/mucang/android/facelib/v;->e:Landroid/os/Handler;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final h(Lkotlin/jvm/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/facelib/u;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcn/mucang/android/facelib/v;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TfLitePoolDetector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/facelib/v;->f:Landroid/os/HandlerThread;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/mucang/android/facelib/v;->f:Landroid/os/HandlerThread;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/facelib/v;->g:Landroid/os/Handler;

    .line 7
    :cond_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/facelib/v;->c:Lcn/mucang/android/facelib/u;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_2
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    new-instance v2, Lcn/mucang/android/facelib/v$b;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/android/facelib/v$b;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 14
    sget-object p1, Lcn/mucang/android/facelib/v;->g:Landroid/os/Handler;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/facelib/y/e$a;",
            ">;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    sget-object v2, Lcn/mucang/android/facelib/v;->e:Landroid/os/Handler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcn/mucang/android/facelib/n;

    invoke-direct {v3, v0, v1, p1, p2}, Lcn/mucang/android/facelib/n;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const-wide/16 p1, 0x1f4

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final m()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->c:Lcn/mucang/android/facelib/u;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/facelib/u;->g()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/mucang/android/facelib/v;->c:Lcn/mucang/android/facelib/u;

    .line 3
    sget-object v1, Lcn/mucang/android/facelib/v;->b:Lcn/mucang/android/facelib/y/e;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcn/mucang/android/facelib/y/e;->close()V

    .line 4
    :goto_1
    sput-object v0, Lcn/mucang/android/facelib/v;->b:Lcn/mucang/android/facelib/y/e;

    .line 5
    sget-object v1, Lcn/mucang/android/facelib/v;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    :goto_2
    sput-object v0, Lcn/mucang/android/facelib/v;->d:Landroid/os/HandlerThread;

    .line 7
    sget-object v1, Lcn/mucang/android/facelib/v;->e:Landroid/os/Handler;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    :goto_3
    sput-object v0, Lcn/mucang/android/facelib/v;->e:Landroid/os/Handler;

    .line 9
    sget-object v1, Lcn/mucang/android/facelib/v;->f:Landroid/os/HandlerThread;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 10
    :goto_4
    sput-object v0, Lcn/mucang/android/facelib/v;->f:Landroid/os/HandlerThread;

    .line 11
    sget-object v1, Lcn/mucang/android/facelib/v;->g:Landroid/os/Handler;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    :goto_5
    sput-object v0, Lcn/mucang/android/facelib/v;->g:Landroid/os/Handler;

    return-void
.end method
