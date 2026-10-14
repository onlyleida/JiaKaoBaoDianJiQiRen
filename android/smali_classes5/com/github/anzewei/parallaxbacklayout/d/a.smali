.class public Lcom/github/anzewei/parallaxbacklayout/d/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/anzewei/parallaxbacklayout/d/a$c;,
        Lcom/github/anzewei/parallaxbacklayout/d/a$b;,
        Lcom/github/anzewei/parallaxbacklayout/d/a$d;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/app/Activity;

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/github/anzewei/parallaxbacklayout/b;

.field private g:Lcom/github/anzewei/parallaxbacklayout/d/a$c;

.field private h:Lcom/github/anzewei/parallaxbacklayout/c/b;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/github/anzewei/parallaxbacklayout/d/a$b;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/github/anzewei/parallaxbacklayout/d/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 2
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->a:F

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->d:Z

    .line 5
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->j:I

    .line 6
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->l:I

    const/16 v0, 0x1e

    .line 7
    iput v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->q:I

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    .line 9
    new-instance v0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/anzewei/parallaxbacklayout/d/a$d;-><init>(Lcom/github/anzewei/parallaxbacklayout/d/a;Lcom/github/anzewei/parallaxbacklayout/d/a$a;)V

    invoke-static {p0, v0}, Lcom/github/anzewei/parallaxbacklayout/b;->m(Landroid/view/ViewGroup;Lcom/github/anzewei/parallaxbacklayout/b$c;)Lcom/github/anzewei/parallaxbacklayout/b;

    move-result-object v0

    iput-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    .line 10
    invoke-virtual {p0, p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setEdgeFlag(I)V

    return-void
.end method

.method static synthetic a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    return p0
.end method

.method static synthetic b(Lcom/github/anzewei/parallaxbacklayout/d/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->q:I

    return p0
.end method

.method static synthetic c(Lcom/github/anzewei/parallaxbacklayout/d/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->a:F

    return p0
.end method

.method static synthetic d(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    return-object p0
.end method

.method static synthetic e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->p:I

    return p0
.end method

.method static synthetic f(Lcom/github/anzewei/parallaxbacklayout/d/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->p:I

    return p1
.end method

.method static synthetic g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic h(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/github/anzewei/parallaxbacklayout/d/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->i:I

    return p1
.end method

.method static synthetic j(Lcom/github/anzewei/parallaxbacklayout/d/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->k:I

    return p1
.end method

.method static synthetic k(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/d/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->g:Lcom/github/anzewei/parallaxbacklayout/d/a$c;

    return-object p0
.end method

.method static synthetic l(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->j:I

    if-nez v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/anzewei/parallaxbacklayout/b;->G(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/github/anzewei/parallaxbacklayout/b;->t()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/github/anzewei/parallaxbacklayout/b;->G(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 6
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/github/anzewei/parallaxbacklayout/b;->t()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/github/anzewei/parallaxbacklayout/b;->G(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    invoke-virtual {v0}, Lcom/github/anzewei/parallaxbacklayout/b;->t()I

    move-result v1

    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/github/anzewei/parallaxbacklayout/b;->G(I)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    invoke-virtual {v0}, Lcom/github/anzewei/parallaxbacklayout/b;->t()I

    move-result v1

    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/github/anzewei/parallaxbacklayout/b;->G(I)V

    :goto_0
    return-void
.end method

.method private o(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->k:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v1, p2

    mul-int/lit16 v1, v1, 0xff

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    mul-int/lit16 p2, p2, 0xff

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    mul-int/lit16 p2, p2, 0xff

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    mul-int/lit16 v1, v1, 0xff

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    div-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 20
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->k:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->h:Lcom/github/anzewei/parallaxbacklayout/c/b;

    invoke-interface {v1, p1, p0, p2}, Lcom/github/anzewei/parallaxbacklayout/c/b;->a(Landroid/graphics/Canvas;Lcom/github/anzewei/parallaxbacklayout/d/a;Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->m:Lcom/github/anzewei/parallaxbacklayout/d/a$b;

    invoke-interface {p2, p1}, Lcom/github/anzewei/parallaxbacklayout/d/a$b;->draw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/anzewei/parallaxbacklayout/b;->l(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "View"

    const-string v1, "drawChild"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->d:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->p(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 6
    iget-boolean p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->d:Z

    if-eqz p4, :cond_2

    if-eqz v0, :cond_2

    iget-object p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    .line 7
    invoke-virtual {p4}, Lcom/github/anzewei/parallaxbacklayout/b;->v()I

    move-result p4

    if-eqz p4, :cond_2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->o(Landroid/graphics/Canvas;Landroid/view/View;)V

    :cond_2
    return p3
.end method

.method public getEdgeFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->l:I

    return v0
.end method

.method public getSystemLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSystemTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public n(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->b:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 6
    invoke-direct {p0, v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->c:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->m()V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->m:Lcom/github/anzewei/parallaxbacklayout/d/a$b;

    invoke-interface {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    invoke-virtual {v0, p1}, Lcom/github/anzewei/parallaxbacklayout/b;->J(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->o:Z

    .line 2
    invoke-direct {p0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->m()V

    .line 3
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->i:I

    .line 5
    iget p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->k:I

    .line 6
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "left = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " top = "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "View"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 8
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_0

    .line 9
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p3

    .line 10
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, p2

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p5, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->e:Landroid/view/View;

    .line 13
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p4

    .line 14
    invoke-virtual {p2, p1, p4, p3, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->o:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->m:Lcom/github/anzewei/parallaxbacklayout/d/a$b;

    invoke-interface {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    invoke-virtual {v0, p1}, Lcom/github/anzewei/parallaxbacklayout/b;->A(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public q(ILcom/github/anzewei/parallaxbacklayout/c/b;)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->l:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/github/anzewei/parallaxbacklayout/c/d;

    invoke-direct {p1}, Lcom/github/anzewei/parallaxbacklayout/c/d;-><init>()V

    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->h:Lcom/github/anzewei/parallaxbacklayout/c/b;

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcom/github/anzewei/parallaxbacklayout/c/c;

    invoke-direct {p1}, Lcom/github/anzewei/parallaxbacklayout/c/c;-><init>()V

    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->h:Lcom/github/anzewei/parallaxbacklayout/c/b;

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Lcom/github/anzewei/parallaxbacklayout/c/a;

    invoke-direct {p1}, Lcom/github/anzewei/parallaxbacklayout/c/a;-><init>()V

    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->h:Lcom/github/anzewei/parallaxbacklayout/c/b;

    goto :goto_0

    .line 5
    :cond_3
    iput-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->h:Lcom/github/anzewei/parallaxbacklayout/c/b;

    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->o:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBackgroundView(Lcom/github/anzewei/parallaxbacklayout/d/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->m:Lcom/github/anzewei/parallaxbacklayout/d/a$b;

    return-void
.end method

.method public setEdgeFlag(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->r:I

    .line 3
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->f:Lcom/github/anzewei/parallaxbacklayout/b;

    invoke-virtual {v0, p1}, Lcom/github/anzewei/parallaxbacklayout/b;->H(I)V

    .line 4
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 5
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 6
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 7
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 8
    :cond_4
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge p1, v1, :cond_5

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_6

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 11
    fill-array-data p1, :array_0

    .line 12
    new-instance v1, Lcom/github/anzewei/parallaxbacklayout/d/b;

    invoke-direct {v1, v0, p1}, Lcom/github/anzewei/parallaxbacklayout/d/b;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 13
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    const/16 p1, 0x32

    .line 14
    invoke-virtual {v1, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 15
    iput-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 16
    :cond_6
    instance-of v1, p1, Lcom/github/anzewei/parallaxbacklayout/d/b;

    if-eqz v1, :cond_7

    .line 17
    check-cast p1, Lcom/github/anzewei/parallaxbacklayout/d/b;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 18
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->m()V

    return-void

    :array_0
    .array-data 4
        0x66000000
        0x11000000
        0x0
    .end array-data
.end method

.method public setEdgeMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->j:I

    .line 2
    invoke-direct {p0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->m()V

    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->d:Z

    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->a:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->n:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSlideCallback(Lcom/github/anzewei/parallaxbacklayout/d/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->g:Lcom/github/anzewei/parallaxbacklayout/d/a$c;

    return-void
.end method

.method public setVelocity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a;->q:I

    return-void
.end method
