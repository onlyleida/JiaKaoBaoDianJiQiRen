.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final debugContainer:Landroid/widget/LinearLayout;

.field public final descTv:Landroid/widget/TextView;

.field public final errorTv:Landroid/widget/TextView;

.field public final mainTv:Landroid/widget/TextView;

.field public final obdWareDebugInfo:Landroid/widget/TextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final resultGroup:Landroidx/constraintlayout/widget/Group;

.field public final retryTv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tipTv:Landroid/widget/TextView;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final tvApkTime:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvVersion:Landroid/widget/TextView;

.field public final upgradeBar:Landroid/widget/ProgressBar;

.field public final upgradeDebugInfo:Landroid/widget/TextView;

.field public final upgradeTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->debugContainer:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->descTv:Landroid/widget/TextView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->errorTv:Landroid/widget/TextView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->mainTv:Landroid/widget/TextView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->obdWareDebugInfo:Landroid/widget/TextView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->resultGroup:Landroidx/constraintlayout/widget/Group;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->retryTv:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tipTv:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvApkTime:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->tvVersion:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeBar:Landroid/widget/ProgressBar;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeDebugInfo:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->debugContainer:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->descTv:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->errorTv:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->mainTv:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->obdWareDebugInfo:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->progressBar:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->recyclerView:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->resultGroup:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/constraintlayout/widget/Group;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->retryTv:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tipTv:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->titleLayout:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v15

    .line 24
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tvApkTime:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 26
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tvTime:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 28
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tvVersion:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 30
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->upgradeBar:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ProgressBar;

    if-eqz v19, :cond_0

    .line 32
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->upgradeDebugInfo:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 34
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->upgradeTv:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 36
    new-instance v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->activity_self_check:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
