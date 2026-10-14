.class public Lcom/github/anzewei/parallaxbacklayout/c/a;
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
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getEdgeFlag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/d/a;->getSystemTop()I

    move-result p2

    add-int/2addr p3, p2

    invoke-virtual {p1, v1, v1, v0, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1, v1, v0, p3, p2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    :goto_0
    return-void
.end method
