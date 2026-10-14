.class public Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$b;,
        Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$a;,
        Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

.field private c:Landroid/view/View;

.field private d:I

.field private e:F

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->d:I

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->f:Z

    .line 4
    iput p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->g:I

    .line 5
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->h:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    .line 5
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method private b(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->g:I

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    invoke-interface {v1, p1, p2, p0}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, p2}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->a(Landroid/view/View;)V

    .line 4
    iput p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->g:I

    :cond_2
    return-object p2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->h:I

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;->getCount()I

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->f:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    if-ge p2, p1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p2, p1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    invoke-interface {p1, p2}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;->d(I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    invoke-interface {v2, p1}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;->c(I)I

    move-result v2

    .line 7
    iget v3, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->d:I

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->a(Landroid/view/View;)V

    .line 9
    iput v2, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->d:I

    .line 10
    iput v1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->e:F

    move p1, p2

    :goto_1
    add-int v0, p2, p3

    if-ge p1, v0, :cond_6

    .line 11
    iget-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    invoke-interface {v0, p1}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-int v0, p1, p2

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 14
    iget-object v3, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    .line 15
    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    cmpl-float v3, v2, v1

    if-lez v3, :cond_4

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iput v2, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->e:F

    goto :goto_2

    :cond_4
    cmpg-float v2, v2, v1

    if-gtz v2, :cond_5

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void

    .line 19
    :cond_7
    :goto_3
    iput-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    .line 20
    iput v1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->e:F

    move p1, p2

    :goto_4
    add-int v0, p2, p3

    if-ge p1, v0, :cond_9

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->c:Landroid/view/View;

    .line 3
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    iput-object v0, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->b:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$c;

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemClickListener(Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Lcn/mucang/android/wuhan/widget/PinnedHeaderListView$b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->f:Z

    return-void
.end method
