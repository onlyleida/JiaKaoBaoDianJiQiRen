.class public Lcn/mucang/android/jky/usbcamera/adjust/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jky/usbcamera/adjust/g$b;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

.field private b:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

.field private c:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

.field private d:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

.field private e:Landroid/view/View;

.field private final f:I

.field private final g:I

.field private final h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->h:Landroid/app/Activity;

    .line 3
    sget v0, Lcn/mucang/android/jky/usbcamera/R$id;->video_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->e:Landroid/view/View;

    .line 4
    new-instance v8, Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    sget v2, Lcn/mucang/android/jky/usbcamera/R$id;->point1:I

    sget v3, Lcn/mucang/android/jky/usbcamera/R$id;->up1:I

    sget v4, Lcn/mucang/android/jky/usbcamera/R$id;->down1:I

    sget v5, Lcn/mucang/android/jky/usbcamera/R$id;->left1:I

    sget v6, Lcn/mucang/android/jky/usbcamera/R$id;->right1:I

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;-><init>(Landroid/app/Activity;IIIIILcn/mucang/android/jky/usbcamera/adjust/g$a;)V

    iput-object v8, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->a:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    .line 5
    new-instance v8, Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    sget v2, Lcn/mucang/android/jky/usbcamera/R$id;->point2:I

    sget v3, Lcn/mucang/android/jky/usbcamera/R$id;->up2:I

    sget v4, Lcn/mucang/android/jky/usbcamera/R$id;->down2:I

    sget v5, Lcn/mucang/android/jky/usbcamera/R$id;->left2:I

    sget v6, Lcn/mucang/android/jky/usbcamera/R$id;->right2:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;-><init>(Landroid/app/Activity;IIIIILcn/mucang/android/jky/usbcamera/adjust/g$a;)V

    iput-object v8, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->b:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    .line 6
    new-instance v8, Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    sget v2, Lcn/mucang/android/jky/usbcamera/R$id;->point3:I

    sget v3, Lcn/mucang/android/jky/usbcamera/R$id;->up3:I

    sget v4, Lcn/mucang/android/jky/usbcamera/R$id;->down3:I

    sget v5, Lcn/mucang/android/jky/usbcamera/R$id;->left3:I

    sget v6, Lcn/mucang/android/jky/usbcamera/R$id;->right3:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;-><init>(Landroid/app/Activity;IIIIILcn/mucang/android/jky/usbcamera/adjust/g$a;)V

    iput-object v8, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->c:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    .line 7
    new-instance v8, Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    sget v2, Lcn/mucang/android/jky/usbcamera/R$id;->point4:I

    sget v3, Lcn/mucang/android/jky/usbcamera/R$id;->up4:I

    sget v4, Lcn/mucang/android/jky/usbcamera/R$id;->down4:I

    sget v5, Lcn/mucang/android/jky/usbcamera/R$id;->left4:I

    sget v6, Lcn/mucang/android/jky/usbcamera/R$id;->right4:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;-><init>(Landroid/app/Activity;IIIIILcn/mucang/android/jky/usbcamera/adjust/g$a;)V

    iput-object v8, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->d:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->a:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v1}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->a:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v2}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->a:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b(II)V

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->b:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v2, v0, v3}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b(II)V

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->c:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v2, v0, v1}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b(II)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->d:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v0, v3, v1}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->b(II)V

    .line 14
    iput p2, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->f:I

    .line 15
    iput p3, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->g:I

    .line 16
    sget v0, Lcn/mucang/android/jky/usbcamera/R$id;->toAdjust:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jky/usbcamera/adjust/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jky/usbcamera/adjust/f;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/adjust/g;->c()V

    return-void
.end method

.method private c()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->a:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a()Lorg/opencv/core/Point;

    move-result-object v1

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->b:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a()Lorg/opencv/core/Point;

    move-result-object v2

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->c:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a()Lorg/opencv/core/Point;

    move-result-object v3

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->d:Lcn/mucang/android/jky/usbcamera/adjust/g$b;

    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/adjust/g$b;->a()Lorg/opencv/core/Point;

    move-result-object v4

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->e:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->f:I

    iget v8, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->g:I

    .line 3
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jky/usbcamera/detectside/p;->h(Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Point;IIII)V

    const-string v0, "\u6821\u51c6\u5b8c\u6210"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/g;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/g;->a(Landroid/view/View;)V

    return-void
.end method
