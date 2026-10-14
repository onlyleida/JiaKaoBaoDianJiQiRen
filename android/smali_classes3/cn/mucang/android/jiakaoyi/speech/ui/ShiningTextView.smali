.class public final Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0014J(\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0010H\u0014J\u000e\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R4\u0010\u0019\u001a&\u0012\u000c\u0012\n \u001b*\u0004\u0018\u00010\u00170\u0017 \u001b*\u0012\u0012\u000e\u0008\u0001\u0012\n \u001b*\u0004\u0018\u00010\u00170\u00170\u001a0\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001c\u00a8\u0006,"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "darkGradient",
        "Landroid/graphics/LinearGradient;",
        "distance",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "lightGradient",
        "mBaseline",
        "mHeight",
        "",
        "mMatrix",
        "Landroid/graphics/Matrix;",
        "mWidth",
        "paint",
        "Landroid/graphics/Paint;",
        "text",
        "",
        "tipIndex",
        "tipList",
        "",
        "kotlin.jvm.PlatformType",
        "[Ljava/lang/String;",
        "dark",
        "",
        "light",
        "nextTip",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "setShow",
        "show",
        "",
        "speech_release"
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
.field private final a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Matrix;

.field private j:Landroid/graphics/LinearGradient;

.field private k:Landroid/graphics/LinearGradient;

.field private l:Lkotlinx/coroutines/t1;


# direct methods
.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->j:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->i:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->e:I

    return p0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic e(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->h()V

    return-void
.end method

.method private final f()V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;-><init>(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->l:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->i(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final h()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->c:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/ui/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/speech/ui/b;-><init>(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->e:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->k:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->f()V

    :cond_2
    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->b:I

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->a:[Ljava/lang/String;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    const-string v1, "tipList[tipIndex.rem(tipList.size)]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->c:Ljava/lang/String;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->g:F

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->h:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->d:I

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->e:I

    .line 4
    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    iget p2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->f:F

    add-float/2addr p1, p2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->g:F

    return-void
.end method

.method public final setShow(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->f()V

    const/4 p1, 0x0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->l:Lkotlinx/coroutines/t1;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    const/16 p1, 0x8

    .line 5
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
