.class public final Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v0}, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    const-string v1, "recyclerView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__fragment_light_voice:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
