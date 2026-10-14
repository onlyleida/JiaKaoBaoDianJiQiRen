.class public abstract Lf/a/a/e/a/a/a;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# instance fields
.field protected fragment:Lf/a/a/e/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$layout;->ui_framework__activity_base:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/e/a/a/a;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/a/a;->fragment:Lf/a/a/e/a/c/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lf/a/a/e/a/c/b;->u(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/a/a;->fragment:Lf/a/a/e/a/c/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lf/a/a/e/a/c/b;->v(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected replaceFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lf/a/a/e/a/a/a;->replaceFragment(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method protected replaceFragment(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    :cond_1
    sget p2, Lcn/mucang/android/framework/core/R$id;->ui_framework__fragment_container:I

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/u;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/u;->g(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/u;->j()I

    return-void
.end method
