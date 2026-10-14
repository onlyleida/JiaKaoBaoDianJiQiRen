.class public Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;
.super Lcn/mucang/android/core/widget/CommonViewPager;
.source "SourceFile"


# instance fields
.field private c:Z

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/ui/framework/widget/loop/b;

.field private f:Z

.field private g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/widget/CommonViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d:Ljava/util/Set;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->f:Z

    .line 4
    new-instance p1, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;-><init>(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)V

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->c:Z

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d:Ljava/util/Set;

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
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/ui/framework/widget/loop/b;->b()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/ui/framework/widget/loop/b;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/ui/framework/widget/loop/b;->h(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/widget/loop/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/ui/framework/widget/loop/b;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->f:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/ui/framework/widget/loop/b;->f(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->setCurrentItem(IZ)V

    .line 6
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    return-void
.end method

.method public setBoundaryCaching(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->f:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/framework/widget/loop/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->e:Lcn/mucang/android/ui/framework/widget/loop/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/framework/widget/loop/b;->g(I)I

    move-result p1

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d:Ljava/util/Set;

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
