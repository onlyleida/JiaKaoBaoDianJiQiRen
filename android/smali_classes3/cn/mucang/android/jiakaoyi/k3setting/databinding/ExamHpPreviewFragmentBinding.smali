.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final btnMove:Landroid/widget/Button;

.field public final btnPreviewAll:Landroid/widget/Button;

.field public final btnZoom:Landroid/widget/Button;

.field public final closeIv:Landroid/widget/ImageView;

.field public final llExamInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field public final progress:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvDebugInfo:Landroid/widget/TextView;

.field public final tvLeftSideDis:Landroid/widget/TextView;

.field public final tvMile:Landroid/widget/TextView;

.field public final tvNormalScale:Landroid/widget/TextView;

.field public final tvPressStatus:Landroid/widget/TextView;

.field public final tvRightSideDis:Landroid/widget/TextView;

.field public final tvRoadStatus:Landroid/widget/TextView;

.field public final tvScalePlus:Landroid/widget/TextView;

.field public final tvScaleSubtract:Landroid/widget/TextView;

.field public final tvStep:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->btnMove:Landroid/widget/Button;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->btnPreviewAll:Landroid/widget/Button;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->btnZoom:Landroid/widget/Button;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->closeIv:Landroid/widget/ImageView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->llExamInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->progress:Landroid/widget/ProgressBar;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvDebugInfo:Landroid/widget/TextView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvLeftSideDis:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvMile:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvNormalScale:Landroid/widget/TextView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvPressStatus:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvRightSideDis:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvRoadStatus:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvScalePlus:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvScaleSubtract:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->tvStep:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->btnMove:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->btn_preview_all:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->btnZoom:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->closeIv:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->ll_exam_info:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->mapView:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->progress:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ProgressBar;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_debug_info:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_left_side_dis:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_mile:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_normal_scale:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_press_status:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_right_side_dis:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_road_status:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_scale_plus:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 31
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_scale_subtract:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 33
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_step:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 35
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->exam_hp_preview_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamHpPreviewFragmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
