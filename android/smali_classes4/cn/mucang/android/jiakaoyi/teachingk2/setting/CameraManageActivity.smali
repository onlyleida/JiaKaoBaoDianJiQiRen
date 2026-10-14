.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;",
        ">;",
        "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0014J\u0008\u0010\r\u001a\u00020\u000cH\u0014J,\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u001c\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u001c\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u001b\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;",
        "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "previewId",
        "",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "onSurfaceChanged",
        "view",
        "Lcom/serenegiant/usb/widget/CameraViewInterface;",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "height",
        "onSurfaceCreated",
        "onSurfaceDestroy",
        "startPreview",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "showText",
        "stopPreview",
        "CameraItemBinder",
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
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$b;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->b:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/hardware/usb/UsbDevice;Landroid/view/Surface;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->s(Landroid/hardware/usb/UsbDevice;Landroid/view/Surface;Ljava/lang/String;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/view/View;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u6ca1\u6709\u8fde\u63a5\u7684\u6444\u50cf\u5934"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->previewTv:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    new-instance v1, Landroidx/appcompat/widget/d0;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getConnectedPortList()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "usbList.keys"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->item_select_usb:I

    invoke-direct {v3, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 v3, -0x2

    .line 8
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 9
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 10
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;

    invoke-direct {p1, v1, p0, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;-><init>(Landroidx/appcompat/widget/d0;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Ljava/util/List;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/g0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/g0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->J(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/widget/d0;->show()V

    return-void
.end method

.method private static final m(Landroidx/appcompat/widget/d0;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Ljava/util/List;Ljava/util/LinkedHashMap;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p4, "$pop"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$strList"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$usbList"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/d0;->dismiss()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->previewTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->previewTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbDevice;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->t(Landroid/hardware/usb/UsbDevice;)V

    .line 4
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {p3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object p3

    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p0, p3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->s(Landroid/hardware/usb/UsbDevice;Landroid/view/Surface;Ljava/lang/String;)V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->previewTv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Landroidx/appcompat/widget/d0;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Ljava/util/List;Ljava/util/LinkedHashMap;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->m(Landroidx/appcompat/widget/d0;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Ljava/util/List;Ljava/util/LinkedHashMap;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private final s(Landroid/hardware/usb/UsbDevice;Landroid/view/Surface;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/view/Surface;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->c:I

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jky/camera/UsbCameraThread;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->c:I

    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->startPreviewCamera(Ljava/lang/Object;I)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->previewTv:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final t(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jky/camera/UsbCameraThread;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->c:I

    invoke-virtual {p1, v0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->stopPreviewCamera(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6444\u50cf\u5934\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/f0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/f0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u6444\u50cf\u5934\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V

    .line 7
    const-class v2, Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->b:Lcom/drakeet/multitype/f;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->cameraView:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {v0, p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCameraManageBinding;->previewTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/h0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/h0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->tryOpenAllDevice()V

    .line 12
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$init$3;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$init$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->tryCloseNoUseCamera()V

    return-void
.end method

.method public onSurfaceChanged(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 2

    .line 1
    sget-object p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getConnectedPortList()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "usbList.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->d0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->s(Landroid/hardware/usb/UsbDevice;Landroid/view/Surface;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    return-void
.end method
