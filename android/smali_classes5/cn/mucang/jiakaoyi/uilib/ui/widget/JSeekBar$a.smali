.class final Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$DragController;",
        "",
        "(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)V",
        "downX",
        "",
        "dragging",
        "",
        "handleRect",
        "Landroid/graphics/RectF;",
        "hitOffset",
        "",
        "initProgressX",
        "isHit",
        "checkHit",
        "x",
        "y",
        "moveProgress",
        "",
        "disX",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "setHitRect",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private final f:Landroid/graphics/RectF;

.field final synthetic g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$dimen;->dp_150:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->a:I

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->f:Landroid/graphics/RectF;

    return-void
.end method

.method private final a(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private final b(F)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->e(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->e(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->b(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->f(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->e(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)F

    move-result v0

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->e(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)F

    move-result v0

    div-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->b(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->b()I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->f(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 10
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->b(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->b()I

    move-result v1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->b(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->a()I

    move-result p1

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->b(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$c;->b()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-double v4, p1

    mul-double v2, v2, v4

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/y/a;->a(D)I

    move-result p1

    add-int/2addr v1, p1

    .line 11
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->f(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->d:Z

    .line 3
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->e:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->a(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->c(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;->a(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->e:Z

    if-nez v0, :cond_3

    .line 6
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->e:Z

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->d:Z

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->c:F

    add-float/2addr p1, v0

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->b(F)V

    goto :goto_0

    .line 10
    :cond_4
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->d:Z

    .line 11
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->e:Z

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->a(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->c(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$b;->a(I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->b:F

    .line 14
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->c:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->a(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->d:Z

    :cond_7
    :goto_0
    return v1
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->f:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->a:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->a:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 3
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->a:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->g:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;->d(Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar$a;->a:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
