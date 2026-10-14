.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final chargeDesc:Landroid/widget/TextView;

.field public final closeIv:Landroid/widget/ImageView;

.field public final imgQrCode:Landroid/widget/ImageView;

.field public final progress:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvError:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->chargeDesc:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->closeIv:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->imgQrCode:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->progress:Landroid/widget/ProgressBar;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->tvError:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;
    .locals 9

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->charge_desc:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->closeIv:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->img_qr_code:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->progress:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tv_error:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    new-instance v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->dialog_charge:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
