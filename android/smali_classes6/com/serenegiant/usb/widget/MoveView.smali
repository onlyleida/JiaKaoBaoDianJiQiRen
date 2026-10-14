.class public Lcom/serenegiant/usb/widget/MoveView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private hasInit:Z

.field private lastX:F

.field private lastY:F

.field private marginBottom:F

.field private marginLeft:F

.field private marginRight:F

.field private marginTop:F

.field private pointId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    .line 3
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/MoveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    .line 6
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/MoveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    .line 9
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/MoveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    .line 12
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/MoveView;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public move(FF)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/MoveView;->updateMargin()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    .line 5
    :cond_0
    iget v0, p0, Lcom/serenegiant/usb/widget/MoveView;->marginLeft:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/usb/widget/MoveView;->marginLeft:F

    .line 6
    iget v0, p0, Lcom/serenegiant/usb/widget/MoveView;->marginRight:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/usb/widget/MoveView;->marginRight:F

    .line 7
    iget p1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginTop:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginTop:F

    .line 8
    iget p1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginBottom:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginBottom:F

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget p2, p0, Lcom/serenegiant/usb/widget/MoveView;->marginTop:F

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    iget p2, p0, Lcom/serenegiant/usb/widget/MoveView;->marginBottom:F

    float-to-double v0, p2

    add-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    iget p2, p0, Lcom/serenegiant/usb/widget/MoveView;->marginLeft:F

    float-to-double v0, p2

    add-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    iget p2, p0, Lcom/serenegiant/usb/widget/MoveView;->marginRight:F

    float-to-double v0, p2

    add-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public moveDown()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/widget/MoveView;->move(FF)V

    return-void
.end method

.method public moveLeft()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/widget/MoveView;->move(FF)V

    return-void
.end method

.method public moveRight()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/widget/MoveView;->move(FF)V

    return-void
.end method

.method public moveUp()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/widget/MoveView;->move(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " , y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " , action index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , pointId"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/serenegiant/usb/widget/MoveView;->pointId:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TAG"

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p1, p0, Lcom/serenegiant/usb/widget/MoveView;->lastX:F

    sub-float p1, v0, p1

    .line 8
    iget v3, p0, Lcom/serenegiant/usb/widget/MoveView;->lastY:F

    sub-float v3, v2, v3

    .line 9
    iput v0, p0, Lcom/serenegiant/usb/widget/MoveView;->lastX:F

    .line 10
    iput v2, p0, Lcom/serenegiant/usb/widget/MoveView;->lastY:F

    .line 11
    invoke-virtual {p0, p1, v3}, Lcom/serenegiant/usb/widget/MoveView;->move(FF)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/serenegiant/usb/widget/MoveView;->pointId:I

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/widget/MoveView;->lastX:F

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/usb/widget/MoveView;->lastY:F

    .line 15
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/MoveView;->updateMargin()V

    :goto_0
    return v1
.end method

.method public updateMargin()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    iput v1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginLeft:F

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v1, v1

    iput v1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginRight:F

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    iput v1, p0, Lcom/serenegiant/usb/widget/MoveView;->marginTop:F

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iput v0, p0, Lcom/serenegiant/usb/widget/MoveView;->marginBottom:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/MoveView;->hasInit:Z

    return-void
.end method
