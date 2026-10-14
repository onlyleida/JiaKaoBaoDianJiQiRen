.class public abstract Lcn/mucang/android/core/config/n;
.super Landroidx/appcompat/app/d;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/config/t;


# static fields
.field protected static final MODE_DARK:I = 0x1

.field protected static final MODE_LIGHT:I


# instance fields
.field protected interceptor:Lcn/mucang/android/core/config/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/o;

    invoke-direct {v0, p0, p0}, Lcn/mucang/android/core/config/o;-><init>(Landroid/app/Activity;Lcn/mucang/android/core/config/t;)V

    iput-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    return-void
.end method

.method private adjustStatusBarColor(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->w()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0xff

    const/16 v0, 0x9a

    .line 3
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_1
    return p1
.end method

.method private setContentViewReal(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$color;->core__status_bar_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/config/n;->setStatusBarColor(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/config/n;->getStatusBarMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/config/n;->setStatusBarMode(I)V

    if-eqz p2, :cond_0

    .line 4
    invoke-super {p0, p2}, Landroidx/appcompat/app/d;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public fitsSystemWindow(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setFitsSystemWindow(Z)V

    return-void
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatusBarMode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$integer;->core__status_bar_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected isFitsSystemWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/o;->b(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/j;->b()Lcn/mucang/android/core/config/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/core/config/j;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/o;->c()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/j;->b()Lcn/mucang/android/core/config/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/core/config/j;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/o;->d()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/o;->e()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/o;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/o;->g()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/o;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/o;->i()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/n;->interceptor:Lcn/mucang/android/core/config/o;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/o;->j()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/config/n;->setContentViewReal(ILandroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/mucang/android/core/config/n;->setContentViewReal(ILandroid/view/View;)V

    return-void
.end method

.method protected setFitsSystemWindow(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/config/n;->adjustStatusBarColor(I)I

    move-result p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected setStatusBarMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/o0;->z(ZLandroid/app/Activity;)V

    return-void
.end method

.method public setSwipeBackEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/widget/b/a;->e()Lcn/mucang/android/core/widget/b/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/core/widget/b/a;->d(Landroid/app/Activity;)Lcom/github/anzewei/parallaxbacklayout/d/a;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/widget/b/a;->e()Lcn/mucang/android/core/widget/b/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/core/widget/b/a;->c(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
