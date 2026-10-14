.class public final Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final eyeIv:Landroid/widget/ImageView;

.field public final idEt:Landroid/widget/EditText;

.field public final llAccount:Landroid/widget/LinearLayout;

.field public final loginTv:Landroid/widget/TextView;

.field public final numKeyboard:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvErrTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->llAccount:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->loginTv:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->numKeyboard:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;
    .locals 9

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->eyeIv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$id;->idEt:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->ll_account:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->loginTv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 5
    sget v0, Lcn/mucang/sundial/library/R$id;->num_keyboard:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    if-eqz v7, :cond_1

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->tv_err_tip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 7
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "tvErrTip"

    goto :goto_0

    :cond_1
    const-string p0, "numKeyboard"

    goto :goto_0

    :cond_2
    const-string p0, "loginTv"

    goto :goto_0

    :cond_3
    const-string p0, "llAccount"

    goto :goto_0

    :cond_4
    const-string p0, "idEt"

    goto :goto_0

    :cond_5
    const-string p0, "eyeIv"

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__layout_login_card:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
