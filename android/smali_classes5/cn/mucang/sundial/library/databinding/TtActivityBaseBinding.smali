.class public final Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final carNum:Landroid/widget/TextView;

.field public final collapse:Landroid/widget/LinearLayout;

.field public final debugSpeed:Landroid/widget/TextView;

.field public final dummyTexture:Landroid/view/TextureView;

.field public final layoutContainer:Landroid/widget/LinearLayout;

.field public final leftTransBtn:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final selfCheck:Landroid/widget/TextView;

.field public final terminalImei:Landroid/widget/TextView;

.field public final version:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/TextureView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->carNum:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->collapse:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->debugSpeed:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->dummyTexture:Landroid/view/TextureView;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->layoutContainer:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->leftTransBtn:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->selfCheck:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->terminalImei:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->version:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;
    .locals 12

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->car_num:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$id;->collapse:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->debug_speed:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->dummy_texture:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/TextureView;

    if-eqz v6, :cond_5

    .line 5
    sget v0, Lcn/mucang/sundial/library/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->left_trans_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 7
    sget v0, Lcn/mucang/sundial/library/R$id;->self_check:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 8
    sget v0, Lcn/mucang/sundial/library/R$id;->terminal_imei:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 9
    sget v0, Lcn/mucang/sundial/library/R$id;->version:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 10
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/TextureView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "version"

    goto :goto_0

    :cond_1
    const-string p0, "terminalImei"

    goto :goto_0

    :cond_2
    const-string p0, "selfCheck"

    goto :goto_0

    :cond_3
    const-string p0, "leftTransBtn"

    goto :goto_0

    :cond_4
    const-string p0, "layoutContainer"

    goto :goto_0

    :cond_5
    const-string p0, "dummyTexture"

    goto :goto_0

    :cond_6
    const-string p0, "debugSpeed"

    goto :goto_0

    :cond_7
    const-string p0, "collapse"

    goto :goto_0

    :cond_8
    const-string p0, "carNum"

    .line 11
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_base:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityBaseBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
