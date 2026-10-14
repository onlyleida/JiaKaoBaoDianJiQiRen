.class public Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private color:I

.field private mPaint:Landroid/graphics/Paint;

.field private space:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    iput p1, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    .line 5
    iput p2, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->color:I

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->initPaint()V

    return-void
.end method

.method private getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    return p1
.end method

.method private initPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public drawHorizontalDivider(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    add-int/2addr v7, v8

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 7
    iget v9, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    add-int/2addr v9, v8

    int-to-float v6, v6

    int-to-float v12, v8

    int-to-float v7, v7

    int-to-float v14, v9

    .line 8
    iget-object v15, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    sub-int/2addr v4, v5

    add-int/2addr v5, v4

    int-to-float v12, v4

    int-to-float v14, v5

    .line 11
    iget-object v15, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawVerticalDivider(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    sub-int/2addr v6, v7

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    sub-int/2addr v8, v9

    add-int/2addr v9, v8

    int-to-float v11, v8

    int-to-float v6, v6

    int-to-float v13, v9

    int-to-float v14, v7

    .line 7
    iget-object v15, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v12, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v8

    .line 9
    rem-int v9, v3, v8

    add-int/lit8 v8, v8, -0x1

    if-eq v9, v8, :cond_0

    add-int/lit8 v8, v2, -0x1

    if-ne v3, v8, :cond_1

    .line 10
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 11
    iget v5, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    add-int v8, v4, v5

    add-int/2addr v7, v5

    int-to-float v13, v4

    int-to-float v15, v8

    int-to-float v4, v7

    .line 12
    iget-object v5, v0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v14, v6

    move/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    .line 2
    iget v0, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    div-int/lit8 v0, v0, 0x2

    .line 3
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 4
    rem-int/2addr p2, p4

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 5
    iget p2, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_1

    .line 6
    iget p2, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    invoke-virtual {p1, v0, p2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    iget p2, p0, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->space:I

    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->drawHorizontalDivider(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/widget/SundialRecycleGridDivider;->drawVerticalDivider(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
