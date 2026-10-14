.class public final Lcn/mucang/android/facelib/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/p;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/facelib/TfLiteMaskDetector;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;",
        "()V",
        "size",
        "Landroid/util/Size;",
        "tfLite",
        "Lcn/mucang/android/facelib/tflite/MaskClassifier;",
        "detect",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getInputSize",
        "init",
        "",
        "enableGpu",
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


# instance fields
.field private a:Lcn/mucang/android/facelib/y/c;

.field private b:Landroid/util/Size;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final c(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lcn/mucang/android/facelib/u;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p2, p2, Lcn/mucang/android/facelib/u;->a:Lcn/mucang/android/facelib/y/c;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Lcn/mucang/android/facelib/y/c;->a(Landroid/graphics/Bitmap;)Ljava/util/List;

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

.method public static synthetic e(Lcn/mucang/android/facelib/y/c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/facelib/u;->h(Lcn/mucang/android/facelib/y/c;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lcn/mucang/android/facelib/u;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/facelib/u;->c(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lcn/mucang/android/facelib/u;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/facelib/y/c;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/facelib/y/c;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 7

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    sget-object v3, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    new-instance v4, Lcn/mucang/android/facelib/m;

    invoke-direct {v4, v0, v2, p0, p1}, Lcn/mucang/android/facelib/m;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lcn/mucang/android/facelib/u;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcn/mucang/android/facelib/v;->j(Ljava/lang/Runnable;)V

    .line 4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    move-object v2, v0

    check-cast v2, Lcn/mucang/android/facelib/y/d;

    .line 11
    invoke-virtual {v2}, Lcn/mucang/android/facelib/y/d;->a()F

    move-result v2

    .line 12
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    move-object v4, v3

    check-cast v4, Lcn/mucang/android/facelib/y/d;

    .line 14
    invoke-virtual {v4}, Lcn/mucang/android/facelib/y/d;->a()F

    move-result v4

    .line 15
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_4

    move-object v0, v3

    move v2, v4

    .line 16
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 17
    :goto_0
    check-cast v0, Lcn/mucang/android/facelib/y/d;

    :goto_1
    const/4 p1, 0x0

    if-nez v0, :cond_5

    return p1

    .line 18
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/y/d;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\uff0ccfc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/y/d;->a()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v0}, Lcn/mucang/android/facelib/y/d;->a()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_7

    .line 20
    invoke-virtual {v0}, Lcn/mucang/android/facelib/y/d;->b()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    :goto_2
    return v1

    :cond_7
    return p1
.end method

.method public b()Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/u;->b:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcn/mucang/android/facelib/u;->b:Landroid/util/Size;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/facelib/u;->b:Landroid/util/Size;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "face_mask_detect_usetf.tflite"

    const/16 v2, 0xc8

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, p1, v3}, Lcn/mucang/android/facelib/y/b;->b(Landroid/content/Context;Ljava/lang/String;IZZ)Lcn/mucang/android/facelib/y/c;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/facelib/u;->a:Lcn/mucang/android/facelib/y/c;

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/u;->a:Lcn/mucang/android/facelib/y/c;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/android/facelib/u;->a:Lcn/mucang/android/facelib/y/c;

    .line 3
    new-instance v1, Lcn/mucang/android/facelib/l;

    invoke-direct {v1, v0}, Lcn/mucang/android/facelib/l;-><init>(Lcn/mucang/android/facelib/y/c;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
