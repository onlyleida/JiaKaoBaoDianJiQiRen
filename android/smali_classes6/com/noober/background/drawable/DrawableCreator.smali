.class public Lcom/noober/background/drawable/DrawableCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noober/background/drawable/DrawableCreator$Builder;,
        Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;,
        Lcom/noober/background/drawable/DrawableCreator$Gradient;,
        Lcom/noober/background/drawable/DrawableCreator$Shape;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v1, p1, Landroid/widget/TextView;

    const/16 v2, 0x10

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    .line 2
    sget-object v4, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v4, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v4, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3, p0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    sget-object v4, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v4, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3, v3, p0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 11
    :cond_2
    sget-object v4, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v4, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p0, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3, v3, v3, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-lt v0, v2, :cond_4

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 16
    :cond_5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 17
    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v0, :cond_6

    .line 18
    aput-object v3, p0, v1

    goto :goto_0

    .line 19
    :cond_6
    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v0, :cond_7

    .line 20
    aput-object v3, p0, v5

    goto :goto_0

    .line 21
    :cond_7
    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v0, :cond_8

    .line 22
    aput-object v3, p0, v4

    goto :goto_0

    .line 23
    :cond_8
    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v0, :cond_9

    .line 24
    aput-object v3, p0, v2

    .line 25
    :cond_9
    :goto_0
    aget-object p2, p0, v1

    aget-object v0, p0, v5

    aget-object v1, p0, v4

    aget-object p0, p0, v2

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    if-lt v0, v2, :cond_b

    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 27
    :cond_b
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
