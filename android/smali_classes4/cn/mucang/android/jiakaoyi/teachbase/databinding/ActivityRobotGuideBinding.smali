.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final call:Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotExtraViewBinding;

.field public final rcvImageTips:Landroidx/recyclerview/widget/RecyclerView;

.field public final rcvSignals:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final saveTv:Landroid/widget/TextView;

.field public final statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

.field public final tipIv:Landroid/widget/ImageView;

.field public final tipTv:Landroid/view/View;

.field public final titleBar:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotExtraViewBinding;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroid/widget/ImageView;Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->call:Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotExtraViewBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rcvImageTips:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rcvSignals:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->saveTv:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->tipIv:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->tipTv:Landroid/view/View;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->titleBar:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;
    .locals 12

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->call:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotExtraViewBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotExtraViewBinding;

    move-result-object v4

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rcvImageTips:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rcvSignals:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->saveTv:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->statusBar:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    move-result-object v8

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tipIv:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tipTv:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->titleBar:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;

    move-result-object v11

    .line 20
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/RobotExtraViewBinding;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroid/widget/ImageView;Landroid/view/View;Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;)V

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->activity_robot_guide:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
