.class public final Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;
.super Lcn/mucang/sundial/library/device/BaseCamera;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/c;
.implements Lorg/opencv/android/LoaderCallbackInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B+\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u000bH\u0016J@\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u001aH\u0016J\u0010\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u001aH\u0016J\u001a\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001a2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0008\u0010-\u001a\u00020\u001cH\u0016J\u0008\u0010.\u001a\u00020\u001cH\u0016J\u0008\u0010/\u001a\u00020\u001cH\u0016J\u0008\u00100\u001a\u00020\u001cH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u00020\u00108BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "Lorg/opencv/android/LoaderCallbackInterface;",
        "cameraResult",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "textureView",
        "Landroid/view/TextureView;",
        "frameLayout",
        "Landroid/widget/FrameLayout;",
        "needPreview",
        "",
        "(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)V",
        "captureTime",
        "",
        "dir",
        "Ljava/io/File;",
        "getDir",
        "()Ljava/io/File;",
        "hasFrame",
        "noCameraJob",
        "Lkotlinx/coroutines/Job;",
        "openCVIsSuccess",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "cameraCount",
        "",
        "init",
        "",
        "isolatePreviewPage",
        "onFrame",
        "byteArray",
        "",
        "width",
        "height",
        "stride",
        "size",
        "timeUs",
        "rotation",
        "onManagerConnected",
        "status",
        "onPackageInstall",
        "operation",
        "callback",
        "Lorg/opencv/android/InstallCallbackInterface;",
        "open",
        "pause",
        "release",
        "takePhoto",
        "sundial_release"
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
.field private final a:Lcn/mucang/sundial/library/device/CameraResult;

.field private final b:Landroid/view/TextureView;

.field private final c:Landroid/widget/FrameLayout;

.field private final d:Z

.field private e:Ljava/io/File;

.field private f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private g:Lkotlinx/coroutines/t1;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/device/BaseCamera;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->a:Lcn/mucang/sundial/library/device/CameraResult;

    .line 3
    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->b:Landroid/view/TextureView;

    .line 4
    iput-object p3, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->c:Landroid/widget/FrameLayout;

    .line 5
    iput-boolean p4, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d:Z

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "sundial"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->e:Ljava/io/File;

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)Lcn/mucang/sundial/library/device/CameraResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->a:Lcn/mucang/sundial/library/device/CameraResult;

    return-object p0
.end method

.method private final c()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->e:Ljava/io/File;

    return-object v0
.end method

.method private static final d(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->c()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "sundial_temp"

    invoke-static/range {v6 .. v11}, Lkotlin/text/l;->T(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/text/l;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic e(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->i(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->h(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V

    return-void
.end method

.method private static final h(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d:Z

    const-string v1, "SundialLog"

    if-eqz v0, :cond_0

    const-string v0, "\u8ba1\u65f6\u9875\u9762\u62cd\u7167\uff1a\u6444\u50cf\u5934\u5df2\u8fde\u63a5"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u8ba1\u65f6\u9759\u9ed8\u62cd\u7167\uff1a\u6444\u50cf\u5934\u5df2\u8fde\u63a5"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->a:Lcn/mucang/sundial/library/device/CameraResult;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcn/mucang/sundial/library/device/CameraResult;->connectSuccess()V

    :goto_1
    return-void
.end method

.method private static final i(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;Ljava/io/File;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->a:Lcn/mucang/sundial/library/device/CameraResult;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcn/mucang/sundial/library/device/CameraResult;->takePhotoFinish(Ljava/io/File;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a([BIIIIJI)V
    .locals 12

    move-object v0, p0

    const-string v1, "byteArray"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v1, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2
    iput-boolean v3, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->h:Z

    .line 3
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->g:Lkotlinx/coroutines/t1;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :goto_0
    new-instance v1, Lcn/mucang/jiakaoyi/sundial/service/strategy/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/b;-><init>(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-wide v5, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->i:J

    const-wide/16 v8, 0x0

    cmp-long v1, v5, v8

    if-eqz v1, :cond_5

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->c()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "sundial_temp.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    iget-object v5, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v2

    :goto_1
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    if-ne v2, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_2
    sget-object v2, Lcn/mucang/jiakaoyi/sundial/b/a;->a:Lcn/mucang/jiakaoyi/sundial/b/a$a;

    move-object v3, v1

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/jiakaoyi/sundial/b/a$a;->b(Ljava/io/File;[BIIZ)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f20\u5165\u8ba1\u65f6\u7ec8\u7aef\uff0c\u7167\u7247\u6587\u4ef6 exists:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SundialLog"

    invoke-static {v3, v2}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcn/mucang/jiakaoyi/sundial/service/strategy/a;

    invoke-direct {v2, p0, v1}, Lcn/mucang/jiakaoyi/sundial/service/strategy/a;-><init>(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;Ljava/io/File;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 11
    iget-boolean v1, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d:Z

    if-eqz v1, :cond_4

    const-string v1, "\u8ba1\u65f6\u9875\u9762\u62cd\u7167\uff1a\u5b8c\u6210"

    .line 12
    invoke-static {v3, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v1, "\u8ba1\u65f6\u9759\u9ed8\u62cd\u7167\uff1a\u5b8c\u6210"

    .line 13
    invoke-static {v3, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_3
    iput-wide v8, v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->i:J

    :cond_5
    return-void
.end method

.method public cameraCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->h:Z

    return v0
.end method

.method public init()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d:Z

    const-string v1, "SundialLog"

    if-eqz v0, :cond_0

    const-string v0, "\u8ba1\u65f6\u9875\u9762\u62cd\u7167\uff1a\u521d\u59cb\u5316"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u8ba1\u65f6\u9759\u9ed8\u62cd\u7167\uff1a\u521d\u59cb\u5316"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "4.2.0"

    invoke-static {v1, v0, p0}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->onManagerConnected(I)V

    .line 7
    :goto_1
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/service/strategy/c;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/c;-><init>(Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isolatePreviewPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onManagerConnected(I)V
    .locals 10

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->r()Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->a()Lcn/mucang/android/jiakaoyi/framework/camera/a;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/framework/camera/a;->a()Lcn/mucang/android/jiakaoyi/framework/camera/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->a:Lcn/mucang/sundial/library/device/CameraResult;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcn/mucang/sundial/library/device/CameraResult;->cameraRemoved()V

    :goto_1
    return-void

    .line 3
    :cond_2
    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->start()V

    .line 5
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->g:Lkotlinx/coroutines/t1;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v0}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy$onManagerConnected$1;

    invoke-direct {v7, v1, v2, p0, v0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy$onManagerConnected$1;-><init>(JLcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->g:Lkotlinx/coroutines/t1;

    goto :goto_4

    .line 8
    :cond_5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->a:Lcn/mucang/sundial/library/device/CameraResult;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Lcn/mucang/sundial/library/device/CameraResult;->cameraRemoved()V

    :goto_4
    return-void
.end method

.method public onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v0

    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->b:Landroid/view/TextureView;

    if-eqz v1, :cond_3

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v0

    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->b:Landroid/view/TextureView;

    if-eqz v1, :cond_3

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->f:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->stop()V

    :goto_1
    return-void
.end method

.method public takePhoto()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->i:J

    .line 2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;->d:Z

    const-string v1, "SundialLog"

    if-eqz v0, :cond_0

    const-string v0, "\u8ba1\u65f6\u9875\u9762\u62cd\u7167\uff1a\u6293\u62cd"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u8ba1\u65f6\u9759\u9ed8\u62cd\u7167\uff1a\u6293\u62cd"

    .line 4
    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
