.class public final Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final barrier:Landroidx/constraintlayout/widget/Barrier;

.field public final imageView1:Landroid/widget/ImageView;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivFold:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textView1:Landroid/widget/TextView;

.field public final textview2:Landroid/widget/TextView;

.field public final titleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvGoSet:Landroid/widget/TextView;

.field public final tvPrivacy:Landroid/widget/TextView;

.field public final tvProtectWayExpand:Landroid/widget/TextView;

.field public final tvProtectWayFold:Landroid/widget/TextView;

.field public final tvReason:Landroid/widget/TextView;

.field public final tvSafeInfoTitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvTitleReason:Landroid/widget/TextView;

.field public final view1:Landroid/view/View;

.field public final view2:Landroid/view/View;

.field public final view3:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->barrier:Landroidx/constraintlayout/widget/Barrier;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->imageView1:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->ivFold:Landroid/widget/ImageView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->textView1:Landroid/widget/TextView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->textview2:Landroid/widget/TextView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->titleBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvGoSet:Landroid/widget/TextView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvPrivacy:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayExpand:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvProtectWayFold:Landroid/widget/TextView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvReason:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvSafeInfoTitle:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->tvTitleReason:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->view1:Landroid/view/View;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->view2:Landroid/view/View;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->view3:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/framework/core/R$id;->barrier:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/framework/core/R$id;->imageView1:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/framework/core/R$id;->iv_back:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/framework/core/R$id;->iv_fold:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/framework/core/R$id;->textView1:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/framework/core/R$id;->textview2:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/framework/core/R$id;->title_bar:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_go_set:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_privacy:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_protect_way_expand:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_protect_way_fold:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_reason:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_safe_info_title:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_title:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/framework/core/R$id;->tv_title_reason:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 31
    sget v1, Lcn/mucang/android/framework/core/R$id;->view1:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 33
    sget v1, Lcn/mucang/android/framework/core/R$id;->view2:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 35
    sget v1, Lcn/mucang/android/framework/core/R$id;->view3:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 37
    new-instance v1, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v1

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$layout;->activity__permission_detail:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/core/databinding/ActivityPermissionDetailBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
