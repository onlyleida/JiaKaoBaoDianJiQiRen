.class public Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/widget/pulltorefresh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->b:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->a:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception"

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Exception"

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->b:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->T(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->a:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->b:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->T(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->a:Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;->b:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
