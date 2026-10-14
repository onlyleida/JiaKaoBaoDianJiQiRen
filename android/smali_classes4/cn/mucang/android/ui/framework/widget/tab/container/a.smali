.class public Lcn/mucang/android/ui/framework/widget/tab/container/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/ui/framework/widget/tab/d<",
        "Lcn/mucang/android/ui/framework/widget/tab/e/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/core/widget/CommonViewPager;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/ui/framework/widget/tab/e/b;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcn/mucang/android/ui/framework/widget/tab/e/b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/a;->b:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/container/a;->b:Ljava/util/Set;

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

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/a;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/a;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/a;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    return-object v0
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/container/a;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
