.class public final Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final leftBack:Landroid/widget/EditText;

.field public final leftBackWidth:Landroid/widget/EditText;

.field public final leftFront:Landroid/widget/EditText;

.field public final leftFrontWidth:Landroid/widget/EditText;

.field public final makeSure:Landroid/widget/TextView;

.field public final rightBack:Landroid/widget/EditText;

.field public final rightBackWidth:Landroid/widget/EditText;

.field public final rightFront:Landroid/widget/EditText;

.field public final rightFrontWidth:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->leftBack:Landroid/widget/EditText;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->leftBackWidth:Landroid/widget/EditText;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->leftFront:Landroid/widget/EditText;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->leftFrontWidth:Landroid/widget/EditText;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->makeSure:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->rightBack:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->rightBackWidth:Landroid/widget/EditText;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->rightFront:Landroid/widget/EditText;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->rightFrontWidth:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;
    .locals 13

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_back:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_back_width:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_front:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_front_width:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->make_sure:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_back:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_back_width:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_front:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_front_width:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    .line 19
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__offset_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/HpmapOffsetDialogBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
