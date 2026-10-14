.class public final Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final avatar:Landroid/widget/ImageView;

.field public final cameraLayout:Landroid/widget/FrameLayout;

.field public final cameraView:Landroid/view/TextureView;

.field public final exit:Landroid/widget/TextView;

.field public final imageErrorLayout:Landroid/widget/LinearLayout;

.field public final name:Landroid/widget/TextView;

.field public final ok:Landroid/widget/TextView;

.field public final previewImg:Landroid/widget/ImageView;

.field public final retry:Landroid/widget/TextView;

.field public final rlLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final title:Landroid/widget/TextView;

.field public final tvDelay:Landroid/widget/TextView;

.field public final tvDelayNum:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/TextureView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->avatar:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->cameraLayout:Landroid/widget/FrameLayout;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->cameraView:Landroid/view/TextureView;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->exit:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->imageErrorLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->name:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->ok:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->retry:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->rlLayout:Landroid/widget/LinearLayout;

    .line 13
    iput-object p12, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->title:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->tvDelay:Landroid/widget/TextView;

    .line 15
    iput-object p14, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->tvDelayNum:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/sundial/library/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$id;->cameraLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_b

    .line 3
    sget v1, Lcn/mucang/sundial/library/R$id;->camera_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/TextureView;

    if-eqz v6, :cond_a

    .line 4
    sget v1, Lcn/mucang/sundial/library/R$id;->exit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_9

    .line 5
    sget v1, Lcn/mucang/sundial/library/R$id;->image_error_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_8

    .line 6
    sget v1, Lcn/mucang/sundial/library/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 7
    sget v1, Lcn/mucang/sundial/library/R$id;->ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    .line 8
    sget v1, Lcn/mucang/sundial/library/R$id;->preview_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_5

    .line 9
    sget v1, Lcn/mucang/sundial/library/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_4

    .line 10
    sget v1, Lcn/mucang/sundial/library/R$id;->rlLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_3

    .line 11
    sget v1, Lcn/mucang/sundial/library/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_2

    .line 12
    sget v1, Lcn/mucang/sundial/library/R$id;->tvDelay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_1

    .line 13
    sget v1, Lcn/mucang/sundial/library/R$id;->tvDelayNum:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 14
    new-instance v1, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/TextureView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    :cond_0
    const-string v0, "tvDelayNum"

    goto :goto_0

    :cond_1
    const-string v0, "tvDelay"

    goto :goto_0

    :cond_2
    const-string v0, "title"

    goto :goto_0

    :cond_3
    const-string v0, "rlLayout"

    goto :goto_0

    :cond_4
    const-string v0, "retry"

    goto :goto_0

    :cond_5
    const-string v0, "previewImg"

    goto :goto_0

    :cond_6
    const-string v0, "ok"

    goto :goto_0

    :cond_7
    const-string v0, "name"

    goto :goto_0

    :cond_8
    const-string v0, "imageErrorLayout"

    goto :goto_0

    :cond_9
    const-string v0, "exit"

    goto :goto_0

    :cond_a
    const-string v0, "cameraView"

    goto :goto_0

    :cond_b
    const-string v0, "cameraLayout"

    goto :goto_0

    :cond_c
    const-string v0, "avatar"

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_face_check:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
