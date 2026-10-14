.class Lcom/blankj/utilcode/util/k$f;
.super Lcom/blankj/utilcode/util/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field private static final e:Lcom/blankj/utilcode/util/Utils$b;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/k$f$a;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/k$f$a;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/k$f;->e:Lcom/blankj/utilcode/util/Utils$b;

    return-void
.end method

.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/k$b;-><init>(Landroid/widget/Toast;)V

    .line 2
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/k$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/k$f;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/k$f;->b:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_2

    const-string v1, "window"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/blankj/utilcode/util/k$f;->c:Landroid/view/WindowManager;

    .line 6
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->g()Landroid/content/Context;

    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/app/Activity;

    const-string v2, "ToastUtils"

    if-nez v1, :cond_3

    const-string v0, "Couldn\'t get top Activity."

    .line 9
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 12
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/blankj/utilcode/util/k$f;->c:Landroid/view/WindowManager;

    .line 13
    iget-object v1, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x63

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->c()Lcom/blankj/utilcode/util/Utils$a;

    move-result-object v1

    sget-object v2, Lcom/blankj/utilcode/util/k$f;->e:Lcom/blankj/utilcode/util/Utils$b;

    invoke-virtual {v1, v0, v2}, Lcom/blankj/utilcode/util/Utils$a;->a(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$b;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 16
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v1, "ToastWithoutNotification"

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 21
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 23
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v1, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_5

    .line 24
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_5
    const/16 v2, 0x70

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 25
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 27
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 29
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->c:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    .line 31
    iget-object v1, p0, Lcom/blankj/utilcode/util/k$f;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/blankj/utilcode/util/k$f;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 32
    :cond_7
    :goto_1
    new-instance v0, Lcom/blankj/utilcode/util/k$f$c;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/k$f$c;-><init>(Lcom/blankj/utilcode/util/k$f;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    .line 33
    invoke-virtual {v1}, Landroid/widget/Toast;->getDuration()I

    move-result v1

    if-nez v1, :cond_8

    const-wide/16 v1, 0x7d0

    goto :goto_2

    :cond_8
    const-wide/16 v1, 0xdac

    .line 34
    :goto_2
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/Utils;->l(Ljava/lang/Runnable;J)V

    return-void

    .line 35
    :cond_9
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is useless"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f;->c:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/blankj/utilcode/util/k$f;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/blankj/utilcode/util/k$f;->b:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lcom/blankj/utilcode/util/k$f;->c:Landroid/view/WindowManager;

    .line 5
    iput-object v0, p0, Lcom/blankj/utilcode/util/k$b;->a:Landroid/widget/Toast;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/k$f$b;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/k$f$b;-><init>(Lcom/blankj/utilcode/util/k$f;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/Utils;->l(Ljava/lang/Runnable;J)V

    return-void
.end method
