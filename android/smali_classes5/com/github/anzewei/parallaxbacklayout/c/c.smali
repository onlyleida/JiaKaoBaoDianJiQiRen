.class public Lcom/github/anzewei/parallaxbacklayout/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/anzewei/parallaxbacklayout/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/github/anzewei/parallaxbacklayout/d/a;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getEdgeFlag()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemLeft()I

    move-result v3

    .line 5
    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemTop()I

    move-result p2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p2, v1

    div-int/2addr p2, v5

    int-to-float v0, p2

    .line 7
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/2addr p2, v1

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, v6, v6, p2, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    if-ne v0, v7, :cond_1

    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v5

    int-to-float v1, v0

    .line 10
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, v0

    add-int/2addr p3, p2

    invoke-virtual {p1, v6, v6, v1, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p2, v3

    div-int/2addr p2, v5

    int-to-float v0, p2

    .line 13
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/2addr p2, v3

    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, p2, v6, v1, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 15
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/2addr v0, v5

    int-to-float v1, v0

    .line 16
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/2addr v0, p2

    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p1, v6, v0, p2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    :goto_0
    return-void
.end method
