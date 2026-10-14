.class final Lcn/mucang/android/jky/usbcamera/detectside/o$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/detectside/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->b()Lcn/mucang/android/jky/usbcamera/detectside/o$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jky/usbcamera/detectside/o$b;

    .line 6
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->b()Lcn/mucang/android/jky/usbcamera/detectside/o$c;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jky/usbcamera/detectside/o$b;->c:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcn/mucang/android/jky/usbcamera/detectside/o$b;->b:Ljava/util/List;

    iget-wide v3, p1, Lcn/mucang/android/jky/usbcamera/detectside/o$b;->a:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/mucang/android/jky/usbcamera/detectside/o$c;->a(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    :cond_1
    return-void
.end method
