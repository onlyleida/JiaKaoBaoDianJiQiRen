.class Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->a:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->a:Z

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p1, 0x64

    int-to-long v0, v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->b(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)Lcn/mucang/android/ui/framework/widget/tab/animation/d;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/animation/d;->a(J)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

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
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;->a(I)V

    return-void
.end method
