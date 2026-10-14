.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;",
        ">;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/r;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0006\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0014J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;",
        "()V",
        "faceCheckListener",
        "cn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;",
        "faceChecker",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
        "fps",
        "",
        "time",
        "",
        "videoSource",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "onMaskResult",
        "maskResult",
        "showVideo",
        "sourceAi",
        "",
        "Companion",
        "teachbase_release"
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
.field public static final g:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

.field private d:J

.field private e:I

.field private final f:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;

    return-void
.end method

.method private final A(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    const-string v1, "viewBinding.aiCamera"

    const-string v2, "viewBinding.uvcCamera"

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l0()V

    .line 5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->P()V

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;-><init>()V

    goto :goto_3

    .line 7
    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    sget-object v3, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    .line 8
    :goto_3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    .line 9
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->b()I

    move-result v0

    const-string v3, "key_face_limit_pixel_v2"

    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v8

    .line 10
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v5

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    invoke-static {v9}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v10, Lcn/mucang/android/facelib/GoogleDetectorFactory;

    invoke-direct {v10}, Lcn/mucang/android/facelib/GoogleDetectorFactory;-><init>()V

    iget-object v11, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;-><init>(Lkotlinx/coroutines/i0;IIILcn/mucang/android/jiakaoyi/framework/camera/b;Lcn/mucang/jiakaoyi/uilib/login/face/k;Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h0(Lcn/mucang/jiakaoyi/uilib/login/face/r;)V

    .line 12
    :goto_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->g()Lcn/mucang/jiakaoyi/uilib/login/face/o;

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    .line 14
    :goto_5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g0(Lcn/mucang/jiakaoyi/uilib/login/face/o;)V

    .line 15
    :goto_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$showVideo$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    invoke-virtual {v0, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->i0(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;)V

    .line 16
    :goto_7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p1, :cond_b

    const/4 v5, 0x0

    goto :goto_8

    :cond_b
    const/16 v5, 0x8

    .line 17
    :goto_8
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    const/16 v3, 0x8

    .line 19
    :goto_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j0()V

    :goto_a
    if-eqz p1, :cond_f

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez p1, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    goto :goto_b

    .line 22
    :cond_f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez p1, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->e:I

    return p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->d:J

    return-wide v0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->e:I

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->d:J

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->A(Z)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final p(Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;-><init>()V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb03:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$init$4$1;

    invoke-direct {v1, p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$init$4$1;-><init>(ILcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final r(Landroid/view/View;)V
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/setting/r0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/r0;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const-string v3, "\u6e29\u99a8\u63d0\u793a"

    const-string v4, "\u662f\u5426\u6e05\u9664\u79bb\u7ebf\u4eba\u8138\u6570\u636e"

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u5220\u9664"

    const/4 v9, 0x0

    const/16 v10, 0x48

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final s(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->r()V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(I)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->z(I)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->s(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->r(Landroid/view/View;)V

    return-void
.end method

.method private static final z(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "\u8bf7\u6458\u4e0b\u53e3\u7f69"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/q0;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/q0;-><init>(I)V

    const-string p1, "onMaskResult"

    const/16 v2, 0xbb8

    invoke-virtual {v0, p1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceSettingActivity"

    return-object v0
.end method

.method protected init()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/p0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/p0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u4eba\u8138\u767b\u5f55\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const-string v2, "viewBinding.videoContainer"

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->landmark:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;->b(II)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->videoContainer:Landroid/widget/FrameLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->landmark:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;

    invoke-virtual {v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;->b(II)V

    const-string v1, "1280:720"

    .line 9
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb03:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->landmark:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;->b(II)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->videoContainer:Landroid/widget/FrameLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->landmark:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;

    invoke-virtual {v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;->b(II)V

    const-string v1, "640:480"

    .line 16
    iput-object v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb04:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/o0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/o0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->e()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 21
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->A(Z)V

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->btnClearFace:Landroid/widget/LinearLayout;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/t0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/t0;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->etOnline:Landroid/widget/EditText;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->b()I

    move-result v2

    const-string v3, "key_face_limit_pixel_v2"

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->etOnline:Landroid/widget/EditText;

    const-string v2, "viewBinding.etOnline"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->etBlur:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->a()I

    move-result v2

    const-string v3, "key_face_limit_blur"

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->etBlur:Landroid/widget/EditText;

    const-string v2, "viewBinding.etBlur"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->etBlurNight:Landroid/widget/EditText;

    .line 32
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->a()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v3

    double-to-int v1, v1

    const-string v2, "key_face_limit_blur_night"

    .line 33
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->etBlurNight:Landroid/widget/EditText;

    const-string v1, "viewBinding.etBlurNight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 39
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->cbBlur:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    const-string v2, "key_face_enable_limit_blur"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 40
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->cbBlur:Landroid/widget/CheckBox;

    const-string v1, "viewBinding.cbBlur"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$init$9;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$init$9;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V

    .line 41
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->checkBox:Landroid/widget/CheckBox;

    const-string v1, "key_face_local_debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->checkBox:Landroid/widget/CheckBox;

    const-string v1, "viewBinding.checkBox"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$init$10;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$init$10;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V

    .line 43
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->uploadImage:Landroid/widget/TextView;

    const-string v1, "viewBinding.uploadImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 44
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->uploadImage:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/s0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/s0;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb03:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    const-string v2, "viewBinding.aiCamera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->b:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v2, "viewBinding.uvcCamera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l0()V

    .line 6
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->c:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->P()V

    :goto_2
    return-void
.end method
