.class public final Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final cameraContainer:Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;

.field public final cameraLayout:Landroid/widget/FrameLayout;

.field public final cameraView:Landroid/view/TextureView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->cameraContainer:Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->cameraLayout:Landroid/widget/FrameLayout;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->cameraView:Landroid/view/TextureView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;
    .locals 4

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->camera_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;

    if-eqz v0, :cond_2

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$id;->cameraLayout:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 3
    sget v2, Lcn/mucang/sundial/library/R$id;->camera_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v3, p0, v0, v1, v2}, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V

    return-object v3

    :cond_0
    const-string p0, "cameraView"

    goto :goto_0

    :cond_1
    const-string p0, "cameraLayout"

    goto :goto_0

    :cond_2
    const-string p0, "cameraContainer"

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt_activity_camera_test:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityCameraTestBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
