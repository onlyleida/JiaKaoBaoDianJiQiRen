.class public final Lcn/mucang/android/jky/camera/UsbCameraManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;
.implements Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;,
        Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0012\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0002UVB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010(\u001a\u00020)H\u0003J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001aH\u0003J\u0008\u0010,\u001a\u00020\u001fH\u0003J\u0008\u0010-\u001a\u00020\u001fH\u0003J\u001a\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0008\u0008\u0002\u00100\u001a\u00020\u001fH\u0003J\u0018\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000203H\u0002J\u0012\u00105\u001a\u0004\u0018\u0001032\u0006\u00102\u001a\u000203H\u0002J\u0012\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u0010+\u001a\u00020\u001aH\u0003J\"\u00107\u001a\u001e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0006`\u0008J\u000e\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:J(\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:2\u0006\u0010&\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0007J\u0010\u0010;\u001a\u00020)2\u0006\u00109\u001a\u00020:H\u0003J\u0010\u0010<\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J\u0010\u0010=\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J \u0010>\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u001fH\u0016J\u0010\u0010A\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0006H\u0016J\u0018\u0010B\u001a\u00020)2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000fH\u0016J\u001a\u0010C\u001a\u00020)2\u0008\u0010/\u001a\u0004\u0018\u00010\u00062\u0006\u0010D\u001a\u00020EH\u0016J \u0010F\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u000f2\u0006\u0010G\u001a\u000203H\u0003J\u0018\u0010H\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u001cH\u0007J\u0008\u0010J\u001a\u00020)H\u0007J\u000e\u0010K\u001a\u00020)2\u0006\u0010L\u001a\u00020\u001fJ\"\u0010M\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0008\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010P\u001a\u00020\u0014H\u0007J\u0010\u0010Q\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001aH\u0007J\u0018\u0010Q\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u0014H\u0007J\u0006\u0010R\u001a\u00020)J\u0006\u0010S\u001a\u00020)J\u0018\u0010T\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u001cH\u0007R-\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00140\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001e\u0010&\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0017\u00a8\u0006W"
    }
    d2 = {
        "Lcn/mucang/android/jky/camera/UsbCameraManager;",
        "Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;",
        "Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;",
        "()V",
        "cameraMap",
        "Ljava/util/LinkedHashMap;",
        "Landroid/hardware/usb/UsbDevice;",
        "Lcn/mucang/android/jky/camera/UsbCameraThread;",
        "Lkotlin/collections/LinkedHashMap;",
        "getCameraMap",
        "()Ljava/util/LinkedHashMap;",
        "closeTask",
        "Ljava/lang/Runnable;",
        "deviceBlocks",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;",
        "es",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "<set-?>",
        "",
        "height",
        "getHeight",
        "()I",
        "invalidUsbCount",
        "listeners",
        "Lcn/mucang/android/jky/camera/CameraIntent;",
        "",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "mode",
        "previewInOpen",
        "",
        "usbMonitor",
        "Lcom/serenegiant/usb/USBMonitor;",
        "usbSerialList",
        "Lcn/mucang/android/jky/camera/UsbSerial;",
        "getUsbSerialList",
        "()Ljava/util/List;",
        "width",
        "getWidth",
        "checkCameraClose",
        "",
        "checkCameraOpen",
        "intent",
        "checkSameBind",
        "checkSameBindSecond",
        "closeCamera",
        "device",
        "detached",
        "containSerial",
        "deviceName",
        "",
        "serial",
        "findSerial",
        "getCameraThread",
        "getConnectedPortList",
        "init",
        "context",
        "Landroid/content/Context;",
        "initUsbSerialBind",
        "onAttach",
        "onCancel",
        "onConnect",
        "ctrlBlock",
        "createNew",
        "onDettach",
        "onDisconnect",
        "onPreviewFrame",
        "data",
        "",
        "openSync",
        "fromDesc",
        "registerCameraListener",
        "listener",
        "release",
        "setPreviewInOpen",
        "value",
        "startPreviewCamera",
        "surface",
        "",
        "previewId",
        "stopPreviewCamera",
        "tryCloseNoUseCamera",
        "tryOpenAllDevice",
        "unregisterCameraListener",
        "UsbCameraListener",
        "UsbThread",
        "usbcamera_release"
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
.field public static final INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

.field private static final cameraMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcn/mucang/android/jky/camera/UsbCameraThread;",
            ">;"
        }
    .end annotation
.end field

.field private static closeTask:Ljava/lang/Runnable;

.field private static final deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final es:Ljava/util/concurrent/ExecutorService;

.field private static height:I

.field private static final invalidUsbCount:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final listeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcn/mucang/android/jky/camera/CameraIntent;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mode:I

.field private static previewInOpen:Z

.field private static usbMonitor:Lcom/serenegiant/usb/USBMonitor;

.field private static final usbSerialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/camera/UsbSerial;",
            ">;"
        }
    .end annotation
.end field

.field private static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    const/16 v0, 0x500

    .line 3
    sput v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->width:I

    const/16 v0, 0x2d0

    .line 4
    sput v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->height:I

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->invalidUsbCount:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->previewInOpen:Z

    .line 10
    sget-object v0, Lcn/mucang/android/jky/camera/j;->a:Lcn/mucang/android/jky/camera/j;

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeTask:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera$lambda-20$lambda-19(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;)V

    return-void
.end method

.method public static final synthetic access$getCameraThread(Lcn/mucang/android/jky/camera/UsbCameraManager;Lcn/mucang/android/jky/camera/CameraIntent;)Lcn/mucang/android/jky/camera/UsbCameraThread;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraThread(Lcn/mucang/android/jky/camera/CameraIntent;)Lcn/mucang/android/jky/camera/UsbCameraThread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListeners$p()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static synthetic b(Lcn/mucang/android/jky/camera/CameraIntent;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera$lambda-21(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener$lambda-17(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method private final checkCameraClose()V
    .locals 10
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cameraMap.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 3
    sget-object v4, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    .line 4
    sget-object v5, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v5}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v5

    .line 5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 6
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "it.deviceName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    sget-object v8, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u5173\u95ed\u6ca1\u7528\u7684\u6444\u50cf\u5934"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeCamera$default(Lcn/mucang/android/jky/camera/UsbCameraManager;Landroid/hardware/usb/UsbDevice;ZILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const-wide/16 v0, 0x3e8

    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4
    return-void
.end method

.method private final checkCameraOpen(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jky/camera/g;

    invoke-direct {v1, p1}, Lcn/mucang/android/jky/camera/g;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final checkCameraOpen$lambda-24(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 8

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkSameBind()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkSameBindSecond()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entry.key.deviceName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Lcn/mucang/android/jky/camera/UsbCameraManager;->invalidUsbCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 10
    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v5, v4

    :cond_3
    :goto_1
    const-string v4, "invalidUsbCount.getOrPut(entry.key) { 0 }"

    .line 11
    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    const-string v7, "open for register"

    invoke-direct {v2, v4, v5, v7}, Lcn/mucang/android/jky/camera/UsbCameraManager;->openSync(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private final checkSameBind()Z
    .locals 9
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByDriver()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    move-object v6, v5

    check-cast v6, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 8
    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 14
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 15
    sget-object v6, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getUsbSerialList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v8}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v8

    if-ne v8, v5, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    check-cast v7, Lcn/mucang/android/jky/camera/UsbSerial;

    if-eqz v7, :cond_3

    .line 16
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 18
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 19
    :cond_9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jky/camera/UsbSerial;

    .line 20
    invoke-virtual {v5}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_b

    .line 21
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 23
    invoke-virtual {v4}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e1a\u52a1\u7ed1\u5b9a\u540c\u4e00\u4e2a\u6444\u50cf\u5934\uff0c\u9a71\u52a8\u4e0d\u5b58\u5728\uff0c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u91cd\u65b0\u7ed1\u5b9a\uff1a\nold:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nnew:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    return v3
.end method

.method private final checkSameBindSecond()Z
    .locals 13
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 6
    invoke-virtual {v4}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_f

    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 12
    sget-object v6, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v6, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 16
    invoke-static {v7, v8}, Lkotlin/collections/s;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 18
    sget-object v6, Lcn/mucang/android/jky/camera/UsbCameraManager;->invalidUsbCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 19
    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 21
    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v8, v7

    :cond_5
    :goto_3
    const-string v7, "invalidUsbCount.getOrPut(entry.key) { 0 }"

    .line 22
    invoke-static {v8, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 23
    sget-object v7, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    const-string v10, "open for checkSameBindSecond"

    invoke-direct {v7, v8, v9, v10}, Lcn/mucang/android/jky/camera/UsbCameraManager;->openSync(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 24
    invoke-virtual {v7}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getUsbSerialList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v6

    sget-object v7, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "entry.key.deviceName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_6

    move-object v1, v2

    :cond_9
    check-cast v1, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_7

    .line 25
    :cond_b
    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 27
    invoke-virtual {v2, v0}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    :goto_7
    return v4

    .line 28
    :cond_d
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 29
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1d

    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v5, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    .line 32
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    .line 33
    :cond_11
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 34
    sget-object v7, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v7}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getUsbSerialList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v9}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v9

    sget-object v10, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "s.key.deviceName"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_15

    const/4 v9, 0x1

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_13

    goto :goto_a

    :cond_16
    move-object v8, v1

    :goto_a
    check-cast v8, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v8, :cond_17

    move-object v6, v1

    goto :goto_b

    :cond_17
    invoke-virtual {v8}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v6

    .line 35
    :goto_b
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v0, 0x1

    :goto_c
    xor-int/2addr v0, v4

    if-eqz v0, :cond_1d

    .line 36
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 37
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v6

    sget-object v7, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    sget-object v8, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v8}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    const-string v9, "cameraMap.keys"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cameraMap.keys.toList()[0].deviceName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1a

    const/4 v6, 0x1

    goto :goto_e

    :cond_1a
    :goto_d
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_18

    move-object v1, v5

    :cond_1b
    check-cast v1, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v1, :cond_1c

    goto :goto_10

    .line 38
    :cond_1c
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 40
    invoke-virtual {v5}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e1a\u52a1\u7ed1\u5b9a\u540c\u4e00\u4e2a\u6444\u50cf\u5934\uff0c\u6444\u50cf\u5934\u4e0d\u53ef\u7528\uff0c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u91cd\u65b0\u7ed1\u5b9a\uff1a\nold:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nnew:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_f

    .line 43
    :cond_1d
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    return v3
.end method

.method private final closeCamera(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 2
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usb\u79fb\u9664:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usb\u65ad\u5f00\u8fde\u63a5:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jky/camera/UsbCameraThread;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->release()V

    .line 4
    :goto_1
    new-instance v0, Lcn/mucang/android/jky/camera/n;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jky/camera/n;-><init>(Landroid/hardware/usb/UsbDevice;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic closeCamera$default(Lcn/mucang/android/jky/camera/UsbCameraManager;Landroid/hardware/usb/UsbDevice;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeCamera(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method private static final closeCamera$lambda-59(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 5

    const-string v0, "$device"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 3
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device.deviceName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v2}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;->onDetached()V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v2}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;->onDisconnect()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static final closeTask$lambda-1()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jky/camera/d;->a:Lcn/mucang/android/jky/camera/d;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final closeTask$lambda-1$lambda-0()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkCameraClose()V

    return-void
.end method

.method private final containSerial(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v3}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeTask$lambda-1$lambda-0()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->release$lambda-11()V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->init$lambda-2(Landroid/content/Context;)V

    return-void
.end method

.method private final findSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v3}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    check-cast v1, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method public static synthetic g(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkCameraOpen$lambda-24(Lcn/mucang/android/jky/camera/CameraIntent;)V

    return-void
.end method

.method private final getCameraThread(Lcn/mucang/android/jky/camera/CameraIntent;)Lcn/mucang/android/jky/camera/UsbCameraThread;
    .locals 5
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.key.deviceName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jky/camera/UsbCameraThread;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic h(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener$lambda-17$lambda-16(Lcn/mucang/android/jky/camera/CameraIntent;)V

    return-void
.end method

.method public static synthetic i(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->onAttach$lambda-49(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;III)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "usb camera manager init"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sput p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->width:I

    .line 5
    sput p2, Lcn/mucang/android/jky/camera/UsbCameraManager;->height:I

    .line 6
    sput p3, Lcn/mucang/android/jky/camera/UsbCameraManager;->mode:I

    .line 7
    sget-object p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcn/mucang/android/jky/camera/f;

    invoke-direct {p2, p0}, Lcn/mucang/android/jky/camera/f;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final init$lambda-2(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->initUsbSerialBind(Landroid/content/Context;)V

    return-void
.end method

.method private final initUsbSerialBind(Landroid/content/Context;)V
    .locals 15
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbUtils;->getAllSerial()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "\u83b7\u53d6\u4e0d\u5230\u7cfb\u7edfusb\u76ee\u5f55,\u81ea\u5df1\u521b\u5efa\u4e00\u4e2aserial list"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    .line 6
    new-instance v4, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "diy-serial"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcn/mucang/android/jky/camera/UsbSerial;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    if-le v3, v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "initUsbSerialBind : "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByDriver()Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 10
    invoke-static {v1, v5, v2, v5}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBus$default(Lcn/mucang/android/jky/camera/UsbUtils;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getDevBusByVendor : "

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/dev/bus/usb"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    move-object v1, v5

    goto :goto_3

    .line 13
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    array-length v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v1, v8

    .line 15
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v6}, Lkotlin/collections/s;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 16
    :goto_3
    sget-object v6, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v6}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v6

    .line 17
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 18
    invoke-virtual {v8}, Lcn/mucang/android/jky/camera/CameraIntent;->isSerialNoBind()Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    invoke-virtual {v8}, Lcn/mucang/android/jky/camera/CameraIntent;->getDevice()I

    move-result v9

    const/4 v10, -0x1

    const-string v11, "->"

    if-eq v9, v10, :cond_e

    if-nez v1, :cond_7

    goto :goto_4

    .line 20
    :cond_7
    invoke-virtual {v8}, Lcn/mucang/android/jky/camera/CameraIntent;->getDevice()I

    move-result v9

    invoke-static {v1, v9}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcn/mucang/android/jky/camera/UsbSerial;

    .line 22
    invoke-virtual {v13}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v13

    sget-object v14, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v14, v9}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-nez v14, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_b

    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_9

    goto :goto_7

    :cond_c
    move-object v12, v5

    .line 23
    :goto_7
    check-cast v12, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v12, :cond_d

    goto :goto_4

    .line 24
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u65e7\u8f6c\u65b0\u7ed1\u5b9a\u5173\u7cfb-"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": \nold: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nnew: usb"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v12}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 26
    :cond_e
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_5

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcn/mucang/android/jky/camera/UsbSerial;

    .line 28
    invoke-virtual {v12}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    rem-int v13, v7, v13

    invoke-static {v3, v13}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_11

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_f

    goto :goto_a

    :cond_12
    move-object v10, v5

    .line 29
    :goto_a
    check-cast v10, Lcn/mucang/android/jky/camera/UsbSerial;

    if-nez v10, :cond_13

    goto :goto_b

    .line 30
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8bbe\u7f6e\u9ed8\u8ba4\u7ed1\u5b9a\u5173\u7cfb-"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": \nusb"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v10}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 32
    :cond_14
    sget-object v1, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    new-instance v0, Lcom/serenegiant/usb/USBMonitor;

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v2, p0}, Lcom/serenegiant/usb/USBMonitor;-><init>(Landroid/content/Context;Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;)V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_15

    goto :goto_c

    .line 34
    :cond_15
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->register()V

    :goto_c
    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeTask$lambda-1()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener$lambda-18(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public static synthetic l(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->onConnect$lambda-53(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera$lambda-20(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic n(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeCamera$lambda-59(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public static synthetic o(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->onDettach$lambda-54(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method private static final onAttach$lambda-49(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    const-string v0, "$device"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "deviceBlocks.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Lcom/serenegiant/usb/USBMonitor;->requestPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "usb onAttach : "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static final onConnect$lambda-53(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 8

    const-string v0, "$device"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ctrlBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cameraMap.entries"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Map$Entry;

    .line 4
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    return-void

    .line 5
    :cond_4
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkSameBind()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7
    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkSameBindSecond()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 8
    :cond_5
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 10
    sget-object v3, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "device.deviceName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11
    sget-object v5, Lcn/mucang/android/jky/camera/UsbCameraManager;->invalidUsbCount:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    invoke-interface {v5, p0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    move-object v6, v4

    :goto_1
    const-string v7, "invalidUsbCount.getOrPut(device) { 0 }"

    .line 14
    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    .line 15
    sget-object v6, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "open for onConnect"

    .line 16
    invoke-direct {v3, p0, p1, v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->openSync(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 17
    invoke-virtual {v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move-object v4, p1

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static final onDettach$lambda-54(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    const-string v0, "$device"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usb onDetach : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeCamera(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method private static final onDisconnect$lambda-55(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    const-string v0, "$device"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeCamera$default(Lcn/mucang/android/jky/camera/UsbCameraManager;Landroid/hardware/usb/UsbDevice;ZILjava/lang/Object;)V

    return-void
.end method

.method private final openSync(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Ljava/lang/String;)Z
    .locals 9
    .annotation build Lcn/mucang/android/jky/camera/UsbCameraManager$UsbThread;
    .end annotation

    .line 1
    new-instance v6, Lcn/mucang/android/jky/camera/UsbCameraThread;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6444\u50cf\u5934:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcn/mucang/android/jky/camera/UsbCameraManager;->width:I

    sget v4, Lcn/mucang/android/jky/camera/UsbCameraManager;->height:I

    sget v5, Lcn/mucang/android/jky/camera/UsbCameraManager;->mode:I

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jky/camera/UsbCameraThread;-><init>(Ljava/lang/String;Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;III)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {v6, v0}, Landroid/os/HandlerThread;->setDaemon(Z)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {v6, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 4
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    sget-boolean p3, Lcn/mucang/android/jky/camera/UsbCameraManager;->previewInOpen:Z

    invoke-virtual {v6, p2, p1, p3}, Lcn/mucang/android/jky/camera/UsbCameraThread;->openCameraBlock(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Landroid/hardware/usb/UsbDevice;Z)Lcn/mucang/android/jky/camera/UsbCameraThread;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    sget-object p3, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p3, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {p3}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object p3

    .line 9
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 10
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device.deviceName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jky/camera/UsbCameraManager$openSync$1$1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager$openSync$1$1;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static synthetic p(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->onDisconnect$lambda-55(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic q()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->tryOpenAllDevice$lambda-14()V

    return-void
.end method

.method public static synthetic r()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->tryCloseNoUseCamera$lambda-15()V

    return-void
.end method

.method private static final registerCameraListener$lambda-17(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V
    .locals 4

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/CameraIntent;->getDesc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff1a\u5f00\u59cb\u6ce8\u518c\u76d1\u542c"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->init(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/CameraIntent;->getKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    new-instance v2, Lcn/mucang/android/jky/camera/h;

    invoke-direct {v2, p0}, Lcn/mucang/android/jky/camera/h;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final registerCameraListener$lambda-17$lambda-16(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 1

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkCameraOpen(Lcn/mucang/android/jky/camera/CameraIntent;)V

    return-void
.end method

.method public static final release()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jky/camera/e;->a:Lcn/mucang/android/jky/camera/e;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final release$lambda-11()V
    .locals 2

    const-string v0, "usb camera manager release"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->unregister()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->destroy()V

    .line 4
    :goto_1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/camera/UsbCameraThread;

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbCameraThread;->release()V

    goto :goto_2

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbMonitor:Lcom/serenegiant/usb/USBMonitor;

    return-void
.end method

.method private static final startPreviewCamera$lambda-20(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V
    .locals 3

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraThread(Lcn/mucang/android/jky/camera/CameraIntent;)Lcn/mucang/android/jky/camera/UsbCameraThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->startPreviewCamera(Ljava/lang/Object;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    new-instance v2, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    .line 5
    new-instance p1, Lcn/mucang/android/jky/camera/a;

    invoke-direct {p1, p0, v2}, Lcn/mucang/android/jky/camera/a;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;)V

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 7
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 p1, 0x1388

    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private static final startPreviewCamera$lambda-20$lambda-19(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;)V
    .locals 1

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method private static final stopPreviewCamera$lambda-21(Lcn/mucang/android/jky/camera/CameraIntent;I)V
    .locals 2

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/CameraIntent;->getDesc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop preview : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraThread(Lcn/mucang/android/jky/camera/CameraIntent;)Lcn/mucang/android/jky/camera/UsbCameraThread;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraThread;->stopPreviewCamera(I)V

    return-void
.end method

.method private static final tryCloseNoUseCamera$lambda-15()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->checkCameraClose()V

    return-void
.end method

.method private static final tryOpenAllDevice$lambda-14()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->deviceBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getCameraMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    const-string v4, "open for tryOpenAllDevice"

    invoke-direct {v2, v3, v1, v4}, Lcn/mucang/android/jky/camera/UsbCameraManager;->openSync(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v1, 0x64

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final unregisterCameraListener$lambda-18(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V
    .locals 2

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    :goto_0
    sget-object p0, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeTask:Ljava/lang/Runnable;

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    sget-object p0, Lcn/mucang/android/jky/camera/UsbCameraManager;->closeTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final getCameraMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcn/mucang/android/jky/camera/UsbCameraThread;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final getConnectedPortList()Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jky/camera/UsbCameraManager;->cameraMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "cameraMap.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 4
    sget-object v3, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.deviceName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "USB"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->height:I

    return v0
.end method

.method public final getUsbSerialList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/camera/UsbSerial;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->usbSerialList:Ljava/util/List;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->width:I

    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    const/4 v2, 0x1

    .line 1
    invoke-static {p1, v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->init(Landroid/content/Context;III)V

    return-void
.end method

.method public onAttach(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jky/camera/i;

    invoke-direct {v1, p1}, Lcn/mucang/android/jky/camera/i;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCancel(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "usb cancel : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V
    .locals 1

    const-string p3, "device"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "ctrlBlock"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p3, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/mucang/android/jky/camera/l;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jky/camera/l;-><init>(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDettach(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jky/camera/o;

    invoke-direct {v1, p1}, Lcn/mucang/android/jky/camera/o;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctrlBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/mucang/android/jky/camera/p;

    invoke-direct {v0, p1}, Lcn/mucang/android/jky/camera/p;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreviewFrame(Landroid/hardware/usb/UsbDevice;[B)V
    .locals 9

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/camera/CameraIntent;->Companion:Lcn/mucang/android/jky/camera/CameraIntent$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/CameraIntent$Companion;->getCacheList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/camera/CameraIntent;

    .line 3
    sget-object v2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device.deviceName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jky/camera/UsbCameraManager;->containSerial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, p2, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager$onPreviewFrame$1$1;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;[BLkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jky/camera/c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jky/camera/c;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setPreviewInOpen(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "setPreviewInOpen:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sput-boolean p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->previewInOpen:Z

    return-void
.end method

.method public final startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jky/camera/CameraIntent;->getDesc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff1a\u5f00\u59cb\u9884\u89c8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jky/camera/m;

    invoke-direct {v1, p1, p2, p3}, Lcn/mucang/android/jky/camera/m;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    return-void
.end method

.method public final stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jky/camera/b;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jky/camera/b;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final tryCloseNoUseCamera()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jky/camera/r;->a:Lcn/mucang/android/jky/camera/r;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final tryOpenAllDevice()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->es:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jky/camera/q;->a:Lcn/mucang/android/jky/camera/q;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jky/camera/k;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jky/camera/k;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
