.class public final Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final closeIv:Landroid/widget/ImageView;

.field public final correct:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;

.field public final desc:Landroid/widget/TextView;

.field public final rootRv:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final select:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;

.field public final space:Landroid/widget/Space;

.field public final title:Landroid/widget/TextView;

.field public final valueEt:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->closeIv:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->correct:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->desc:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->rootRv:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->select:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->space:Landroid/widget/Space;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->title:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->valueEt:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;
    .locals 12

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->closeIv:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->correct:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;

    move-result-object v5

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->desc:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 8
    move-object v7, p0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->select:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;

    move-result-object v8

    .line 12
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->space:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Space;

    if-eqz v9, :cond_0

    .line 14
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->title:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 16
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->valueEt:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    .line 18
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorSelectBinding;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/EditText;)V

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->collect_error_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
