.class public final Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final bigRb:Landroid/widget/RadioButton;

.field public final deleteIv:Landroid/widget/ImageView;

.field public final distanceTv:Landroid/widget/EditText;

.field public final equalRb:Landroid/widget/RadioButton;

.field public final name:Landroid/widget/TextView;

.field public final radioGroup:Landroid/widget/RadioGroup;

.field public final refresh:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final smallRb:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RadioButton;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/ImageView;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->bigRb:Landroid/widget/RadioButton;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->deleteIv:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->equalRb:Landroid/widget/RadioButton;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->name:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->radioGroup:Landroid/widget/RadioGroup;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->refresh:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->smallRb:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;
    .locals 12

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->bigRb:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->deleteIv:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->distanceTv:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->equalRb:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->name:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->radioGroup:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioGroup;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->refresh:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->smallRb:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RadioButton;

    if-eqz v11, :cond_0

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RadioButton;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/ImageView;Landroid/widget/RadioButton;)V

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->new_collect_item_distance:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
