.class public final synthetic Lcn/mucang/android/ui/framework/widget/tab/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;

.field public final synthetic b:I

.field public final synthetic c:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;

.field public final synthetic d:Lcn/mucang/android/ui/framework/widget/tab/d;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;Lcn/mucang/android/ui/framework/widget/tab/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;

    iput p2, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->b:I

    iput-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->c:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;

    iput-object p4, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->d:Lcn/mucang/android/ui/framework/widget/tab/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->b:I

    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->c:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;

    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/b;->d:Lcn/mucang/android/ui/framework/widget/tab/d;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->b(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;Lcn/mucang/android/ui/framework/widget/tab/d;Landroid/view/View;)V

    return-void
.end method
