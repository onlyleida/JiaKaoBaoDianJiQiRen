.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final aiCamera:Lorg/webrtc/SurfaceViewRenderer;

.field public final borderView:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;

.field public final btnFaceCheck:Landroid/widget/TextView;

.field public final camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

.field public final cameraContainer:Landroid/widget/FrameLayout;

.field public final circleIv:Landroid/widget/ImageView;

.field public final faceTipTv:Landroid/widget/TextView;

.field public final mask:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scanCard:Landroidx/cardview/widget/CardView;

.field public final scanView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/webrtc/SurfaceViewRenderer;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;Landroid/widget/TextView;Lcom/serenegiant/usb/widget/UVCCameraTextureView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->borderView:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->btnFaceCheck:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->cameraContainer:Landroid/widget/FrameLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->circleIv:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->faceTipTv:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->mask:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanCard:Landroidx/cardview/widget/CardView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;
    .locals 14

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->aiCamera:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->borderView:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->btnFaceCheck:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->camera:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cameraContainer:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->circleIv:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->faceTipTv:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->mask:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->scanCard:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/cardview/widget/CardView;

    if-eqz v12, :cond_0

    .line 19
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->scanView:I

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 21
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/webrtc/SurfaceViewRenderer;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;Landroid/widget/TextView;Lcom/serenegiant/usb/widget/UVCCameraTextureView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/view/View;)V

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->layout_login_face:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
