.class public Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$SavedState;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;,
        Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;
    }
.end annotation


# static fields
.field private static final k0:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

.field private H:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

.field private I:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

.field private K:I

.field private M:I

.field private N:Landroid/content/res/ColorStateList;

.field private Q:Landroid/graphics/Typeface;

.field private T:I

.field private U:Landroid/graphics/drawable/Drawable;

.field private V:Ljava/util/Locale;

.field private W:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;

.field private final a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;

.field private a0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;

.field private final b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;

.field private b0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private c0:Landroid/graphics/Path;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private d0:Landroid/graphics/RectF;

.field private e:Landroid/widget/RelativeLayout;

.field private e0:[F

.field private f:Landroid/widget/LinearLayout;

.field private f0:F

.field private g:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;

.field private g0:Lcn/mucang/android/ui/framework/widget/tab/animation/d;

.field private h:Lcn/mucang/android/ui/framework/widget/tab/d;

.field private h0:Landroid/view/animation/Interpolator;

.field private i:I

.field private i0:Landroid/view/animation/Interpolator;

.field private j:I

.field private j0:Z

.field private k:F

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;)V

    iput-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;

    .line 4
    new-instance p3, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;

    invoke-direct {p3, p0, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;)V

    iput-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k:F

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    .line 8
    iput-boolean p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->o:Z

    const v3, -0x99999a

    .line 9
    iput v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    const/high16 v4, 0x1a000000

    .line 10
    iput v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->q:I

    .line 11
    iput v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    const/4 v4, 0x1

    .line 12
    iput-boolean v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->s:Z

    .line 13
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    const/16 v5, 0x8

    .line 14
    iput v5, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    .line 15
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v:I

    const/4 v5, 0x2

    .line 16
    iput v5, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    const/16 v5, 0xc

    .line 17
    iput v5, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    const/16 v6, 0x18

    .line 18
    iput v6, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    .line 19
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    .line 20
    iput v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->A:I

    .line 21
    iput v5, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    .line 22
    iput v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    .line 23
    iput-boolean v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->E:Z

    .line 24
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    .line 25
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->M:I

    .line 26
    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->Q:Landroid/graphics/Typeface;

    .line 27
    iput p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->T:I

    .line 28
    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->U:Landroid/graphics/drawable/Drawable;

    .line 29
    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f0:F

    .line 30
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 31
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 33
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    int-to-float v1, v1

    .line 34
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    .line 35
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    int-to-float v1, v1

    .line 36
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    .line 37
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    .line 38
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    .line 39
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    int-to-float v1, v1

    .line 40
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    .line 41
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    int-to-float v1, v1

    .line 42
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    .line 43
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->A:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->A:I

    .line 44
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    .line 45
    sget-object v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    .line 47
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    sget-object v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorColor:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    .line 51
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pUnderlineColor:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->q:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->q:I

    .line 52
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pDividerColor:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    .line 53
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorHeight:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    .line 55
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pUnderlineHeight:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    .line 56
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    .line 57
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorWidth:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v:I

    .line 58
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v:I

    .line 59
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabDividerPadding:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    .line 60
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    .line 61
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabPaddingLeftRight:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    .line 62
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    .line 63
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorPaddingBottom:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    .line 65
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabBackground:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->T:I

    .line 66
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->T:I

    .line 67
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pScrollOffset:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    .line 68
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    .line 69
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabTextAllCaps:I

    iget-boolean v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->s:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->s:Z

    .line 70
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->N:Landroid/content/res/ColorStateList;

    .line 71
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabTextSize:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    .line 72
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabItemMinWidth:I

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    .line 73
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorMatchTextWidth:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->D:Z

    .line 74
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorCorner:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->F:Z

    .line 75
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIsTabScrollGradient:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j0:Z

    .line 76
    invoke-static {}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;->values()[Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTabMode:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    .line 77
    invoke-static {}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->values()[Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pFocusMode:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->H:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    .line 78
    invoke-static {}, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->values()[Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pIndicatorAnimMode:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->I:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    .line 79
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PagerSlidingTabStrip_pTextSelectedBigger:I

    iget-boolean v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->E:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->E:Z

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->A:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->V:Ljava/util/Locale;

    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->V:Ljava/util/Locale;

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->n()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u(I)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)Lcn/mucang/android/ui/framework/widget/tab/animation/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g0:Lcn/mucang/android/ui/framework/widget/tab/animation/d;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    return p0
.end method

.method static synthetic d(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    return p1
.end method

.method static synthetic e(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)Lcn/mucang/android/ui/framework/widget/tab/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k:F

    return p1
.end method

.method static synthetic g(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w()V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t(II)V

    return-void
.end method

.method private i(ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    iget-object v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->W:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;

    iget-object v5, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->b0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;

    move-object v0, p2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;->a(Landroid/content/Context;ILcn/mucang/android/ui/framework/widget/tab/d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;)Landroid/view/View;

    move-result-object p2

    .line 2
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private j(Landroid/graphics/Canvas;IFF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g0:Lcn/mucang/android/ui/framework/widget/tab/animation/d;

    invoke-interface {v0}, Lcn/mucang/android/ui/framework/widget/tab/animation/d;->c()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v3, p3, v0

    .line 2
    iget-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g0:Lcn/mucang/android/ui/framework/widget/tab/animation/d;

    invoke-interface {p3}, Lcn/mucang/android/ui/framework/widget/tab/animation/d;->c()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    add-float v5, p4, p3

    .line 3
    iget-boolean p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->F:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c0:Landroid/graphics/Path;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->d0:Landroid/graphics/RectF;

    iput v3, p3, Landroid/graphics/RectF;->left:F

    .line 6
    iget p4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    sub-int p4, p2, p4

    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 7
    iput v5, p3, Landroid/graphics/RectF;->right:F

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 8
    iput p2, p3, Landroid/graphics/RectF;->bottom:F

    .line 9
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c0:Landroid/graphics/Path;

    iget-object p4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e0:[F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, p4, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 10
    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c0:Landroid/graphics/Path;

    iget-object p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 11
    :cond_0
    iget p3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    sub-int p3, p2, p3

    iget p4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    sub-int/2addr p3, p4

    int-to-float v4, p3

    sub-int/2addr p2, p4

    int-to-float v6, p2

    iget-object v7, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private k(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->D:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l(Landroid/view/View;)F

    move-result p1

    .line 3
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l(Landroid/view/View;)F

    move-result v0

    sub-float/2addr v0, p1

    .line 6
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k:F

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    :cond_0
    float-to-int p1, p1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    return p1
.end method

.method private l(Landroid/view/View;)F
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const v0, 0x1020014

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private m(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x1020014

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    .line 6
    iget-boolean v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->E:Z

    if-eqz v1, :cond_3

    const v1, 0x3f99999a    # 1.2f

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    const/4 p1, 0x1

    .line 11
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    .line 14
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->F:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c0:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->d0:Landroid/graphics/RectF;

    .line 4
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    int-to-float v0, v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    .line 5
    iput-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e0:[F

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j0:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->o()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->I:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/tab/animation/a;->a(Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;)Lcn/mucang/android/ui/framework/widget/tab/animation/d;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g0:Lcn/mucang/android/ui/framework/widget/tab/animation/d;

    .line 9
    new-instance v1, Lcn/mucang/android/ui/framework/widget/tab/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/ui/framework/widget/tab/a;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/animation/d;->b(Lcn/mucang/android/ui/framework/widget/tab/animation/c;)V

    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    sget-object v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;->CENTER:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e:Landroid/widget/RelativeLayout;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 17
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic q()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t(II)V

    return-void
.end method

.method private t(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 3
    :cond_1
    iget p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method private u(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge p1, v1, :cond_4

    if-gez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;

    if-eqz v2, :cond_2

    .line 6
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    invoke-interface {v2, v3, v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;->a(ILandroid/view/View;Z)V

    .line 7
    :cond_2
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    .line 8
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;

    if-eqz v2, :cond_3

    .line 11
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    invoke-interface {v2, v3, p1, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;->a(ILandroid/view/View;Z)V

    .line 12
    :cond_3
    invoke-direct {p0, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m(Landroid/view/View;)V

    .line 13
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$b;->a:[I

    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->H:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 3
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 4
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :cond_1
    sub-int/2addr v0, v2

    .line 5
    div-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    if-lez v0, :cond_4

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge v0, v1, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 8
    iput v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    .line 9
    :cond_3
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    if-ge v2, v1, :cond_6

    .line 10
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 11
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 12
    iget v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    add-int/2addr v4, v1

    iput v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    add-int/2addr v3, v4

    if-le v3, v0, :cond_3

    sub-int/2addr v4, v1

    .line 13
    iput v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    goto :goto_0

    :cond_4
    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    goto :goto_0

    .line 16
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 17
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->t:I

    .line 18
    :cond_6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f0:F

    return-void
.end method

.method private x()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    sget-object v4, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;->FIXED:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    if-ne v3, v4, :cond_0

    .line 4
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :goto_1
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->T:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_1
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 11
    check-cast v2, Landroid/widget/TextView;

    .line 12
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->Q:Landroid/graphics/Typeface;

    iget v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->M:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 14
    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->N:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 16
    :cond_2
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :goto_2
    iget-boolean v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->s:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_4
    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->o:Z

    return-void
.end method


# virtual methods
.method public getCurrentSelectedPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->l:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method public getIndicatorPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->T:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    return v0
.end method

.method public o()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h0:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    .line 2
    new-instance p1, Lcn/mucang/android/ui/framework/widget/tab/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/ui/framework/widget/tab/c;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 5
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w:I

    sub-int v1, v0, v1

    int-to-float v5, v1

    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-direct {p0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k(Landroid/view/View;)I

    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    .line 11
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    sget-object v6, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;->CENTER:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    if-ne v1, v6, :cond_1

    .line 12
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f0:F

    add-float/2addr v3, v1

    add-float/2addr v4, v1

    .line 13
    :cond_1
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_5

    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    iget v7, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_5

    .line 14
    iget-object v7, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v2

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v8, v1

    .line 17
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    if-ne v1, v6, :cond_2

    .line 18
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f0:F

    add-float/2addr v7, v1

    add-float/2addr v8, v1

    .line 19
    :cond_2
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->k:F

    .line 20
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h0:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_3

    .line 21
    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    .line 22
    :goto_0
    iget-object v5, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i0:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_4

    .line 23
    invoke-interface {v5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    :cond_4
    mul-float v7, v7, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float v2, v2, v3

    add-float v3, v7, v2

    mul-float v8, v8, v1

    sub-float/2addr v5, v1

    mul-float v5, v5, v4

    add-float v4, v8, v5

    .line 24
    :cond_5
    invoke-direct {p0, p1, v0, v3, v4}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j(Landroid/graphics/Canvas;IFF)V

    .line 25
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 26
    :goto_1
    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 27
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->n:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->G:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    sget-object v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;->FIXED:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$TabMode;

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->o:Z

    if-nez v0, :cond_8

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge v0, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    iget v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->o:Z

    if-nez v0, :cond_2

    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_1
    iget v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge v2, v4, :cond_3

    .line 11
    iget-object v4, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-lez v3, :cond_7

    if-lez v0, :cond_7

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->w()V

    if-gt v3, v0, :cond_6

    .line 13
    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    if-lez v2, :cond_4

    sub-int/2addr v0, v3

    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    :cond_4
    sub-int/2addr v0, v3

    .line 16
    iget v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    div-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    iget-object v2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19
    :goto_2
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge v1, v0, :cond_5

    .line 20
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 23
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    :cond_6
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->o:Z

    :cond_7
    return-void

    .line 26
    :cond_8
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$SavedState;->a:I

    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->j:I

    iput v0, v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$SavedState;->a:I

    return-object v1
.end method

.method public synthetic r()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->q()V

    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    invoke-interface {v0}, Lcn/mucang/android/ui/framework/widget/tab/d;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;->a(I)Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;

    invoke-interface {v1, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;->a(I)Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i(ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    invoke-interface {v3}, Lcn/mucang/android/ui/framework/widget/tab/d;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->i(ILcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    invoke-interface {v0}, Lcn/mucang/android/ui/framework/widget/tab/d;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u(I)V

    return-void
.end method

.method public setAllTabEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->r:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->p:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->u:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorPaddingBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->z:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setInterceptor(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->b0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$h;

    return-void
.end method

.method public setOnTabClickListener(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->W:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$d;

    return-void
.end method

.method public setOnTabSelectChangeListener(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a0:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$e;

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->T:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTabBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->U:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTabItemMinWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->K:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->y:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->C:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTextColorStateList(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->N:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTextColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->N:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->B:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->x()V

    return-void
.end method

.method public setViewPager(Lcn/mucang/android/ui/framework/widget/tab/d;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/ui/framework/widget/tab/d;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/ui/framework/widget/tab/d;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->v(Lcn/mucang/android/ui/framework/widget/tab/d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;)V

    return-void
.end method

.method public v(Lcn/mucang/android/ui/framework/widget/tab/d;Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->g:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/ui/framework/widget/tab/d;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->h:Lcn/mucang/android/ui/framework/widget/tab/d;

    instance-of p2, p1, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;

    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->b:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$c;

    invoke-virtual {p1, p2}, Lcn/mucang/android/ui/framework/widget/tab/container/FakePagerContainer;->a(Lcn/mucang/android/ui/framework/widget/tab/e/a;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, p1, Lcn/mucang/android/ui/framework/widget/tab/container/a;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Lcn/mucang/android/ui/framework/widget/tab/container/a;

    iget-object p2, p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$f;

    invoke-virtual {p1, p2}, Lcn/mucang/android/ui/framework/widget/tab/container/a;->a(Lcn/mucang/android/ui/framework/widget/tab/e/b;)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$a;-><init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;->s()V

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager does not have adapter instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
