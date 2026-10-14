.class Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:F

.field final synthetic c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->a:F

    .line 3
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->b:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->d(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)I

    move-result v0

    .line 3
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v3}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/mucang/android/ui/framework/widget/loop/b;->h(I)I

    move-result v3

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget-object v4, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    .line 5
    invoke-static {v4}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/ui/framework/widget/loop/b;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-virtual {v0, v3, v1}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->setCurrentItem(IZ)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    invoke-interface {v3, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 10
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {p1, v2}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->c(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;Z)Z

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {p1, v1}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->c(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;Z)Z

    :goto_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/ui/framework/widget/loop/b;->getCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/framework/widget/loop/b;->h(I)I

    move-result v0

    cmpl-float v4, p2, v3

    if-nez v4, :cond_2

    .line 4
    iget v4, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->a:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    .line 5
    invoke-static {v4}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/ui/framework/widget/loop/b;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne p1, v4, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-virtual {p1, v0, v2}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->setCurrentItem(IZ)V

    :cond_2
    move p1, v0

    .line 7
    :cond_3
    iput p2, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->a:F

    .line 8
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/ui/framework/widget/loop/b;->c()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_4

    .line 10
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 11
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_4
    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    if-lez v0, :cond_5

    .line 12
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {p1}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 13
    invoke-interface {v0, v2, v3, v2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 15
    invoke-interface {v4, p1, v3, v2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_2

    :cond_6
    cmpl-float p1, p2, v3

    if-nez p1, :cond_7

    if-eqz p3, :cond_8

    .line 16
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {p1, v1}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->c(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;Z)Z

    :cond_8
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->a(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Lcn/mucang/android/ui/framework/widget/loop/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/framework/widget/loop/b;->h(I)I

    move-result p1

    .line 3
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->b:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 4
    iput v1, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->b:F

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager$a;->c:Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;->b(Lcn/mucang/android/ui/framework/widget/loop/LoopViewPager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 7
    invoke-interface {v1, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
