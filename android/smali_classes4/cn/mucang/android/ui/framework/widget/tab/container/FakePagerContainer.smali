.class public Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcn/mucang/android/ui/framework/widget/tab/d<",
        "Lcn/mucang/android/ui/framework/widget/tab/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lf/a/a/e/a/c/c/d/c/a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/ui/framework/widget/tab/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->b:Ljava/util/Set;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->c:I

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->d:Landroidx/fragment/app/Fragment;

    .line 2
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->c:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    invoke-virtual {v1, p0}, Lf/a/a/e/a/c/c/b;->startUpdate(Landroid/view/ViewGroup;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    invoke-virtual {v1, p0, p1}, Lf/a/a/e/a/c/c/d/c/a;->b(Landroid/view/ViewGroup;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->d:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->c:I

    invoke-virtual {p1, p0, v1, v0}, Lf/a/a/e/a/c/c/d/c/a;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->c:I

    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p0, v0, v1}, Lf/a/a/e/a/c/c/b;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    invoke-virtual {p1, p0}, Lf/a/a/e/a/c/c/b;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/ui/framework/widget/tab/e/a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->b:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->getAdapter()Lf/a/a/e/a/c/c/d/c/a;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lf/a/a/e/a/c/c/d/c/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->c:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/e/a/c/c/d/c/a;

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a:Lf/a/a/e/a/c/c/d/c/a;

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->d:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->b(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->b:Ljava/util/Set;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/ui/framework/widget/tab/e/a;

    .line 5
    invoke-interface {v2, p1}, Lcn/mucang/android/ui/framework/widget/tab/e/a;->onPageSelected(I)V

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
