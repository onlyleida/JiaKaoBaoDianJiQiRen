.class public Lcn/mucang/android/ui/framework/widget/tab/animation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/animation/d;


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:I

.field private c:Lcn/mucang/android/ui/framework/widget/tab/animation/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/ui/framework/widget/tab/animation/e$a;-><init>(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x14
        0x0
    .end array-data
.end method

.method static synthetic d(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->a:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/ui/framework/widget/tab/animation/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->b:I

    return p1
.end method

.method static synthetic f(Lcn/mucang/android/ui/framework/widget/tab/animation/e;)Lcn/mucang/android/ui/framework/widget/tab/animation/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->c:Lcn/mucang/android/ui/framework/widget/tab/animation/c;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public b(Lcn/mucang/android/ui/framework/widget/tab/animation/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->c:Lcn/mucang/android/ui/framework/widget/tab/animation/c;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;->b:I

    return v0
.end method
