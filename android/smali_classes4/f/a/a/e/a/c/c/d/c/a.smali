.class public Lf/a/a/e/a/c/c/d/c/a;
.super Lf/a/a/e/a/c/c/d/b;
.source "SourceFile"


# direct methods
.method private d(ZLandroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lf/a/a/e/a/c/a;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lf/a/a/e/a/c/a;

    invoke-virtual {v0, p1}, Lf/a/a/e/a/c/a;->I(Z)V

    .line 3
    :cond_0
    instance-of v0, p2, Lf/a/a/e/a/c/c/c/a;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p2

    check-cast v0, Lf/a/a/e/a/c/c/c/a;

    invoke-interface {v0, p2, p1}, Lf/a/a/e/a/c/c/c/a;->a(Landroidx/fragment/app/Fragment;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lf/a/a/e/a/c/c/b;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object v1

    iput-object v1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lf/a/a/e/a/c/c/d/c/a;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 6
    :cond_1
    iget-boolean p2, p0, Lf/a/a/e/a/c/c/b;->i:Z

    if-eqz p2, :cond_3

    if-eqz v1, :cond_2

    .line 7
    iget-object p2, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/u;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/u;->v(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/u;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    .line 10
    :goto_0
    invoke-direct {p0, v2, v0}, Lf/a/a/e/a/c/c/d/c/a;->d(ZLandroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected c(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lf/a/a/e/a/c/c/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/e/a/c/c/a;

    invoke-virtual {v1}, Lf/a/a/e/a/c/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/e/a/c/c/b;->g:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-static {v0, v1, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p3}, Lf/a/a/e/a/c/c/d/c/a;->d(ZLandroidx/fragment/app/Fragment;)V

    .line 3
    iget-boolean p1, p0, Lf/a/a/e/a/c/c/b;->i:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    .line 6
    :cond_0
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/u;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/c/c/d/c/a;->b(Landroid/view/ViewGroup;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
