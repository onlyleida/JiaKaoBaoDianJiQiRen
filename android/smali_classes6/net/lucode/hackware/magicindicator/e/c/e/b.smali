.class public Lnet/lucode/hackware/magicindicator/e/c/e/b;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/e/c/b/b;


# instance fields
.field protected mNormalColor:I

.field protected mSelectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/e/b;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x11

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    invoke-static {p1, v0, v1}, Lnet/lucode/hackware/magicindicator/e/b;->a(Landroid/content/Context;D)I

    move-result p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 5
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public getContentBottom()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getContentLeft()I
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method public getContentRight()I
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public getContentTop()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNormalColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mNormalColor:I

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mSelectedColor:I

    return v0
.end method

.method public onDeselected(II)V
    .locals 0

    .line 1
    iget p1, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mNormalColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 0

    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 0

    return-void
.end method

.method public onSelected(II)V
    .locals 0

    .line 1
    iget p1, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mSelectedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mNormalColor:I

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mSelectedColor:I

    return-void
.end method
