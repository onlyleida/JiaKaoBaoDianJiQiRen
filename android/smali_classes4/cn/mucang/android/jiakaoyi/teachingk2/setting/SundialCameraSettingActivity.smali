.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;",
        ">;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "()V",
        "previewId",
        "",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "onPreviewFrame",
        "data",
        "",
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
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$a;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->b:I

    return p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->p(Z)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->SundialCameraFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb03:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;I)V

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method private final p(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

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

    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->b:I

    invoke-virtual {p1, v0, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->k(Lorg/webrtc/SurfaceViewRenderer;)V

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->hashCode()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->b:I

    .line 8
    sget-object p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p1, v0, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->uvcCamera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 12
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "SundialCameraSettingActivity"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/v0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/v0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8ba1\u65f6\u62cd\u7167\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->SundialCameraFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb03:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb04:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->radioGroup1:Landroid/widget/RadioGroup;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/u0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/u0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->e()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 9
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->p(Z)V

    return-void
.end method

.method public onConnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onConnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->b:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySundialCameraSettingBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->m(Lorg/webrtc/SurfaceViewRenderer;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDetached(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDisconnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
