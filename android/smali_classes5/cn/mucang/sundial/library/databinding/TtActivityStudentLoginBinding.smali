.class public final Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final appQrCode:Landroid/widget/ImageView;

.field public final appQrCodeTip:Landroid/widget/TextView;

.field public final back:Landroid/widget/LinearLayout;

.field public final clearRecord:Landroid/widget/TextView;

.field public final gzStudent:Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

.field public final idCardNumber:Landroid/widget/EditText;

.field public final inertIcCardTip:Landroid/widget/TextView;

.field public final invalidAppQrCode:Landroid/widget/TextView;

.field public final login:Landroid/widget/TextView;

.field public final mountain:Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

.field public final qrCodeLayout:Landroid/widget/LinearLayout;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final rlLayout:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->appQrCode:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->appQrCodeTip:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->back:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->clearRecord:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->gzStudent:Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->idCardNumber:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->inertIcCardTip:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->login:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->mountain:Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

    .line 13
    iput-object p12, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->qrCodeLayout:Landroid/widget/LinearLayout;

    .line 14
    iput-object p13, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iput-object p14, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->rlLayout:Landroid/widget/RelativeLayout;

    .line 16
    iput-object p15, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/sundial/library/R$id;->app_qr_code:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_d

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$id;->app_qr_code_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 3
    sget v1, Lcn/mucang/sundial/library/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_b

    .line 4
    sget v1, Lcn/mucang/sundial/library/R$id;->clearRecord:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_a

    .line 5
    sget v1, Lcn/mucang/sundial/library/R$id;->gzStudent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6
    invoke-static {v1}, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    move-result-object v8

    .line 7
    sget v1, Lcn/mucang/sundial/library/R$id;->id_card_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_8

    .line 8
    sget v1, Lcn/mucang/sundial/library/R$id;->inert_ic_card_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_7

    .line 9
    sget v1, Lcn/mucang/sundial/library/R$id;->invalid_app_qr_code:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_6

    .line 10
    sget v1, Lcn/mucang/sundial/library/R$id;->login:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_5

    .line 11
    sget v1, Lcn/mucang/sundial/library/R$id;->mountain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-static {v1}, Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;

    move-result-object v13

    .line 13
    sget v1, Lcn/mucang/sundial/library/R$id;->qr_code_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_3

    .line 14
    sget v1, Lcn/mucang/sundial/library/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_2

    .line 15
    sget v1, Lcn/mucang/sundial/library/R$id;->rlLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_1

    .line 16
    sget v1, Lcn/mucang/sundial/library/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 17
    new-instance v1, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtIncludeBottomMountainBinding;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object v1

    :cond_0
    const-string v0, "title"

    goto :goto_0

    :cond_1
    const-string v0, "rlLayout"

    goto :goto_0

    :cond_2
    const-string v0, "recyclerView"

    goto :goto_0

    :cond_3
    const-string v0, "qrCodeLayout"

    goto :goto_0

    :cond_4
    const-string v0, "mountain"

    goto :goto_0

    :cond_5
    const-string v0, "login"

    goto :goto_0

    :cond_6
    const-string v0, "invalidAppQrCode"

    goto :goto_0

    :cond_7
    const-string v0, "inertIcCardTip"

    goto :goto_0

    :cond_8
    const-string v0, "idCardNumber"

    goto :goto_0

    :cond_9
    const-string v0, "gzStudent"

    goto :goto_0

    :cond_a
    const-string v0, "clearRecord"

    goto :goto_0

    :cond_b
    const-string v0, "back"

    goto :goto_0

    :cond_c
    const-string v0, "appQrCodeTip"

    goto :goto_0

    :cond_d
    const-string v0, "appQrCode"

    .line 18
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_student_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
