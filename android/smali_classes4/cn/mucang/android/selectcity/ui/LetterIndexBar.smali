.class public Lcn/mucang/android/selectcity/ui/LetterIndexBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:[I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->c:[I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->d:I

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    const/16 p1, 0x32

    .line 6
    iput p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->f:I

    .line 7
    iput p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->g:I

    return-void
.end method

.method private a(F)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->c:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 2
    aget v3, v2, v1

    .line 3
    aget v4, v2, v0

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 5
    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3
    iget v1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->d:I

    .line 4
    iget-object v2, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->a:Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->a(F)I

    move-result p1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    if-eq v1, p1, :cond_2

    if-ltz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;->b(Ljava/lang/String;I)V

    .line 8
    :cond_0
    iput p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->d:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->d:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {v2}, Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;->a()V

    :cond_2
    :goto_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->g:I

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v0, v2

    const/16 v3, 0x78

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v3, v0, v2

    .line 7
    :goto_0
    iget v0, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->f:I

    int-to-float v0, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 9
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    const v6, -0xcccccd

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    iget v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->d:I

    if-ne v4, v5, :cond_2

    .line 13
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    const-string v7, "#3399ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    :cond_2
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    iget-object v7, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 15
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iget-object v8, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    iget-object v9, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9, v2, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 17
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 18
    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v7, v5

    add-int v5, v3, v6

    .line 19
    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v0, v5

    .line 20
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->c:[I

    int-to-float v8, v6

    sub-float v8, v0, v8

    float-to-int v8, v8

    aput v8, v5, v4

    .line 21
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 22
    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v0, v5

    .line 23
    iget-object v5, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public setLetterIdxData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->c:[I

    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->a:Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;

    return-void
.end method
