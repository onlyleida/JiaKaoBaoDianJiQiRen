.class public abstract Lcn/mucang/android/ui/widget/pulltorefresh/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/widget/pulltorefresh/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ImageView;

.field protected final d:Landroid/widget/ProgressBar;

.field private e:Z

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field protected final i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field protected final j:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:Z

.field private p:I

.field private q:I

.field private r:[Ljava/lang/String;

.field private s:[I

.field private t:[I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    .line 3
    iput-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->j:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    .line 5
    sget v1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptr_header_layout_id:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "not fond layout resource"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/e$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_2

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/core/R$layout;->ui__pull_to_refresh_header_vertical:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/core/R$layout;->ui__pull_to_refresh_header_horizontal:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    :goto_0
    sget v1, Lcn/mucang/android/framework/core/R$id;->fl_inner:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    .line 13
    sget v1, Lcn/mucang/android/framework/core/R$id;->pull_to_refresh_slogan:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->h:Landroid/widget/TextView;

    .line 14
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    sget v5, Lcn/mucang/android/framework/core/R$id;->pull_to_refresh_text:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    .line 15
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    sget v5, Lcn/mucang/android/framework/core/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    .line 16
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    sget v5, Lcn/mucang/android/framework/core/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    .line 17
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    sget v5, Lcn/mucang/android/framework/core/R$id;->pull_to_refresh_image:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    .line 18
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    sget v5, Lcn/mucang/android/framework/core/R$id;->pull_to_refresh_static_image:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c:Landroid/widget/ImageView;

    .line 19
    sget v2, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrShowSlogan:I

    invoke-virtual {p4, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 20
    sget v1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrSloganLabels:I

    invoke-virtual {p4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->p:I

    .line 21
    sget v1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrSloganWeights:I

    invoke-virtual {p4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->q:I

    if-eq v1, v3, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->s:[I

    if-eqz v1, :cond_3

    .line 23
    array-length v2, v1

    if-lez v2, :cond_3

    .line 24
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->t:[I

    :cond_3
    const/4 v1, 0x0

    .line 25
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->s:[I

    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 26
    aget v2, v2, v1

    .line 27
    iget v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->u:I

    add-int/2addr v5, v2

    iput v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->u:I

    .line 28
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->t:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_4
    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->p:I

    if-eq v1, v3, :cond_5

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->p:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->r:[Ljava/lang/String;

    .line 31
    :cond_5
    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->r:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->s:[I

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    array-length v2, v2

    array-length v1, v1

    if-ne v2, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    if-eqz v1, :cond_8

    .line 32
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 33
    :cond_7
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    .line 34
    :cond_8
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/e$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    if-eq v2, v4, :cond_a

    .line 36
    sget-object v2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v2, :cond_9

    const/16 p3, 0x50

    goto :goto_4

    :cond_9
    const/4 p3, 0x5

    :goto_4
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    sget p3, Lcn/mucang/android/framework/core/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->k:Ljava/lang/CharSequence;

    .line 38
    sget p3, Lcn/mucang/android/framework/core/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l:Ljava/lang/CharSequence;

    .line 39
    sget p3, Lcn/mucang/android/framework/core/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->m:Ljava/lang/CharSequence;

    goto :goto_6

    .line 40
    :cond_a
    sget-object v2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v2, :cond_b

    const/16 p3, 0x30

    goto :goto_5

    :cond_b
    const/4 p3, 0x3

    :goto_5
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 41
    sget p3, Lcn/mucang/android/framework/core/R$string;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->k:Ljava/lang/CharSequence;

    .line 42
    sget p3, Lcn/mucang/android/framework/core/R$string;->pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l:Ljava/lang/CharSequence;

    .line 43
    sget p3, Lcn/mucang/android/framework/core/R$string;->pull_to_refresh_from_bottom_release_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->m:Ljava/lang/CharSequence;

    .line 44
    :goto_6
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 46
    invoke-static {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/k;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_c
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 48
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 49
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 50
    iget p3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setTextAppearance(I)V

    .line 51
    :cond_d
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 52
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 53
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 54
    iget p3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setSubTextAppearance(I)V

    .line 55
    :cond_e
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 57
    invoke-direct {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_f
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 60
    invoke-direct {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    const/4 p3, 0x0

    .line 61
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 62
    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 63
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v4, :cond_13

    .line 64
    sget p2, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_7

    .line 66
    :cond_12
    sget p2, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p3, "ptrDrawableTop"

    const-string v0, "ptrDrawableStart"

    .line 67
    invoke-static {p3, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_7

    .line 69
    :cond_13
    sget p2, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 70
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_7

    .line 71
    :cond_14
    sget p2, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p3, "ptrDrawableBottom"

    const-string v0, "ptrDrawableEnd"

    .line 72
    invoke-static {p3, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_15
    :goto_7
    if-nez p3, :cond_16

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->getDefaultDrawableResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 75
    :cond_16
    invoke-virtual {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l()V

    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSubTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    return v0
.end method

.method protected abstract c(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final d(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->e(F)V

    :cond_0
    return-void
.end method

.method protected abstract e(F)V
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g()V

    return-void
.end method

.method protected abstract g()V
.end method

.method public final getContentSize()I
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/e$a;->a:[I

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->j:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->e:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->i()V

    :goto_0
    return-void
.end method

.method protected abstract i()V
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->k()V

    return-void
.end method

.method protected abstract k()V
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->e:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->m()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected abstract m()V
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 8
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 10
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 2
    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->u:I

    rem-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->t:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->t:[I

    aget v3, v3, v2

    if-ge v0, v3, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->r:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->n:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->n:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setSubHeaderText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->e:Z

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l:Ljava/lang/CharSequence;

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->m:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShowSlogan(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o:Z

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
