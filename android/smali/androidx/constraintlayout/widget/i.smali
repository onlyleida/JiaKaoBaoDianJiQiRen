.class public abstract Landroidx/constraintlayout/widget/i;
.super Landroidx/constraintlayout/widget/a;
.source "SourceFile"


# instance fields
.field private j:Z

.field private k:Z


# virtual methods
.method protected j(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/a;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method protected n(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/a;->n(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 6
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/i;->j:Z

    goto :goto_1

    .line 7
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v2, v3, :cond_1

    .line 8
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/i;->k:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Landroidx/constraintlayout/widget/a;->onAttachedToWindow()V

    .line 2
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/i;->k:Z

    if-eqz v1, :cond_4

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_4

    .line 5
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 8
    :goto_1
    iget v7, p0, Landroidx/constraintlayout/widget/a;->b:I

    if-ge v6, v7, :cond_4

    .line 9
    iget-object v7, p0, Landroidx/constraintlayout/widget/a;->a:[I

    aget v7, v7, v6

    .line 10
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 11
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/i;->j:Z

    if-eqz v8, :cond_2

    .line 12
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_2
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/i;->k:Z

    if-eqz v8, :cond_3

    cmpl-float v8, v5, v4

    if-lez v8, :cond_3

    if-lt v0, v3, :cond_3

    .line 14
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    add-float/2addr v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationZ(F)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/a;->h()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/a;->h()V

    return-void
.end method

.method public u(Landroidx/constraintlayout/core/widgets/i;II)V
    .locals 0

    return-void
.end method
