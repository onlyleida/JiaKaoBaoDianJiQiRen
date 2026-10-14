.class public Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;
.implements Lcn/mucang/android/ui/framework/activity/title/a;


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView$a;-><init>(Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$layout;->ui_framework__view_common_title:I

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t0;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__common_title_view_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__common_title_view_left_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->b:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__common_title_view_left_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__common_title_view_right_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->a()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
