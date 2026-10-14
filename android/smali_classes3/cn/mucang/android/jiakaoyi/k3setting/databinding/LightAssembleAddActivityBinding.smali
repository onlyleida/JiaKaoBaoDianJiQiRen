.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final divider:Landroid/view/View;

.field public final nameEt:Landroid/widget/EditText;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final saveTv:Landroid/widget/TextView;

.field public final stateLayout:Lcn/mucang/android/core/widget/StateLayout;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/EditText;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcn/mucang/android/core/widget/StateLayout;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->divider:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->nameEt:Landroid/widget/EditText;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->saveTv:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;
    .locals 10

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->divider:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->nameEt:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->recyclerView:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->saveTv:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->stateLayout:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/mucang/android/core/widget/StateLayout;

    if-eqz v7, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->titleLayout:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v8

    .line 14
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->titleTv:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/EditText;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcn/mucang/android/core/widget/StateLayout;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;)V

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->light_assemble_add_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
