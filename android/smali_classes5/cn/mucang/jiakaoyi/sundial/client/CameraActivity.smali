.class public final Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/LoaderCallbackInterface;
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;",
        ">;",
        "Lorg/opencv/android/LoaderCallbackInterface;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0014J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J\u001a\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0015H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;",
        "Lorg/opencv/android/LoaderCallbackInterface;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "()V",
        "frameCallback",
        "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;",
        "openCVIsSuccess",
        "",
        "previewId",
        "",
        "soundPool",
        "Landroid/media/SoundPool;",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "wavCamera",
        "wavTimer",
        "getStatName",
        "",
        "init",
        "",
        "onConnect",
        "onDestroy",
        "onDisconnect",
        "onManagerConnected",
        "status",
        "onPackageInstall",
        "operation",
        "callback",
        "Lorg/opencv/android/InstallCallbackInterface;",
        "onPreviewFrame",
        "data",
        "",
        "startTimer",
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
.field private volatile b:Z

.field private c:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

.field private d:Landroid/media/SoundPool;

.field private e:I

.field private f:I

.field private g:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->c:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->d:Landroid/media/SoundPool;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->e:I

    return p0
.end method

.method public static final synthetic m(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->f:I

    return p0
.end method

.method private static final n(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->b:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->btnCameraC1:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->btnCameraC1:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->r()V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->n(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->o(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;Landroid/view/View;)V

    return-void
.end method

.method private final r()V
    .locals 9

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->ivCamera:Landroid/widget/ImageView;

    sget v2, Lcn/mucang/jiakaoyi/sundial/R$drawable;->ic_camera_01:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v3

    new-instance v6, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v6, p0, v1, v0, v2}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$startTimer$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/c;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u62cd\u7167"

    return-object v0
.end method

.method protected init()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v2, "4.2.0"

    invoke-static {v2, v0, p0}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->onManagerConnected(I)V

    .line 5
    :goto_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->setPreviewInOpen(Z)V

    .line 6
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 8
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    .line 10
    iput-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->d:Landroid/media/SoundPool;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 11
    :cond_1
    sget v4, Lcn/mucang/jiakaoyi/sundial/R$raw;->wav_camera:I

    invoke-virtual {v2, p0, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    :goto_1
    iput v2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->e:I

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->d:Landroid/media/SoundPool;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    sget v4, Lcn/mucang/jiakaoyi/sundial/R$raw;->raw_hint:I

    invoke-virtual {v2, p0, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    :goto_2
    iput v2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->f:I

    .line 13
    sget-object v2, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->r()Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->a()Lcn/mucang/android/jiakaoyi/framework/camera/a;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    move-object v2, v4

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/framework/camera/a;->a()Lcn/mucang/android/jiakaoyi/framework/camera/b;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->g:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v2, :cond_4

    goto/16 :goto_7

    .line 14
    :cond_4
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    if-ne v5, v6, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 15
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "\u76f8\u673a\u521d\u59cb\u5316\u6210\u529f\uff0c \u4f7f\u7528AI\u7684\u6444\u50cf\u5934?:"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SundialLog"

    invoke-static {v6, v5}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v5, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    const/4 v8, 0x0

    new-instance v10, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$init$1$1;

    invoke-direct {v10, p0}, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity$init$1$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v5

    move v9, v3

    invoke-direct/range {v7 .. v12}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;-><init>(ZZLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    iput-object v5, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->c:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    if-eqz v5, :cond_9

    .line 17
    invoke-interface {v2, v5}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    .line 18
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->start()V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v4, v4, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->aiContainer:Landroid/widget/FrameLayout;

    const-string v5, "viewBinding.aiContainer"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    const/16 v7, 0x8

    .line 20
    :goto_5
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v4, v4, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v7, "viewBinding.camera"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    const/16 v1, 0x8

    .line 22
    :goto_6
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_8

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->aiContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    goto :goto_7

    .line 24
    :cond_8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    .line 25
    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 26
    :goto_7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->btnBack:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/sundial/client/a;-><init>(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->btnCameraC1:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/sundial/client/b;-><init>(Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9
    const-string v0, "frameCallback"

    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4
.end method

.method public onConnect()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->hashCode()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->h:I

    .line 3
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v2, v2, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v2}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->d:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->setPreviewInOpen(Z)V

    .line 4
    sget-object v2, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v2, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->g:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->aiContainer:Landroid/widget/FrameLayout;

    const-string v2, "viewBinding.aiContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v2, "viewBinding.camera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    .line 9
    :goto_2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->stop()V

    .line 10
    :goto_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->c:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->h()V

    return-void

    :cond_4
    const-string v0, "frameCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDetached(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onManagerConnected(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;->b:Z

    :cond_0
    return-void
.end method

.method public onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
    .locals 0

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
