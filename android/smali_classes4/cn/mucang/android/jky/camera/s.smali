.class public final synthetic Lcn/mucang/android/jky/camera/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/camera/UsbCameraThread;

.field public final synthetic b:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/camera/UsbCameraThread;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/s;->a:Lcn/mucang/android/jky/camera/UsbCameraThread;

    iput-object p2, p0, Lcn/mucang/android/jky/camera/s;->b:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    iput-boolean p3, p0, Lcn/mucang/android/jky/camera/s;->c:Z

    iput-object p4, p0, Lcn/mucang/android/jky/camera/s;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcn/mucang/android/jky/camera/s;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jky/camera/s;->a:Lcn/mucang/android/jky/camera/UsbCameraThread;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/s;->b:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    iget-boolean v2, p0, Lcn/mucang/android/jky/camera/s;->c:Z

    iget-object v3, p0, Lcn/mucang/android/jky/camera/s;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Lcn/mucang/android/jky/camera/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jky/camera/UsbCameraThread;->a(Lcn/mucang/android/jky/camera/UsbCameraThread;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
