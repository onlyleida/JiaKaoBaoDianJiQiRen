.class public abstract Lcn/mucang/android/core/config/q;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/config/t;


# instance fields
.field private a:Lcn/mucang/android/core/config/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/r;

    invoke-direct {v0, p0, p0}, Lcn/mucang/android/core/config/r;-><init>(Landroidx/fragment/app/Fragment;Lcn/mucang/android/core/config/t;)V

    iput-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    return-void
.end method


# virtual methods
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/r;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/r;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/core/config/r;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/r;->e()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/r;->f()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/r;->g()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/r;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/r;->i()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/r;->j()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {p2, p1}, Lcn/mucang/android/core/config/r;->k(Landroid/view/View;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/config/q;->a:Lcn/mucang/android/core/config/r;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/r;->l(Landroid/os/Bundle;)V

    return-void
.end method
