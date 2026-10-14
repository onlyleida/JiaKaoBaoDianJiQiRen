.class public Lcn/mucang/android/core/widget/StateLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/widget/StateLayout$c;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Ljava/lang/CharSequence;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Ljava/lang/CharSequence;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:I

.field protected s:Lcn/mucang/android/core/widget/StateLayout$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$attr;->coreStateLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/core/widget/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    .line 9
    sget-object v0, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__loading_layout:I

    sget v0, Lcn/mucang/android/framework/core/R$layout;->core__state_layout_common:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 11
    sget v2, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__error_layout:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 12
    sget v3, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__net_error_layout:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 13
    sget v4, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__empty_layout:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 14
    sget v4, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__loading_text_list:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 16
    array-length v1, p1

    if-lez v1, :cond_0

    .line 17
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 18
    aget-object p1, p1, v1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->f:Ljava/lang/CharSequence;

    .line 19
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->f:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    .line 20
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__loading_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->f:Ljava/lang/CharSequence;

    .line 21
    :cond_1
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__loading_icon:I

    iget v1, p0, Lcn/mucang/android/core/widget/StateLayout;->h:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->h:I

    .line 22
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__error_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->i:Ljava/lang/CharSequence;

    .line 23
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__error_icon:I

    iget v1, p0, Lcn/mucang/android/core/widget/StateLayout;->k:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->k:I

    .line 24
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__net_error_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->l:Ljava/lang/CharSequence;

    .line 25
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__net_error_icon:I

    iget v1, p0, Lcn/mucang/android/core/widget/StateLayout;->n:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->n:I

    .line 26
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__empty_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->o:Ljava/lang/CharSequence;

    .line 27
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__empty_icon:I

    iget v1, p0, Lcn/mucang/android/core/widget/StateLayout;->q:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->q:I

    .line 28
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->core__state_layout_csl__state:I

    iget v1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/widget/StateLayout;->setState(I)V

    .line 30
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    sget p1, Lcn/mucang/android/framework/core/R$id;->loading_layout:I

    invoke-virtual {p0, p3, p1}, Lcn/mucang/android/core/widget/StateLayout;->a(II)Landroid/view/View;

    .line 32
    sget p1, Lcn/mucang/android/framework/core/R$id;->error_layout:I

    invoke-virtual {p0, v2, p1}, Lcn/mucang/android/core/widget/StateLayout;->a(II)Landroid/view/View;

    .line 33
    sget p1, Lcn/mucang/android/framework/core/R$id;->net_error_layout:I

    invoke-virtual {p0, v3, p1}, Lcn/mucang/android/core/widget/StateLayout;->a(II)Landroid/view/View;

    .line 34
    sget p1, Lcn/mucang/android/framework/core/R$id;->empty_layout:I

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->a(II)Landroid/view/View;

    return-void
.end method

.method private b(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcn/mucang/android/core/widget/StateLayout;->j(ZLandroid/view/View;)V

    .line 3
    iget p1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcn/mucang/android/core/widget/StateLayout;->j(ZLandroid/view/View;)V

    .line 4
    iget p1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcn/mucang/android/core/widget/StateLayout;->j(ZLandroid/view/View;)V

    .line 5
    iget p1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iget-object v2, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcn/mucang/android/core/widget/StateLayout;->j(ZLandroid/view/View;)V

    .line 6
    iget p1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->j(ZLandroid/view/View;)V

    return-void
.end method

.method private h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-eqz p1, :cond_3

    const v0, 0x1020006

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000d

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 3
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 8
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 11
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected a(II)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    .line 3
    sget p3, Lcn/mucang/android/framework/core/R$id;->loading_layout:I

    if-ne p2, p3, :cond_1

    .line 4
    iget-object p2, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    if-nez p2, :cond_0

    .line 5
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5df2\u7ecf\u6709LoadingLayout\u4e86"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    sget p3, Lcn/mucang/android/framework/core/R$id;->error_layout:I

    if-ne p2, p3, :cond_3

    .line 8
    iget-object p2, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    if-nez p2, :cond_2

    .line 9
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5df2\u7ecf\u6709ErrorLayout\u4e86"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    sget p3, Lcn/mucang/android/framework/core/R$id;->net_error_layout:I

    if-ne p2, p3, :cond_5

    .line 12
    iget-object p2, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    if-nez p2, :cond_4

    .line 13
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5df2\u7ecf\u6709NetErrorLayout\u4e86"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    sget p3, Lcn/mucang/android/framework/core/R$id;->empty_layout:I

    if-ne p2, p3, :cond_7

    .line 16
    iget-object p2, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    if-nez p2, :cond_6

    .line 17
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    goto :goto_0

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5df2\u7ecf\u6709EmptyLayout\u4e86"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    if-nez p2, :cond_8

    .line 20
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    .line 21
    :goto_0
    iget p1, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/widget/StateLayout;->setState(I)V

    return-void

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5df2\u7ecf\u6709ContentLayout\u4e86"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/StateLayout;->b(I)V

    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/StateLayout;->b(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->o:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->p:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcn/mucang/android/core/widget/StateLayout;->q:I

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/StateLayout;->b(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->j:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcn/mucang/android/core/widget/StateLayout;->k:I

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcn/mucang/android/core/widget/StateLayout$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/widget/StateLayout$a;-><init>(Lcn/mucang/android/core/widget/StateLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/StateLayout;->b(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->g:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcn/mucang/android/core/widget/StateLayout;->h:I

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/StateLayout;->b(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->m:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcn/mucang/android/core/widget/StateLayout;->n:I

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcn/mucang/android/core/widget/StateLayout$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/widget/StateLayout$b;-><init>(Lcn/mucang/android/core/widget/StateLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    return-object v0
.end method

.method public getErrorView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method public getLoadView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    return-object v0
.end method

.method public getNetErrorView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/StateLayout;->r:I

    return v0
.end method

.method protected i(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_2

    const v0, 0x1020014

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected j(ZLandroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->e:Landroid/view/View;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :cond_1
    return-void
.end method

.method public setEmptyIcon(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->q:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setEmptyIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->p:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/mucang/android/core/widget/StateLayout;->q:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->o:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->o:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->empty_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->d:Landroid/view/View;

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    :cond_1
    return-void
.end method

.method public setErrorIcon(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->k:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->j:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/mucang/android/core/widget/StateLayout;->k:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setErrorText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->i:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->i:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->error_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->b:Landroid/view/View;

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    :cond_1
    return-void
.end method

.method public setLoadView(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->loading_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :cond_1
    return-void
.end method

.method public setLoadingIcon(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->g:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->h:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setLoadingIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->g:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/mucang/android/core/widget/StateLayout;->h:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setLoadingText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->f:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->f:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNetErrorIcon(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lcn/mucang/android/core/widget/StateLayout;->n:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setNetErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->m:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/mucang/android/core/widget/StateLayout;->n:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0}, Lcn/mucang/android/core/widget/StateLayout;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setNetErrorText(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->l:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNetErrorText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->l:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/widget/StateLayout;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNetErrorView(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->net_error_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/widget/StateLayout;->c:Landroid/view/View;

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    :cond_1
    return-void
.end method

.method public setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout;->s:Lcn/mucang/android/core/widget/StateLayout$c;

    return-void
.end method

.method public setState(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_0
    return-void
.end method
