.class public final Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final carDesc:Landroid/widget/TextView;

.field public final carTitle:Landroid/widget/TextView;

.field public final delete:Landroid/widget/TextView;

.field public final divider:Landroid/view/View;

.field public final emptyTv:Landroid/widget/TextView;

.field public final infoGroup:Landroidx/constraintlayout/widget/Group;

.field public final layoutCar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final modelCarDb:Landroid/widget/TextView;

.field public final pbCarData:Landroid/widget/ProgressBar;

.field public final previewTv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tipTv:Landroid/widget/TextView;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->carDesc:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->carTitle:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->delete:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->divider:Landroid/view/View;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->emptyTv:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->infoGroup:Landroidx/constraintlayout/widget/Group;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->layoutCar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->modelCarDb:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->pbCarData:Landroid/widget/ProgressBar;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->previewTv:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->tipTv:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->carDesc:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->carTitle:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->delete:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->divider:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->emptyTv:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->infoGroup:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/widget/Group;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->layoutCar:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->modelCarDb:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->pbCarData:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ProgressBar;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->previewTv:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->tipTv:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->titleLayout:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v16

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;)V

    return-object v1

    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->activity_car_data_manager:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarDataManagerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
