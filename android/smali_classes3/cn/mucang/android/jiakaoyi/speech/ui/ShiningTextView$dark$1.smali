.class final Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.speech.ui.ShiningTextView$dark$1"
    f = "ShiningTextView.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->b(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v1, -0x3d380000    # -100.0f

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->c(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->a(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->b(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 4
    :goto_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->d(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->a(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)Landroid/graphics/LinearGradient;

    move-result-object v1

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
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;->e(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;-><init>(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const-wide/16 v3, 0x7d0

    .line 4
    iput v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView$dark$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/ui/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/ui/a;-><init>(Lcn/mucang/android/jiakaoyi/speech/ui/ShiningTextView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
