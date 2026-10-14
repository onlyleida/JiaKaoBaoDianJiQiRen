.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final bgView:Landroid/view/View;

.field public final cityName:Landroid/widget/TextView;

.field public final cityNameLayout:Landroid/widget/LinearLayout;

.field public final classDeviceLl:Landroid/widget/LinearLayout;

.field public final deviceIv:Landroid/widget/ImageView;

.field public final headLayout:Landroid/widget/LinearLayout;

.field public final modelLayout:Landroid/widget/LinearLayout;

.field public final modelNameTv:Landroid/widget/TextView;

.field public final nameLayout:Landroid/widget/LinearLayout;

.field public final nameSchoolTv:Landroid/widget/TextView;

.field public final numberLayout:Landroid/widget/LinearLayout;

.field public final numberTv:Landroid/widget/TextView;

.field public final okTv:Landroid/widget/TextView;

.field public final realCarLayout:Landroid/widget/LinearLayout;

.field public final realCarTv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

.field public final typeTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->bgView:Landroid/view/View;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->cityName:Landroid/widget/TextView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->cityNameLayout:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->classDeviceLl:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->deviceIv:Landroid/widget/ImageView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->headLayout:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->modelLayout:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->modelNameTv:Landroid/widget/TextView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameLayout:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameSchoolTv:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberLayout:Landroid/widget/LinearLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->okTv:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->realCarLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->realCarTv:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->typeTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->bgView:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cityName:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cityNameLayout:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->classDeviceLl:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->deviceIv:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->headLayout:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->modelLayout:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->modelNameTv:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->nameLayout:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->nameSchoolTv:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->numberLayout:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->numberTv:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->okTv:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->realCarLayout:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->realCarTv:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 31
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->title:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    move-result-object v19

    .line 34
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->typeTv:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 36
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v20}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;Landroid/widget/TextView;)V

    return-object v1

    .line 37
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->activity_car_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
