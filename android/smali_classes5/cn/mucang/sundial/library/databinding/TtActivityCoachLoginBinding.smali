.class public final Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final cardLayout:Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

.field public final closeIv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scanLayout:Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

.field public final singleTv:Landroid/widget/TextView;

.field public final skipped:Landroid/widget/TextView;

.field public final tabBg:Landroid/view/View;

.field public final tabLl:Landroid/widget/LinearLayout;

.field public final titleIv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->cardLayout:Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->closeIv:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->scanLayout:Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->singleTv:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->skipped:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->tabBg:Landroid/view/View;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->tabLl:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->titleIv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;
    .locals 11

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->cardLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    move-result-object v3

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->closeIv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->scanLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    move-result-object v5

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->singleTv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 7
    sget v0, Lcn/mucang/sundial/library/R$id;->skipped:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 8
    sget v0, Lcn/mucang/sundial/library/R$id;->tabBg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 9
    sget v0, Lcn/mucang/sundial/library/R$id;->tabLl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    .line 10
    sget v0, Lcn/mucang/sundial/library/R$id;->titleIv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 11
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;Landroid/widget/TextView;Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "titleIv"

    goto :goto_0

    :cond_1
    const-string p0, "tabLl"

    goto :goto_0

    :cond_2
    const-string p0, "tabBg"

    goto :goto_0

    :cond_3
    const-string p0, "skipped"

    goto :goto_0

    :cond_4
    const-string p0, "singleTv"

    goto :goto_0

    :cond_5
    const-string p0, "scanLayout"

    goto :goto_0

    :cond_6
    const-string p0, "closeIv"

    goto :goto_0

    :cond_7
    const-string p0, "cardLayout"

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_coach_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
