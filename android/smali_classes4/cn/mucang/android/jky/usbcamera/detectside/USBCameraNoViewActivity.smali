.class public Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity$a;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jky/usbcamera/R$layout;->activity_usbcamera:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->detect_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;->a:Landroid/widget/TextView;

    .line 4
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->memory:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->detect_result:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->a()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->h()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->k()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->i()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
