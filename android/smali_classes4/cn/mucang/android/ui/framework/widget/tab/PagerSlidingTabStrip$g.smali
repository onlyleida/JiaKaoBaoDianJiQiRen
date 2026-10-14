.class public Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;Lcn/mucang/android/ui/framework/widget/tab/d;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p4}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;->a(ILandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Exception"

    .line 2
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2, p1, p4}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;->a(ILandroid/view/View;)V

    .line 4
    :cond_1
    invoke-interface {p3}, Lcn/mucang/android/ui/framework/widget/tab/d;->getCurrentItem()I

    move-result p0

    if-eq p0, p1, :cond_2

    .line 5
    invoke-interface {p3, p1}, Lcn/mucang/android/ui/framework/widget/tab/d;->setCurrentItem(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;ILcn/mucang/android/ui/framework/widget/tab/d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->c:Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->c:Landroid/view/View;

    .line 4
    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    const/16 p1, 0x11

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->c:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/ui/framework/widget/tab/b;

    invoke-direct {v0, p5, p2, p4, p3}, Lcn/mucang/android/ui/framework/widget/tab/b;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;Lcn/mucang/android/ui/framework/widget/tab/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->c:Landroid/view/View;

    return-object p1
.end method
