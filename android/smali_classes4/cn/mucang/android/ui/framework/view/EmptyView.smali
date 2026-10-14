.class public Lcn/mucang/android/ui/framework/view/EmptyView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/view/EmptyView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;

.field private d:Lcn/mucang/android/ui/framework/view/EmptyView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/framework/view/EmptyView;)Lcn/mucang/android/ui/framework/view/EmptyView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->d:Lcn/mucang/android/ui/framework/view/EmptyView$b;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/view/EmptyView$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/ui/framework/view/EmptyView$a;-><init>(Lcn/mucang/android/ui/framework/view/EmptyView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$string;->ui_framework__default_empty_message:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->c:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__empty_view_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->a:Landroid/widget/TextView;

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__empty_view_image:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/framework/view/EmptyView;->c(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/view/EmptyView;->f()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/view/EmptyView;->e()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/view/EmptyView;->d()V

    return-void
.end method

.method public setEmptyImage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-gez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEmptyTextStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setOnRefreshListener(Lcn/mucang/android/ui/framework/view/EmptyView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/view/EmptyView;->d:Lcn/mucang/android/ui/framework/view/EmptyView$b;

    return-void
.end method
