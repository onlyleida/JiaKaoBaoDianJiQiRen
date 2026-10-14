.class Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/framework/widget/tab/animation/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/framework/widget/tab/animation/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;->a:Lcn/mucang/android/ui/framework/widget/tab/animation/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;->a:Lcn/mucang/android/ui/framework/widget/tab/animation/e;

    invoke-static {p1}, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->d(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;->a:Lcn/mucang/android/ui/framework/widget/tab/animation/e;

    int-to-float p1, p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p1

    invoke-static {v0, p1}, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->e(Lcn/mucang/android/ui/framework/widget/tab/animation/e;I)I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;->a:Lcn/mucang/android/ui/framework/widget/tab/animation/e;

    invoke-static {p1}, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->f(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)Lcn/mucang/android/ui/framework/widget/tab/animation/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;->a:Lcn/mucang/android/ui/framework/widget/tab/animation/e;

    invoke-static {p1}, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->f(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)Lcn/mucang/android/ui/framework/widget/tab/animation/c;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/ui/framework/widget/tab/animation/c;->a()V

    :cond_0
    return-void
.end method
