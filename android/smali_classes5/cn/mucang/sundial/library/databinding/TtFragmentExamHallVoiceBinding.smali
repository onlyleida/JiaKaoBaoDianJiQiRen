.class public final Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvHuima:Landroid/widget/TextView;

.field public final tvYongxin:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvHuima:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvYongxin:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;
    .locals 4

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$id;->tv_huima:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3
    sget v2, Lcn/mucang/sundial/library/R$id;->tv_yongxin:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0, v0, v1, v2}, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    :cond_0
    const-string p0, "tvYongxin"

    goto :goto_0

    :cond_1
    const-string p0, "tvHuima"

    goto :goto_0

    :cond_2
    const-string p0, "recyclerView"

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__fragment_exam_hall_voice:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
