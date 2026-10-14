.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 4
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->a:I

    sub-int v2, v0, v2

    .line 5
    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->b:I

    sub-int v3, p2, v3

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->a:I

    .line 7
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->b:I

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez p2, :cond_1

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_2

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 14
    :cond_2
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p2, :cond_3

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 16
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_4

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "debugXY"

    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->a:I

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;->b:I

    :goto_2
    return v1
.end method
