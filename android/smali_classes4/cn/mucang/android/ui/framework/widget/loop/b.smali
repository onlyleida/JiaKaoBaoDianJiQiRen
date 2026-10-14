.class public Lcn/mucang/android/ui/framework/widget/loop/b;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/widget/loop/b$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager/widget/PagerAdapter;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/ui/framework/widget/loop/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->b:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    return-void
.end method

.method private d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private e()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/b;->d()I

    move-result v0

    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/widget/loop/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public b()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/b;->d()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/b;->e()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v3, v2, Landroidx/fragment/app/p;

    if-nez v3, :cond_1

    instance-of v2, v2, Landroidx/fragment/app/s;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcn/mucang/android/ui/framework/widget/loop/b;->h(I)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p2

    .line 5
    :goto_1
    iget-boolean v3, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->c:Z

    if-eqz v3, :cond_3

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->b:Landroid/util/SparseArray;

    new-instance v1, Lcn/mucang/android/ui/framework/widget/loop/b$a;

    invoke-direct {v1, p1, v2, p3}, Lcn/mucang/android/ui/framework/widget/loop/b$a;-><init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p2, p1, v2, p3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->c:Z

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public g(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method h(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/widget/loop/b;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2
    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    instance-of v1, v0, Landroidx/fragment/app/p;

    if-nez v1, :cond_1

    instance-of v0, v0, Landroidx/fragment/app/s;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcn/mucang/android/ui/framework/widget/loop/b;->h(I)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    .line 3
    :goto_1
    iget-boolean v1, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->c:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/ui/framework/widget/loop/b$a;

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    iget-object p1, v1, Lcn/mucang/android/ui/framework/widget/loop/b$a;->a:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->b:Landroid/util/SparseArray;

    .line 2
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/b;->a:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method
