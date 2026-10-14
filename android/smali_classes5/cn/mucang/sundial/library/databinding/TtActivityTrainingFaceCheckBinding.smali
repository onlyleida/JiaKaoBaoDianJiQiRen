.class public final Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final avatar:Landroid/widget/ImageView;

.field public final cameraLayout:Landroid/widget/FrameLayout;

.field public final cameraView:Landroid/view/TextureView;

.field public final imageCompleteLayout:Landroid/widget/LinearLayout;

.field public final ok:Landroid/widget/TextView;

.field public final previewImg:Landroid/widget/ImageView;

.field public final retry:Landroid/widget/TextView;

.field public final rlLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvDelay:Landroid/widget/TextView;

.field public final tvDelayNum:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/TextureView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->avatar:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->cameraLayout:Landroid/widget/FrameLayout;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->cameraView:Landroid/view/TextureView;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->imageCompleteLayout:Landroid/widget/LinearLayout;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->ok:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->retry:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->rlLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object p10, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->tvDelay:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->tvDelayNum:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;
    .locals 13

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->avatar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$id;->cameraLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_8

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->camera_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/TextureView;

    if-eqz v5, :cond_7

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->image_complete_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    .line 5
    sget v0, Lcn/mucang/sundial/library/R$id;->ok:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->preview_img:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 7
    sget v0, Lcn/mucang/sundial/library/R$id;->retry:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 8
    sget v0, Lcn/mucang/sundial/library/R$id;->rlLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_2

    .line 9
    sget v0, Lcn/mucang/sundial/library/R$id;->tvDelay:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 10
    sget v0, Lcn/mucang/sundial/library/R$id;->tvDelayNum:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 11
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/TextureView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "tvDelayNum"

    goto :goto_0

    :cond_1
    const-string p0, "tvDelay"

    goto :goto_0

    :cond_2
    const-string p0, "rlLayout"

    goto :goto_0

    :cond_3
    const-string p0, "retry"

    goto :goto_0

    :cond_4
    const-string p0, "previewImg"

    goto :goto_0

    :cond_5
    const-string p0, "ok"

    goto :goto_0

    :cond_6
    const-string p0, "imageCompleteLayout"

    goto :goto_0

    :cond_7
    const-string p0, "cameraView"

    goto :goto_0

    :cond_8
    const-string p0, "cameraLayout"

    goto :goto_0

    :cond_9
    const-string p0, "avatar"

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_training_face_check:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityTrainingFaceCheckBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
