.class public final Lcn/mucang/sundial/library/activity/CameTestActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/CameTestActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "",
        "checkCamera",
        "()Z",
        "Lkotlin/v;",
        "initUVCCamera",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "onPause",
        "onDestroy",
        "isHiddenSelfCheckBtn",
        "Ljava/lang/Runnable;",
        "checkCameraTask",
        "Ljava/lang/Runnable;",
        "Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;",
        "viewBinding$delegate",
        "Lkotlin/f;",
        "getViewBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "cameraUtil",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

.field private final checkCameraTask:Ljava/lang/Runnable;

.field private final viewBinding$delegate:Lkotlin/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    new-instance v2, Lcn/mucang/sundial/library/activity/CameTestActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/CameTestActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->viewBinding$delegate:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/sundial/library/activity/CameTestActivity$checkCameraTask$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/CameTestActivity$checkCameraTask$1;-><init>(Lcn/mucang/sundial/library/activity/CameTestActivity;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->checkCameraTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$checkCamera(Lcn/mucang/sundial/library/activity/CameTestActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->checkCamera()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCheckCameraTask$p(Lcn/mucang/sundial/library/activity/CameTestActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->checkCameraTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final checkCamera()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->cameraCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$string;->tt_voice_face_check_fail_no_camera:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->g(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.tt_vo\u2026ace_check_fail_no_camera)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return v1
.end method

.method private final getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->viewBinding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    return-object v0
.end method

.method private final initUVCCamera()V
    .locals 6

    .line 1
    new-instance v2, Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/CameTestActivity$initUVCCamera$cameraResult$1;-><init>(Lcn/mucang/sundial/library/activity/CameTestActivity;)V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/device/SundialDevice;->Companion:Lcn/mucang/sundial/library/device/SundialDevice$Companion;

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    move-result-object v1

    iget-object v3, v1, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->cameraView:Landroid/view/TextureView;

    .line 4
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    move-result-object v1

    iget-object v4, v1, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->cameraLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    move-object v1, p0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/sundial/library/device/SundialDevice$Companion;->createCameraUtil(Landroid/content/Context;Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isHiddenSelfCheckBtn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->setTakingPhoto(Z)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->initUVCCamera()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/CameTestActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "viewBinding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->setTakingPhoto(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/TopActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->pause()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->checkCameraTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->open()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CameTestActivity;->checkCameraTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
