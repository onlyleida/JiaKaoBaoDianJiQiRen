.class public Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/widget/CommonViewPager;

.field private b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

.field private c:Lcn/mucang/android/ui/framework/widget/loop/a;

.field private d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/widget/loop/a;

    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/ui/framework/widget/loop/a;-><init>(Lcn/mucang/android/core/widget/CommonViewPager;Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->c:Lcn/mucang/android/ui/framework/widget/loop/a;

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->pager_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcn/mucang/android/framework/core/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/widget/CommonViewPager;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    .line 3
    instance-of v0, v0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;->LOOP:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;->BACK_LOOP:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->d:Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer$Mode;

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;->setSnap(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;->c(Landroidx/viewpager/widget/ViewPager;I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {p1, v0}, Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getLoopHelper()Lcn/mucang/android/ui/framework/widget/loop/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->c:Lcn/mucang/android/ui/framework/widget/loop/a;

    return-object v0
.end method

.method public getPageIndicator()Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b:Lcn/mucang/android/wuhan/widget/viewpagerindicator/CirclePageIndicator;

    return-object v0
.end method

.method public getPager()Lcn/mucang/android/core/widget/CommonViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->c()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->b()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a()V

    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->d(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setOffsetLimit(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopPagerContainer;->a:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
