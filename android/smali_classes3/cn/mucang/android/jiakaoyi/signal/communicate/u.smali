.class public final Lcn/mucang/android/jiakaoyi/signal/communicate/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/UsbDeviceManager;",
        "",
        "()V",
        "ACTION_USB_PERMISSION",
        "",
        "listener",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/UsbDeviceManager$OnDeviceConnectListener;",
        "serial",
        "Lcom/felhr/usbserial/UsbSerialDevice;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "usbReceiver",
        "Landroid/content/BroadcastReceiver;",
        "connect",
        "",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "open",
        "context",
        "Landroid/content/Context;",
        "requestPermission",
        "OnDeviceConnectListener",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/communicate/u;

.field private static b:Landroid/hardware/usb/UsbManager;

.field private static c:Lcom/felhr/usbserial/j;

.field private static d:Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;

.field private static final e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/u;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/u;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/u;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/u$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/u$b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/signal/communicate/u;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->b(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method private final b(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->b:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {p1, v0}, Lcom/felhr/usbserial/j;->e(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lcom/felhr/usbserial/j;

    move-result-object p1

    sput-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->c:Lcom/felhr/usbserial/j;

    if-nez p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/felhr/usbserial/j;->n()Z

    .line 4
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->c:Lcom/felhr/usbserial/j;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x1c200

    invoke-virtual {p1, v0}, Lcom/felhr/usbserial/j;->k(I)V

    .line 5
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->c:Lcom/felhr/usbserial/j;

    if-nez p1, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;->a(Lcom/felhr/usbserial/j;)V

    :goto_3
    return-void
.end method

.method public static final c(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;

    const-string p1, "usb"

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->b:Landroid/hardware/usb/UsbManager;

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 4
    invoke-static {v1}, Lcom/felhr/usbserial/j;->j(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/u;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->b(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.example.USB_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v1, p0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :cond_4
    :goto_1
    return-void
.end method
