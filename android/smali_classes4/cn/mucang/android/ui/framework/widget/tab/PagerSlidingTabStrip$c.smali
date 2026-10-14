.class Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)Lcn/mucang/android/ui/framework/widget/tab/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/ui/framework/widget/tab/d;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->d(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;I)I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;II)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method
