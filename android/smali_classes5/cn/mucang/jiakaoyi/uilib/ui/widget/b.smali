.class public Lcn/mucang/jiakaoyi/uilib/ui/widget/b;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->d:I

    .line 3
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->b:I

    .line 5
    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->c:I

    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->b:I

    add-int/2addr v2, v3

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->c:I

    sub-int/2addr v1, v4

    .line 6
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 7
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->b:I

    sub-int/2addr v3, v4

    .line 5
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->c:I

    add-int/2addr v1, v5

    .line 7
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    iget p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->d:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 4
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->d:I

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;->f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method
