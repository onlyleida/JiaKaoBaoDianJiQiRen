.class Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v(Lcn/mucang/android/ui/framework/widget/tab/d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)Lcn/mucang/android/ui/framework/widget/tab/d;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/ui/framework/widget/tab/d;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->d(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;I)I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;F)F

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;II)V

    return-void
.end method
