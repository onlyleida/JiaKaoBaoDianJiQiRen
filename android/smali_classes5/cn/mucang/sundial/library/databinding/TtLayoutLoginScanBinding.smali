.class public final Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final appIv:Landroid/widget/ImageView;

.field public final arrow1:Landroid/widget/ImageView;

.field public final arrow2:Landroid/widget/ImageView;

.field public final arrow3:Landroid/widget/ImageView;

.field public final loginIv:Landroid/widget/ImageView;

.field public final qrCodeErrorFl:Landroid/widget/FrameLayout;

.field public final qrCodeFl:Landroid/widget/FrameLayout;

.field public final qrCodeIv:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scanIv:Landroid/widget/ImageView;

.field public final schoolIv:Landroid/widget/ImageView;

.field public final tipTv:Landroid/widget/TextView;

.field public final title1:Landroid/widget/TextView;

.field public final title2:Landroid/widget/TextView;

.field public final title3:Landroid/widget/TextView;

.field public final title4:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->appIv:Landroid/widget/ImageView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->arrow1:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->arrow2:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->arrow3:Landroid/widget/ImageView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->loginIv:Landroid/widget/ImageView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeFl:Landroid/widget/FrameLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeIv:Landroid/widget/ImageView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->scanIv:Landroid/widget/ImageView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->schoolIv:Landroid/widget/ImageView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->tipTv:Landroid/widget/TextView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->title1:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->title2:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->title3:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->title4:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/sundial/library/R$id;->appIv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_e

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$id;->arrow1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_d

    .line 3
    sget v1, Lcn/mucang/sundial/library/R$id;->arrow2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_c

    .line 4
    sget v1, Lcn/mucang/sundial/library/R$id;->arrow3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_b

    .line 5
    sget v1, Lcn/mucang/sundial/library/R$id;->loginIv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_a

    .line 6
    sget v1, Lcn/mucang/sundial/library/R$id;->qrCodeErrorFl:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_9

    .line 7
    sget v1, Lcn/mucang/sundial/library/R$id;->qrCodeFl:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_8

    .line 8
    sget v1, Lcn/mucang/sundial/library/R$id;->qrCodeIv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_7

    .line 9
    sget v1, Lcn/mucang/sundial/library/R$id;->scanIv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_6

    .line 10
    sget v1, Lcn/mucang/sundial/library/R$id;->schoolIv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_5

    .line 11
    sget v1, Lcn/mucang/sundial/library/R$id;->tipTv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_4

    .line 12
    sget v1, Lcn/mucang/sundial/library/R$id;->title1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_3

    .line 13
    sget v1, Lcn/mucang/sundial/library/R$id;->title2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_2

    .line 14
    sget v1, Lcn/mucang/sundial/library/R$id;->title3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_1

    .line 15
    sget v1, Lcn/mucang/sundial/library/R$id;->title4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 16
    new-instance v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v18}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    :cond_0
    const-string v0, "title4"

    goto :goto_0

    :cond_1
    const-string v0, "title3"

    goto :goto_0

    :cond_2
    const-string v0, "title2"

    goto :goto_0

    :cond_3
    const-string v0, "title1"

    goto :goto_0

    :cond_4
    const-string v0, "tipTv"

    goto :goto_0

    :cond_5
    const-string v0, "schoolIv"

    goto :goto_0

    :cond_6
    const-string v0, "scanIv"

    goto :goto_0

    :cond_7
    const-string v0, "qrCodeIv"

    goto :goto_0

    :cond_8
    const-string v0, "qrCodeFl"

    goto :goto_0

    :cond_9
    const-string v0, "qrCodeErrorFl"

    goto :goto_0

    :cond_a
    const-string v0, "loginIv"

    goto :goto_0

    :cond_b
    const-string v0, "arrow3"

    goto :goto_0

    :cond_c
    const-string v0, "arrow2"

    goto :goto_0

    :cond_d
    const-string v0, "arrow1"

    goto :goto_0

    :cond_e
    const-string v0, "appIv"

    .line 17
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__layout_login_scan:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
