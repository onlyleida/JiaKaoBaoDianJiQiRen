.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final imgClose:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final title:Landroid/widget/TextView;

.field public final txtDiaotou:Landroidx/appcompat/widget/AppCompatTextView;

.field public final txtLeft:Landroidx/appcompat/widget/AppCompatTextView;

.field public final txtRight:Landroidx/appcompat/widget/AppCompatTextView;

.field public final txtStraight:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->imgClose:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->title:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->txtDiaotou:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->txtLeft:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->txtRight:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->txtStraight:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;
    .locals 10

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->img_close:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->title:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_diaotou:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_left:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_right:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->txt_straight:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->dialog_around_land_hint:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAroundLandHintBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
