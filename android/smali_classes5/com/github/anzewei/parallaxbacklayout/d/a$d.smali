.class Lcom/github/anzewei/parallaxbacklayout/d/a$d;
.super Lcom/github/anzewei/parallaxbacklayout/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/anzewei/parallaxbacklayout/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:F

.field final synthetic b:Lcom/github/anzewei/parallaxbacklayout/d/a;


# direct methods
.method private constructor <init>(Lcom/github/anzewei/parallaxbacklayout/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-direct {p0}, Lcom/github/anzewei/parallaxbacklayout/b$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/anzewei/parallaxbacklayout/d/a;Lcom/github/anzewei/parallaxbacklayout/d/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/github/anzewei/parallaxbacklayout/d/a$d;-><init>(Lcom/github/anzewei/parallaxbacklayout/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p3}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    .line 2
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5
    iget-object p3, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p3}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1
    :goto_0
    return p3
.end method

.method public b(Landroid/view/View;II)I
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p3}, Lcom/github/anzewei/parallaxbacklayout/d/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    .line 2
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1
    :goto_0
    return p3
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0xc

    return p1
.end method

.method public j(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/github/anzewei/parallaxbacklayout/b$c;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->k(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/d/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->k(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/d/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/anzewei/parallaxbacklayout/d/a$c;->a(I)V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/github/anzewei/parallaxbacklayout/b$c;->k(Landroid/view/View;IIII)V

    .line 2
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int p1, p2, p1

    int-to-float p1, p1

    iget-object p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 4
    invoke-static {p4}, Lcom/github/anzewei/parallaxbacklayout/d/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int p1, p2, p1

    int-to-float p1, p1

    iget-object p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 8
    invoke-static {p4}, Lcom/github/anzewei/parallaxbacklayout/d/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-virtual {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemTop()I

    move-result p1

    sub-int p1, p3, p1

    int-to-float p1, p1

    iget-object p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 12
    invoke-static {p4}, Lcom/github/anzewei/parallaxbacklayout/d/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    int-to-float p1, p3

    .line 15
    iget-object p4, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 16
    invoke-static {p4}, Lcom/github/anzewei/parallaxbacklayout/d/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1, p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->i(Lcom/github/anzewei/parallaxbacklayout/d/a;I)I

    .line 19
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1, p3}, Lcom/github/anzewei/parallaxbacklayout/d/a;->j(Lcom/github/anzewei/parallaxbacklayout/d/a;I)I

    .line 20
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 21
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->k(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/d/a$c;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->k(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/d/a$c;

    move-result-object p1

    iget p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    invoke-interface {p1, p2}, Lcom/github/anzewei/parallaxbacklayout/d/a$c;->b(F)V

    .line 23
    :cond_4
    iget p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    const p2, 0x3f7fbe77    # 0.999f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->l(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->l(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->l(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    sget p3, Lcom/github/anzewei/parallaxbacklayout/R$anim;->parallax_exit:I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    return-void
.end method

.method public l(Landroid/view/View;FF)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 4
    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->b(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_2

    if-nez v1, :cond_1

    .line 6
    iget v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    iget-object v6, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v6}, Lcom/github/anzewei/parallaxbacklayout/d/a;->c(Lcom/github/anzewei/parallaxbacklayout/d/a;)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 7
    invoke-static {v2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    move v2, v1

    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v6, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v6}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    .line 9
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v6, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v6}, Lcom/github/anzewei/parallaxbacklayout/d/a;->b(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    cmpg-float p2, p2, v4

    if-gtz p2, :cond_6

    if-nez v1, :cond_5

    .line 10
    iget p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    iget-object v2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->c(Lcom/github/anzewei/parallaxbacklayout/d/a;)F

    move-result v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_6

    :cond_5
    neg-int p2, v0

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 11
    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->g(Lcom/github/anzewei/parallaxbacklayout/d/a;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    move v2, p2

    .line 12
    :cond_7
    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_a

    .line 13
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->b(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    cmpl-float p2, p3, v4

    if-ltz p2, :cond_a

    if-nez v1, :cond_9

    .line 14
    iget p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->c(Lcom/github/anzewei/parallaxbacklayout/d/a;)F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_a

    :cond_9
    move p2, p1

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    .line 15
    :goto_3
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->e(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 16
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->b(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    goto :goto_4

    :cond_b
    move v3, v1

    :goto_4
    cmpg-float p2, p3, v4

    if-gtz p2, :cond_d

    if-nez v3, :cond_c

    .line 17
    iget p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->a:F

    iget-object p3, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p3}, Lcom/github/anzewei/parallaxbacklayout/d/a;->c(Lcom/github/anzewei/parallaxbacklayout/d/a;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_d

    :cond_c
    neg-int p1, p1

    iget-object p2, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    .line 18
    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemTop()I

    move-result p2

    add-int v5, p1, p2

    :cond_d
    move p2, v5

    .line 19
    :cond_e
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->d(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/b;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/github/anzewei/parallaxbacklayout/b;->I(II)Z

    .line 20
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public m(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->d(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/b;

    move-result-object p1

    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/github/anzewei/parallaxbacklayout/b;->x(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->f(Lcom/github/anzewei/parallaxbacklayout/d/a;I)I

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->a(Lcom/github/anzewei/parallaxbacklayout/d/a;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->d(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v3, p2}, Lcom/github/anzewei/parallaxbacklayout/b;->d(II)Z

    move-result p2

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/github/anzewei/parallaxbacklayout/d/a$d;->b:Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-static {v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->d(Lcom/github/anzewei/parallaxbacklayout/d/a;)Lcom/github/anzewei/parallaxbacklayout/b;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/github/anzewei/parallaxbacklayout/b;->d(II)Z

    move-result p2

    :goto_1
    xor-int/lit8 v0, p2, 0x1

    :cond_4
    and-int/2addr p1, v0

    return p1
.end method
