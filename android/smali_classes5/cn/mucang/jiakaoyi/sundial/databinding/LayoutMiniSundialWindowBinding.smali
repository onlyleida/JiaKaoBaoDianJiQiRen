.class public final Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final dragView:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

.field public final llDetail:Landroid/widget/LinearLayout;

.field private final rootView:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

.field public final tvLogout:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->rootView:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    .line 3
    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->dragView:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    .line 4
    iput-object p3, p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->llDetail:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvLogout:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;
    .locals 6

    .line 1
    move-object v2, p0

    check-cast v2, Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    .line 2
    sget v0, Lcn/mucang/jiakaoyi/sundial/R$id;->llDetail:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 4
    sget v0, Lcn/mucang/jiakaoyi/sundial/R$id;->tvLogout:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 6
    sget v0, Lcn/mucang/jiakaoyi/sundial/R$id;->tvTime:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 8
    new-instance p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;-><init>(Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/jiakaoyi/sundial/R$layout;->layout_mini_sundial_window:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->bind(Landroid/view/View;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->rootView:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    return-object v0
.end method
