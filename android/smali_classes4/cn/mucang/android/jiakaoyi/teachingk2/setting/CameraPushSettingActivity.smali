.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0008\u0010\n\u001a\u00020\tH\u0014J\u0008\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;",
        "()V",
        "previewId",
        "",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "refreshPush",
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
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$a;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->b:I

    return p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->w()V

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->x(Z)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->C()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->A()V

    :goto_0
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushTimeEnable:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$3$1;

    invoke-direct {v3, p1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$3$1;-><init>(Landroid/view/View;ZLcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-static {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushSourceFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb01:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$4$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$4$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-static {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->qt01:I

    if-ne p2, p1, :cond_0

    const/16 p1, 0xf0

    goto :goto_0

    :cond_0
    const/16 p1, 0x140

    .line 2
    :goto_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushQuality:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$5$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$5$1;

    invoke-static {p0, p2, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method private final w()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->x()V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$refreshPush$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$refreshPush$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final x(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    const-string v1, "viewBinding.aiCamera"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v4, "viewBinding.uvcCamera"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 4
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->b:I

    invoke-virtual {p1, v0, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->k(Lorg/webrtc/SurfaceViewRenderer;)V

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->hashCode()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->b:I

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 11
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraPushSettingActivity"

    return-object v0
.end method

.method protected init()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/m0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/m0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u89c6\u9891\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->checkBox:Landroid/widget/ImageView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->L()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->checkBox:Landroid/widget/ImageView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/l0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/l0;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->cbShowTime:Landroid/widget/ImageView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushTimeEnable:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->cbShowTime:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/k0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/k0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->rb01:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 10
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushSourceFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb01:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb02:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/n0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/n0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushQuality:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const/16 v2, 0xf0

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->radioQt:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->qt01:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->radioQt:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->qt02:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->radioQt:Landroid/widget/RadioGroup;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/j0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/j0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->e()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 20
    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;

    invoke-direct {v7, p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity$init$6;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;ZLkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraPushSettingActivity;->b:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraPushSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    return-void
.end method
