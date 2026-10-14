.class public final Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final appQrCode:Landroid/widget/ImageView;

.field public final appQrCodeTip:Landroid/widget/TextView;

.field public final back:Landroid/widget/TextView;

.field public final idCardNumber:Landroid/widget/EditText;

.field public final inertIcCardTip:Landroid/widget/TextView;

.field public final invalidAppQrCode:Landroid/widget/TextView;

.field public final login:Landroid/widget/TextView;

.field public final mountain:Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

.field public final qrCodeLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->appQrCode:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->appQrCodeTip:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->back:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->idCardNumber:Landroid/widget/EditText;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->inertIcCardTip:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->login:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->mountain:Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

    .line 11
    iput-object p10, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->qrCodeLayout:Landroid/widget/LinearLayout;

    .line 12
    iput-object p11, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;
    .locals 13

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->app_qr_code:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$id;->app_qr_code_tip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->id_card_number:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_6

    .line 5
    sget v0, Lcn/mucang/sundial/library/R$id;->inert_ic_card_tip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->invalid_app_qr_code:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 7
    sget v0, Lcn/mucang/sundial/library/R$id;->login:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 8
    sget v0, Lcn/mucang/sundial/library/R$id;->mountain:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {v0}, Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

    move-result-object v10

    .line 10
    sget v0, Lcn/mucang/sundial/library/R$id;->qr_code_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_1

    .line 11
    sget v0, Lcn/mucang/sundial/library/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 12
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "title"

    goto :goto_0

    :cond_1
    const-string p0, "qrCodeLayout"

    goto :goto_0

    :cond_2
    const-string p0, "mountain"

    goto :goto_0

    :cond_3
    const-string p0, "login"

    goto :goto_0

    :cond_4
    const-string p0, "invalidAppQrCode"

    goto :goto_0

    :cond_5
    const-string p0, "inertIcCardTip"

    goto :goto_0

    :cond_6
    const-string p0, "idCardNumber"

    goto :goto_0

    :cond_7
    const-string p0, "back"

    goto :goto_0

    :cond_8
    const-string p0, "appQrCodeTip"

    goto :goto_0

    :cond_9
    const-string p0, "appQrCode"

    .line 13
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
