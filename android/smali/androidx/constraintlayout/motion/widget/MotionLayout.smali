.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$k;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$f;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$g;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$e;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$j;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$i;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$h;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field public static y0:Z


# instance fields
.field private A:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

.field private B:Landroidx/constraintlayout/motion/widget/b;

.field C:I

.field D:I

.field E:Z

.field F:F

.field G:F

.field H:J

.field I:F

.field private K:Z

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/n;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/n;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/n;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$k;",
            ">;"
        }
    .end annotation
.end field

.field private U:I

.field private V:J

.field private W:F

.field a:Landroidx/constraintlayout/motion/widget/q;

.field private a0:I

.field b:Landroid/view/animation/Interpolator;

.field private b0:F

.field c:Landroid/view/animation/Interpolator;

.field protected c0:Z

.field d:F

.field d0:I

.field private e:I

.field e0:I

.field f:I

.field f0:I

.field private g:I

.field g0:I

.field private h:I

.field h0:I

.field private i:I

.field i0:I

.field private j:Z

.field j0:F

.field k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field private k0:Landroidx/constraintlayout/core/motion/a/d;

.field private l:J

.field private l0:Z

.field private m:F

.field private m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

.field n:F

.field private n0:Ljava/lang/Runnable;

.field o:F

.field private o0:[I

.field private p:J

.field p0:I

.field q:F

.field private q0:Z

.field private r:Z

.field r0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field s:Z

.field s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

.field private t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

.field private t0:Z

.field private u:F

.field private u0:Landroid/graphics/RectF;

.field private v:F

.field private v0:Landroid/view/View;

.field w:I

.field private w0:Landroid/graphics/Matrix;

.field x:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

.field x0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Le/a/a/a/a;


# direct methods
.method private static G(FFF)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v4, p0, v3

    if-lez v4, :cond_1

    div-float v3, p0, p2

    mul-float p0, p0, v3

    mul-float p2, p2, v3

    mul-float p2, p2, v3

    div-float/2addr p2, v2

    sub-float/2addr p0, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    neg-float v4, p0

    div-float/2addr v4, p2

    mul-float p0, p0, v4

    mul-float p2, p2, v4

    mul-float p2, p2, v4

    div-float/2addr p2, v2

    add-float/2addr p0, p2

    add-float/2addr p1, p0

    cmpg-float p0, p1, v3

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/motion/widget/MotionLayout$j;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    return-object p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    return p0
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    return p0
.end method

.method private e(Landroid/view/View;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    neg-float p3, p3

    neg-float p4, p4

    .line 5
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return p1

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Landroid/graphics/Matrix;

    if-nez p3, :cond_1

    .line 9
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Landroid/graphics/Matrix;

    .line 10
    :cond_1
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 11
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    return p1
.end method

.method private h()V
    .locals 13

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 4
    iget-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    mul-float v4, v4, v0

    const v5, 0x3089705f    # 1.0E-9f

    mul-float v4, v4, v5

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    div-float/2addr v4, v6

    .line 5
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    add-float/2addr v6, v4

    .line 6
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    if-eqz v4, :cond_0

    .line 7
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-lez v8, :cond_1

    .line 8
    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpl-float v9, v6, v9

    if-gez v9, :cond_2

    :cond_1
    cmpg-float v9, v0, v7

    if-gtz v9, :cond_3

    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_3

    .line 9
    :cond_2
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    if-eqz v3, :cond_5

    if-nez v9, :cond_5

    .line 10
    iget-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    if-eqz v9, :cond_4

    .line 11
    iget-wide v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    sub-long/2addr v1, v9

    long-to-float v1, v1

    mul-float v1, v1, v5

    .line 12
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {v3, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    :cond_5
    :goto_1
    if-lez v8, :cond_6

    .line 14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpl-float v1, v6, v1

    if-gez v1, :cond_7

    :cond_6
    cmpg-float v0, v0, v7

    if-gtz v0, :cond_8

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_8

    .line 15
    :cond_7
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    .line 16
    :cond_8
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:F

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 18
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    .line 19
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v3, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    :goto_2
    if-ge v4, v0, :cond_b

    .line 20
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 21
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v7, :cond_a

    .line 22
    iget-object v12, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Landroidx/constraintlayout/core/motion/a/d;

    move v9, v6

    move-wide v10, v1

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/widget/m;->q(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/a/d;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 23
    :cond_b
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Z

    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_c
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    if-eqz v0, :cond_1

    .line 5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-interface {v0, p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    .line 8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-interface {v2, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    .line 10
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:F

    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    if-eqz v1, :cond_3

    .line 12
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-interface {v1, p0, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    .line 15
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    invoke-interface {v1, p0, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private p(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    neg-float p1, p1

    neg-float p2, p2

    .line 8
    invoke-direct {p0, p3, p4, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e(Landroid/view/View;Landroid/view/MotionEvent;FF)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method private t()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 5
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B(III)V

    return-void
.end method

.method public B(III)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C(IIII)V

    return-void
.end method

.method public C(IIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/h;

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v2, p1, p2, p3}, Landroidx/constraintlayout/widget/h;->a(IIFF)I

    move-result p2

    if-eq p2, v1, :cond_0

    move p1, p2

    .line 3
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne p2, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v0, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-ne p3, p1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(F)V

    if-lez p4, :cond_2

    int-to-float p1, p4

    div-float/2addr p1, v2

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    :cond_2
    return-void

    .line 7
    :cond_3
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_5

    .line 8
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(F)V

    if-lez p4, :cond_4

    int-to-float p1, p4

    div-float/2addr p1, v2

    .line 9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    :cond_4
    return-void

    .line 10
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq p2, v1, :cond_7

    .line 11
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(II)V

    .line 12
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(F)V

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y()V

    if-lez p4, :cond_6

    int-to-float p1, p4

    div-float/2addr p1, v2

    .line 15
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    :cond_6
    return-void

    :cond_7
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 17
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    .line 18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 19
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 20
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    .line 21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    .line 22
    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    const/4 p3, 0x0

    .line 23
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    if-ne p4, v1, :cond_8

    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->n()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 25
    :cond_8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/motion/widget/q;->T(II)V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-nez p4, :cond_9

    .line 28
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p4}, Landroidx/constraintlayout/motion/widget/q;->n()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v2

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    goto :goto_0

    :cond_9
    if-lez p4, :cond_a

    int-to-float p4, p4

    div-float/2addr p4, v2

    .line 29
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 30
    :cond_a
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    .line 31
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :goto_1
    if-ge p2, p4, :cond_b

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 33
    new-instance v2, Landroidx/constraintlayout/motion/widget/m;

    invoke-direct {v2, v1}, Landroidx/constraintlayout/motion/widget/m;-><init>(Landroid/view/View;)V

    .line 34
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    .line 37
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget-object p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    invoke-virtual {p2, p4, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    throw p3
.end method

.method public D()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public E(ILandroidx/constraintlayout/widget/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->Q(ILandroidx/constraintlayout/widget/c;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->D()V

    const/4 p1, 0x0

    throw p1
.end method

.method public varargs F(I[Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->Y(I[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "MotionLayout"

    const-string p2, " no motionScene"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method d(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    if-eqz v1, :cond_1

    .line 3
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 4
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->n()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q;->q()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    .line 11
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/n;

    .line 3
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/n;->z(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Z)V

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/q;->s:Landroidx/constraintlayout/motion/widget/t;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/t;->c()V

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v1, :cond_2

    return-void

    .line 9
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:I

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 13
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_4

    .line 14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float v5, v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:F

    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:I

    .line 17
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:J

    goto :goto_1

    .line 18
    :cond_3
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:J

    .line 19
    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/a;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-static {p0, v4}, Landroidx/constraintlayout/motion/widget/a;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (progress: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    const-string v1, "undefined"

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/a;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 25
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 27
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 29
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-le v0, v2, :cond_8

    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_7

    .line 31
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 32
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/q;->n()I

    move-result v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    .line 33
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/n;

    .line 35
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/n;->y(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method f(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/m;->e(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method g(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    .line 3
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_1

    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    .line 4
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 5
    :cond_1
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    const/4 v7, 0x0

    if-nez v5, :cond_3

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    if-eqz v5, :cond_2

    if-nez p1, :cond_3

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_e

    .line 6
    :cond_3
    :goto_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    .line 8
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    instance-of v10, v5, Landroidx/constraintlayout/motion/widget/o;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_4

    .line 9
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    div-float/2addr v10, v12

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 10
    :goto_1
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    add-float/2addr v12, v10

    .line 11
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    if-eqz v13, :cond_5

    .line 12
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    :cond_5
    cmpl-float v13, v1, v4

    if-lez v13, :cond_6

    .line 13
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpl-float v14, v12, v14

    if-gez v14, :cond_7

    :cond_6
    cmpg-float v14, v1, v4

    if-gtz v14, :cond_8

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_8

    .line 14
    :cond_7
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    .line 15
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    .line 16
    :goto_2
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 17
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 18
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v5, :cond_e

    if-nez v14, :cond_e

    .line 19
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    if-eqz v14, :cond_b

    .line 20
    iget-wide v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    sub-long v6, v8, v6

    long-to-float v6, v6

    mul-float v6, v6, v11

    .line 21
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 22
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Le/a/a/a/a;

    if-eq v6, v7, :cond_a

    .line 23
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 24
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    .line 25
    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/o;

    if-eqz v7, :cond_d

    .line 26
    check-cast v6, Landroidx/constraintlayout/motion/widget/o;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/o;->a()F

    move-result v6

    .line 27
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 28
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    mul-float v7, v7, v8

    cmpg-float v7, v7, v15

    cmpl-float v7, v6, v4

    if-lez v7, :cond_9

    cmpl-float v7, v5, v3

    if-ltz v7, :cond_9

    .line 29
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    const/4 v7, 0x0

    .line 30
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    cmpg-float v6, v6, v4

    if-gez v6, :cond_d

    cmpg-float v6, v5, v4

    if-gtz v6, :cond_d

    .line 31
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 32
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    const/4 v12, 0x0

    goto :goto_5

    .line 33
    :cond_a
    invoke-virtual {v7}, Le/a/a/a/a;->c()Z

    const/4 v1, 0x0

    throw v1

    .line 34
    :cond_b
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 35
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/o;

    if-eqz v7, :cond_c

    .line 36
    check-cast v6, Landroidx/constraintlayout/motion/widget/o;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/o;->a()F

    move-result v6

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    goto :goto_4

    :cond_c
    add-float/2addr v12, v10

    .line 37
    invoke-interface {v6, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v6, v5

    mul-float v6, v6, v1

    div-float/2addr v6, v10

    .line 38
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    :cond_d
    :goto_4
    move v12, v5

    goto :goto_5

    .line 39
    :cond_e
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 40
    :goto_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v15

    if-lez v5, :cond_f

    .line 41
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_f
    if-lez v13, :cond_10

    .line 42
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_11

    :cond_10
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_12

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_12

    .line 43
    :cond_11
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    const/4 v5, 0x0

    .line 44
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    :cond_12
    cmpl-float v5, v12, v3

    if-gez v5, :cond_14

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_13

    goto :goto_6

    :cond_13
    const/4 v7, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    const/4 v7, 0x0

    .line 45
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    .line 46
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 47
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 48
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    .line 50
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:F

    .line 51
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_15

    move v6, v12

    goto :goto_8

    :cond_15
    invoke-interface {v6, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 52
    :goto_8
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    if-eqz v10, :cond_16

    .line 53
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    div-float v11, v1, v11

    add-float/2addr v11, v12

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 54
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    :cond_16
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v5, :cond_18

    .line 55
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 56
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v15, :cond_17

    .line 57
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Landroidx/constraintlayout/core/motion/a/d;

    move-object/from16 v16, v11

    move/from16 v17, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v14

    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/motion/widget/m;->q(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/a/d;)Z

    move-result v11

    or-int/2addr v7, v11

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    :cond_17
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_9

    :cond_18
    if-lez v13, :cond_19

    .line 58
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_1a

    :cond_19
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1b

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_1b

    :cond_1a
    const/4 v7, 0x1

    goto :goto_a

    :cond_1b
    const/4 v7, 0x0

    .line 59
    :goto_a
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    if-nez v5, :cond_1c

    if-eqz v7, :cond_1c

    .line 60
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 61
    :cond_1c
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Z

    if-eqz v5, :cond_1d

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 63
    :cond_1d
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    const/4 v6, 0x1

    xor-int/2addr v7, v6

    or-int/2addr v5, v7

    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_1e

    .line 64
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v5, v2, :cond_1e

    .line 65
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v2, v5, :cond_1e

    .line 66
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 67
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 69
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    const/4 v7, 0x1

    goto :goto_b

    :cond_1e
    const/4 v7, 0x0

    :goto_b
    float-to-double v8, v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_1f

    .line 70
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq v2, v5, :cond_1f

    .line 71
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 72
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 74
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    const/4 v7, 0x1

    .line 75
    :cond_1f
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    if-nez v2, :cond_23

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    if-eqz v2, :cond_20

    goto :goto_c

    :cond_20
    if-lez v13, :cond_21

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_22

    :cond_21
    cmpg-float v2, v1, v4

    if-gez v2, :cond_24

    cmpl-float v2, v12, v4

    if-nez v2, :cond_24

    .line 76
    :cond_22
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_d

    .line 77
    :cond_23
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 78
    :cond_24
    :goto_d
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Z

    if-nez v2, :cond_27

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    if-nez v2, :cond_27

    if-lez v13, :cond_25

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_26

    :cond_25
    cmpg-float v1, v1, v4

    if-gez v1, :cond_27

    cmpl-float v1, v12, v4

    if-nez v1, :cond_27

    .line 79
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    .line 80
    :cond_27
    :goto_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_29

    .line 81
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq v1, v2, :cond_28

    goto :goto_f

    :cond_28
    move v6, v7

    .line 82
    :goto_f
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    :goto_10
    move v7, v6

    goto :goto_12

    :cond_29
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2b

    .line 83
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v1, v2, :cond_2a

    goto :goto_11

    :cond_2a
    move v6, v7

    .line 84
    :goto_11
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    goto :goto_10

    .line 85
    :cond_2b
    :goto_12
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Z

    if-eqz v7, :cond_2c

    .line 86
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    if-nez v1, :cond_2c

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 88
    :cond_2c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->l()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/q$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->m()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Landroidx/constraintlayout/motion/widget/b;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Landroidx/constraintlayout/motion/widget/b;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    return v0
.end method

.method protected getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    return-object v0
.end method

.method public getStartState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->c()V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->n()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:I

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 6
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v0, v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t()V

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:[I

    if-eqz v0, :cond_4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 12
    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A(I)V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:[I

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    :cond_4
    return-void
.end method

.method public k(IZF)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    .line 5
    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method l(IFFF[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/m;->k(FFF[F)V

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    .line 4
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    sub-float p3, p2, p3

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    .line 5
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WARNING could not find view id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public loadLayoutDescription(I)V
    .locals 4

    const-string v0, "unable to parse MotionScene file"

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 1
    :try_start_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, p1}, Landroidx/constraintlayout/motion/widget/q;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    .line 2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/q;->B()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q;->B()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q;->o()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 6
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_2
    :goto_0
    const/16 v1, 0x11

    if-lt p1, v1, :cond_4

    .line 8
    :try_start_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 10
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz p1, :cond_7

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/q;->P(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/n;

    .line 15
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/motion/widget/n;->x(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 17
    :cond_6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 18
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-eqz p1, :cond_9

    .line 20
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Z

    if-eqz v1, :cond_8

    .line 21
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->a()V

    goto :goto_3

    .line 23
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz p1, :cond_b

    .line 24
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q$b;->u()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y()V

    .line 26
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 27
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :cond_a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    :cond_b
    :goto_3
    return-void
.end method

.method public m(I)Landroidx/constraintlayout/widget/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    return-object p1
.end method

.method n(I)Landroidx/constraintlayout/motion/widget/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/m;

    return-object p1
.end method

.method public o(I)Landroidx/constraintlayout/motion/widget/q$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q;->C(I)Landroidx/constraintlayout/motion/widget/q$b;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/q;->P(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/n;

    .line 10
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/motion/widget/n;->x(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 12
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-eqz v0, :cond_5

    .line 15
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Z

    if-eqz v1, :cond_4

    .line 16
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->a()V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->u()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 20
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y()V

    .line 21
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 22
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/q;->s:Landroidx/constraintlayout/motion/widget/t;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/t;->g(Landroid/view/MotionEvent;)V

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Landroidx/constraintlayout/motion/widget/r;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/r;->q()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    .line 13
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroid/view/View;

    invoke-direct {p0, v0, v2, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v2, :cond_0

    .line 3
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 5
    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    if-eq p1, p5, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u()V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Z)V

    .line 8
    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 9
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    .line 11
    throw p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Z

    if-eqz v3, :cond_3

    .line 5
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Z

    .line 6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s()V

    .line 7
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t()V

    const/4 v0, 0x1

    .line 8
    :cond_3
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    .line 9
    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:I

    .line 10
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:I

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->B()I

    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/q;->o()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 13
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    if-eqz v2, :cond_5

    .line 14
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 15
    :cond_5
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R()I

    move-result v0

    add-int/2addr v0, p2

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result p2

    add-int/2addr p2, p1

    .line 20
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_6

    if-nez p1, :cond_7

    .line 21
    :cond_6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:I

    int-to-float v0, p1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 22
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 23
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:I

    if-eq p1, v1, :cond_8

    if-nez p1, :cond_9

    .line 24
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    int-to-float p2, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float v1, v1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 26
    :cond_9
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 27
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h()V

    return-void

    .line 28
    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    throw v3

    .line 30
    :cond_b
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b(II)Z

    throw v3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 10

    .line 1
    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p5, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_c

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->z()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->z()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/r;->q()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/q;->t()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/r;->e()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v2, p3

    .line 11
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/r;->e()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    int-to-float v0, p2

    int-to-float v1, p3

    .line 13
    invoke-virtual {p5, v0, v1}, Landroidx/constraintlayout/motion/widget/q;->u(FF)F

    move-result v0

    .line 14
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpg-float v6, v1, v4

    if-gtz v6, :cond_6

    cmpg-float v6, v0, v4

    if-ltz v6, :cond_7

    :cond_6
    cmpl-float v1, v1, v3

    if-ltz v1, :cond_9

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    .line 15
    :cond_7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 17
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    .line 18
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 19
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    int-to-float v3, p2

    .line 20
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    int-to-float v4, p3

    .line 21
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    .line 22
    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v6, v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    .line 23
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    .line 24
    invoke-virtual {p5, v3, v4}, Landroidx/constraintlayout/motion/widget/q;->L(FF)V

    .line 25
    iget p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_a

    .line 26
    aput p2, p4, v2

    .line 27
    aput p3, p4, v5

    .line 28
    :cond_a
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Z)V

    .line 29
    aget p1, p4, v2

    if-nez p1, :cond_b

    aget p1, p4, v5

    if-eqz p1, :cond_c

    .line 30
    :cond_b
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Z

    :cond_c
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 3
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 4
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    .line 3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/q;->S(Z)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q$b;->y()Landroidx/constraintlayout/motion/widget/r;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/r;->e()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz p1, :cond_1

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    div-float/2addr v0, p2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    div-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/q;->M(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Landroidx/constraintlayout/motion/widget/q;->N(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/n;

    if-eqz v0, :cond_6

    .line 3
    check-cast p1, Landroidx/constraintlayout/motion/widget/n;

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/n;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ljava/util/ArrayList;

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/n;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    .line 14
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/n;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    .line 18
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/b;

    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:Z

    return v0
.end method

.method protected r()Landroidx/constraintlayout/motion/widget/MotionLayout$h;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->e()Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    move-result-object v0

    return-object v0
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q$b;->w()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method s()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/q;->g(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    .line 4
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/q;->f(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->V()V

    :cond_3
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->q()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/n;

    .line 4
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/n;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/n;

    .line 4
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/n;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v0

    if-ltz v2, :cond_0

    cmpl-float v3, p1, v1

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 1
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e(F)V

    return-void

    :cond_3
    if-gtz v2, :cond_5

    .line 6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-ne v1, v2, :cond_4

    .line 7
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 8
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_8

    .line 10
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_5
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_7

    .line 11
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-ne v0, v2, :cond_6

    .line 12
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 13
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 17
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 18
    :cond_8
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    .line 20
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    .line 21
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    const-wide/16 v1, -0x1

    .line 22
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    .line 23
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroid/view/animation/Interpolator;

    .line 25
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/q;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/q;->S(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u()V

    return-void
.end method

.method setStartState(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f(I)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d(I)V

    return-void

    .line 6
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 10
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 11
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/b;->d(IFF)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 4
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    .line 6
    :cond_1
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 8
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i()V

    :cond_4
    if-ne p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(I)Landroidx/constraintlayout/motion/widget/q$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q$b;->x()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q$b;->v()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f(I)V

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d(I)V

    return-void

    .line 10
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v0, v1, :cond_2

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q;->U(Landroidx/constraintlayout/motion/widget/q$b;)V

    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    return-void
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/q$b;)V
    .locals 4

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q;->U(Landroidx/constraintlayout/motion/widget/q$b;)V

    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 16
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/q;->o()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 19
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    .line 21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    :goto_0
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/q$b;->A(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:J

    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/q;->B()I

    move-result p1

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->o()I

    move-result v0

    .line 26
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-ne v0, v1, :cond_2

    return-void

    .line 27
    :cond_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 28
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/q;->T(II)V

    .line 30
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_0

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q;->R(I)V

    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->g(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->a()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 3
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public v(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e(F)V

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->h(F)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 7
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 8
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(F)V

    return-void
.end method

.method public w(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f(I)V

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d(I)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 8
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->T(II)V

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/motion/widget/q;->j(I)Landroidx/constraintlayout/widget/c;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public x(IFF)V
    .locals 10

    .line 1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    .line 5
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/q;->n()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:F

    .line 7
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:Z

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v9, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_5

    if-eq p1, v6, :cond_5

    const/4 v7, 0x4

    if-eq p1, v7, :cond_4

    const/4 v7, 0x5

    if-eq p1, v7, :cond_2

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_5

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:J

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 11
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/q;->r()F

    move-result v1

    invoke-static {p3, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/q;->r()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b(FFF)V

    throw v9

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Le/a/a/a/a;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    .line 14
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/q;->r()F

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/q;->s()F

    move-result v6

    move v2, p2

    move v3, p3

    .line 15
    invoke-virtual/range {v0 .. v6}, Le/a/a/a/a;->b(FFFFFF)V

    throw v9

    .line 16
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/q;->r()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b(FFF)V

    throw v9

    :cond_5
    if-eq p1, v1, :cond_9

    if-ne p1, v4, :cond_6

    goto :goto_1

    :cond_6
    if-eq p1, v6, :cond_8

    if-ne p1, v5, :cond_7

    goto :goto_0

    :cond_7
    move v2, p2

    goto :goto_2

    :cond_8
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/q;->i()I

    move-result v0

    if-nez v0, :cond_a

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Le/a/a/a/a;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    .line 19
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/q;->r()F

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/q;->s()F

    move-result v6

    move v3, p3

    .line 20
    invoke-virtual/range {v0 .. v6}, Le/a/a/a/a;->b(FFFFFF)V

    throw v9

    .line 21
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Le/a/a/a/a;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    .line 22
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/q;->y()F

    move-result v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/q;->z()F

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/q;->x()F

    move-result v6

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    .line 23
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/q;->A()F

    move-result v7

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/q;->w()I

    move-result v8

    move v3, p3

    .line 24
    invoke-virtual/range {v0 .. v8}, Le/a/a/a/a;->d(FFFFFFFI)V

    throw v9
.end method

.method public y()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(F)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:Ljava/lang/Runnable;

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(F)V

    return-void
.end method
