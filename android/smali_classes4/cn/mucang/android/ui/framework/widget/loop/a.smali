.class public Lcn/mucang/android/ui/framework/widget/loop/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/widget/loop/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcn/mucang/android/ui/framework/widget/loop/a$b;

.field private c:Lcn/mucang/android/core/widget/CommonViewPager;

.field private d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

.field private e:Z

.field private f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/widget/CommonViewPager;Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/ui/framework/widget/loop/a;-><init>(Lcn/mucang/android/core/widget/CommonViewPager;Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;I)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/widget/CommonViewPager;Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 3
    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->a:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->e:Z

    .line 5
    new-instance v0, Lcn/mucang/android/ui/framework/widget/loop/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/ui/framework/widget/loop/a$a;-><init>(Lcn/mucang/android/ui/framework/widget/loop/a;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    .line 8
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->a:I

    .line 9
    new-instance p1, Lcn/mucang/android/ui/framework/widget/loop/a$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/ui/framework/widget/loop/a$b;-><init>(Lcn/mucang/android/ui/framework/widget/loop/a;)V

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->b:Lcn/mucang/android/ui/framework/widget/loop/a$b;

    .line 10
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/framework/widget/loop/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/a;->g()V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/ui/framework/widget/loop/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/a;->f()V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/ui/framework/widget/loop/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->e:Z

    return p0
.end method

.method static synthetic d(Lcn/mucang/android/ui/framework/widget/loop/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/a;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    sget-object v2, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;->LOOP:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->c:Lcn/mucang/android/core/widget/CommonViewPager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/a;->g()V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->e:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->b:Lcn/mucang/android/ui/framework/widget/loop/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->b:Lcn/mucang/android/ui/framework/widget/loop/a$b;

    iget v2, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->e:Z

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/a;->b:Lcn/mucang/android/ui/framework/widget/loop/a$b;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
