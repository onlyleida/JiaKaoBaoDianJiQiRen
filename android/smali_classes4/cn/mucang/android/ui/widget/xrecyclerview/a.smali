.class public Lcn/mucang/android/ui/widget/xrecyclerview/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/widget/xrecyclerview/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcn/mucang/android/ui/widget/xrecyclerview/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->c()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/widget/xrecyclerview/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->a:I

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/ui/widget/xrecyclerview/a;)Lcn/mucang/android/ui/widget/xrecyclerview/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->d:Lcn/mucang/android/ui/widget/xrecyclerview/a$b;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$layout;->ui__widget_xrecyclerview_loadmore_footer:I

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget v0, Lcn/mucang/android/framework/core/R$id;->x_recycler_view_footer_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b:Landroid/widget/TextView;

    .line 6
    sget v1, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_foot_release:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/ui/widget/xrecyclerview/a$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/ui/widget/xrecyclerview/a$a;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcn/mucang/android/framework/core/R$id;->load_more_foot_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->c:Landroid/widget/ProgressBar;

    return-void
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->a:I

    return v0
.end method

.method public setOnReloadListener(Lcn/mucang/android/ui/widget/xrecyclerview/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->d:Lcn/mucang/android/ui/widget/xrecyclerview/a$b;

    return-void
.end method

.method public setState(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_load_failed:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_no_more:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_load_complete:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_loading:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
