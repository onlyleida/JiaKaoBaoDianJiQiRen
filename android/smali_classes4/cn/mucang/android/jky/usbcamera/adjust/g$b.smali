.class Lcn/mucang/android/jky/usbcamera/adjust/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/adjust/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/serenegiant/usb/widget/MoveView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/app/Activity;IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/serenegiant/usb/widget/MoveView;

    iput-object p2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    .line 4
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p1, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->d:Landroid/view/View;

    .line 7
    invoke-virtual {p1, p6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->e:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;IIIIILcn/mucang/android/jky/usbcamera/adjust/g$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;-><init>(Landroid/app/Activity;IIIII)V

    return-void
.end method


# virtual methods
.method public a()Lorg/opencv/core/Point;
    .locals 5

    .line 1
    new-instance v0, Lorg/opencv/core/Point;

    invoke-direct {v0}, Lorg/opencv/core/Point;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/opencv/core/Point;->x:D

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/opencv/core/Point;->y:D

    return-object v0
.end method

.method public b(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/usb/widget/MoveView;->move(FF)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/MoveView;->moveUp()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->c:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/MoveView;->moveDown()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->d:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/MoveView;->moveLeft()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->e:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a:Lcom/serenegiant/usb/widget/MoveView;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/MoveView;->moveRight()V

    :cond_3
    :goto_0
    return-void
.end method
