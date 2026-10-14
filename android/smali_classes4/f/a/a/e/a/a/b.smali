.class public abstract Lf/a/a/e/a/a/b;
.super Lf/a/a/e/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcn/mucang/android/ui/framework/activity/title/a;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract g()Ljava/lang/String;
.end method

.method protected getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$layout;->ui_framework__activity_base_title:I

    return v0
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/a/a/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;->b(Landroid/content/Context;)Lcn/mucang/android/ui/framework/activity/title/CommonTitleView;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/e/a/a/b;->b:Lcn/mucang/android/ui/framework/activity/title/a;

    return-void
.end method

.method protected i(Lcn/mucang/android/ui/framework/activity/title/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcn/mucang/android/ui/framework/activity/title/a;",
            ">(TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/a/b;->b:Lcn/mucang/android/ui/framework/activity/title/a;

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/a/b;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lf/a/a/e/a/a/b;->a:Landroid/widget/FrameLayout;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/core/R$id;->ui_framework__base_title_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lf/a/a/e/a/a/b;->a:Landroid/widget/FrameLayout;

    .line 3
    sget p1, Lcn/mucang/android/framework/core/R$id;->ui_framework__title_shadow:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/a/a/b;->c:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/a/a/b;->h()V

    .line 5
    iget-object p1, p0, Lf/a/a/e/a/a/b;->b:Lcn/mucang/android/ui/framework/activity/title/a;

    invoke-virtual {p0, p1}, Lf/a/a/e/a/a/b;->i(Lcn/mucang/android/ui/framework/activity/title/a;)V

    .line 6
    invoke-virtual {p0}, Lf/a/a/e/a/a/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/a/a/e/a/a/b;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/a/b;->b:Lcn/mucang/android/ui/framework/activity/title/a;

    invoke-interface {v0, p1}, Lcn/mucang/android/ui/framework/activity/title/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
