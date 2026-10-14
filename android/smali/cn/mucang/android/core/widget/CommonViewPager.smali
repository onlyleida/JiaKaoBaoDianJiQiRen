.class public Lcn/mucang/android/core/widget/CommonViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/widget/CommonViewPager;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/core/widget/CommonViewPager;->a:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/android/core/widget/CommonViewPager;->a:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 2
    sget-object v1, Lcn/mucang/android/core/widget/CommonViewPager;->b:Ljava/lang/String;

    const-string v2, "Exception in onInterceptTouchEvent"

    invoke-static {v1, v2, p1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/android/core/widget/CommonViewPager;->a:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2
    :catch_0
    sget-object p1, Lcn/mucang/android/core/widget/CommonViewPager;->b:Ljava/lang/String;

    const-string v1, "Exception in onTouchEvent"

    invoke-static {p1, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/widget/CommonViewPager;->a:Z

    return-void
.end method
