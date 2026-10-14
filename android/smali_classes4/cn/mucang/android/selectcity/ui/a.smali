.class public Lcn/mucang/android/selectcity/ui/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/selectcity/ui/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseIntArray;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcn/mucang/android/selectcity/ui/a;->b:I

    .line 4
    iput p1, p0, Lcn/mucang/android/selectcity/ui/a;->c:I

    return-void
.end method


# virtual methods
.method public isInEditMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p3, v1, :cond_6

    .line 4
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v2, Lcn/mucang/android/framework/select/city/R$string;->select_city__flow_layout_tag_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/selectcity/ui/a$a;

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 7
    iget v3, v2, Lcn/mucang/android/selectcity/ui/a$a;->a:I

    if-le v3, p4, :cond_1

    add-int/2addr p5, p1

    .line 8
    iget-object p1, p0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    move p4, v3

    const/4 v0, 0x0

    .line 9
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    .line 11
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_1
    iget v2, v2, Lcn/mucang/android/selectcity/ui/a$a;->b:I

    if-eqz v2, :cond_3

    .line 14
    iget v2, p0, Lcn/mucang/android/selectcity/ui/a;->c:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 16
    iget v4, p0, Lcn/mucang/android/selectcity/ui/a;->b:I

    sub-int v4, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 17
    iget v4, p0, Lcn/mucang/android/selectcity/ui/a;->b:I

    sub-int v4, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 18
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, p5

    goto :goto_2

    :cond_4
    move v3, p5

    .line 19
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 20
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    move v0, v2

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v8, v15, :cond_8

    .line 7
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 8
    invoke-virtual {v0, v15, v1, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 9
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 10
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 11
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move/from16 v18, v4

    .line 12
    instance-of v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    .line 13
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v4

    .line 14
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v7

    add-int v17, v17, v4

    move/from16 v4, v19

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v10, :cond_1

    .line 15
    iget v7, v0, Lcn/mucang/android/selectcity/ui/a;->c:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v16, v16, v7

    :cond_1
    move/from16 v7, v16

    .line 16
    iget v2, v0, Lcn/mucang/android/selectcity/ui/a;->b:I

    add-int v17, v17, v2

    .line 17
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_3

    if-le v7, v3, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v1, v17

    goto :goto_3

    .line 18
    :cond_3
    :goto_2
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_3
    add-int v2, v12, v7

    if-le v2, v3, :cond_5

    .line 19
    iget-object v2, v0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v14, v13}, Landroid/util/SparseIntArray;->put(II)V

    add-int/2addr v11, v13

    .line 20
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v10, :cond_4

    .line 21
    iget v2, v0, Lcn/mucang/android/selectcity/ui/a;->c:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v7, v2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move v12, v7

    const/4 v10, 0x0

    goto :goto_4

    .line 22
    :cond_5
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v12, v2

    .line 23
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_6

    .line 24
    iget v2, v0, Lcn/mucang/android/selectcity/ui/a;->b:I

    sub-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 25
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 26
    iget-object v4, v0, Lcn/mucang/android/selectcity/ui/a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v13, v1

    move v9, v2

    goto :goto_5

    :cond_6
    move v13, v1

    .line 27
    :goto_5
    sget v1, Lcn/mucang/android/framework/select/city/R$string;->select_city__flow_layout_tag_id:I

    invoke-virtual {v15, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/selectcity/ui/a$a;

    if-nez v2, :cond_7

    .line 28
    new-instance v2, Lcn/mucang/android/selectcity/ui/a$a;

    add-int/lit8 v4, v10, 0x1

    invoke-direct {v2, v14, v10}, Lcn/mucang/android/selectcity/ui/a$a;-><init>(II)V

    invoke-virtual {v15, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v10, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v10, 0x1

    .line 29
    iput v10, v2, Lcn/mucang/android/selectcity/ui/a$a;->b:I

    .line 30
    iput v14, v2, Lcn/mucang/android/selectcity/ui/a$a;->a:I

    move v10, v1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_8
    move/from16 v18, v4

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v5, v1, :cond_9

    goto :goto_7

    :cond_9
    move v3, v9

    :goto_7
    if-ne v6, v1, :cond_a

    move/from16 v1, p1

    move/from16 v4, v18

    goto :goto_8

    :cond_a
    move/from16 v1, p1

    move v4, v11

    .line 31
    :goto_8
    invoke-static {v3, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    move/from16 v2, p2

    invoke-static {v4, v2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColumnSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/selectcity/ui/a;->c:I

    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/selectcity/ui/a;->b:I

    return-void
.end method
