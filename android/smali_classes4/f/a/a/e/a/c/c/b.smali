.class public Lf/a/a/e/a/c/c/b;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroidx/fragment/app/FragmentManager;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/e/a/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroidx/fragment/app/u;

.field protected e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Landroidx/fragment/app/Fragment;

.field protected i:Z


# virtual methods
.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lf/a/a/e/a/c/c/b;->d:Landroidx/fragment/app/u;

    .line 4
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->b:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->f0()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WTF"

    const-string v1, "\u5d29\u6e83\u4e86? \u4ec0\u4e48\u9b3c..."

    .line 6
    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->b:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "states"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p2, :cond_0

    .line 7
    iput-object p2, p0, Lf/a/a/e/a/c/c/b;->f:Landroid/util/SparseArray;

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "f"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 12
    iget-object v2, p0, Lf/a/a/e/a/c/c/b;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/FragmentManager;->q0(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 14
    iget-object v2, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lf/a/a/e/a/c/c/b;->f:Landroid/util/SparseArray;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v2, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/a/a/e/a/c/c/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    :try_start_0
    iget-object v4, p0, Lf/a/a/e/a/c/c/b;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v2}, Landroidx/fragment/app/FragmentManager;->d1(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->h:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 4
    iget-object p1, p0, Lf/a/a/e/a/c/c/b;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 6
    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 7
    :cond_1
    iput-object p3, p0, Lf/a/a/e/a/c/c/b;->h:Landroidx/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
