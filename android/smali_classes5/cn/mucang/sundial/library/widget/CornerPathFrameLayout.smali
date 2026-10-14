.class public final Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017B\u001b\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u0016\u0010\u001aB#\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u0016\u0010\u001dB+\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u0016\u0010\u001fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lkotlin/v;",
        "drawCornerPath",
        "(Landroid/graphics/Canvas;)V",
        "onDraw",
        "Landroid/graphics/Paint;",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/Path;",
        "",
        "strokeWidth",
        "F",
        "cornerDistance",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final cornerDistance:F

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    const/high16 p1, 0x42100000    # 36.0f

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    return-void
.end method

.method private final drawCornerPath(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    const-string v1, "#008AFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float v4, v3, v2

    sub-float/2addr v1, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->strokeWidth:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->cornerDistance:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/widget/CornerPathFrameLayout;->drawCornerPath(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
