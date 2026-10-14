.class public final Lcom/serenegiant/usb/USBMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;,
        Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;,
        Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;
    }
.end annotation


# static fields
.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field private static final ACTION_USB_PERMISSION_BASE:Ljava/lang/String; = "com.serenegiant.USB_PERMISSION."

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "USBMonitor"

.field private static final USB_DIR_IN:I = 0x80

.field private static final USB_DIR_OUT:I = 0x0

.field private static final USB_DT_BOS:I = 0xf

.field private static final USB_DT_CONFIG:I = 0x2

.field private static final USB_DT_CS_CONFIG:I = 0x22

.field private static final USB_DT_CS_DEVICE:I = 0x21

.field private static final USB_DT_CS_ENDPOINT:I = 0x25

.field private static final USB_DT_CS_INTERFACE:I = 0x24

.field private static final USB_DT_CS_RADIO_CONTROL:I = 0x23

.field private static final USB_DT_CS_STRING:I = 0x23

.field private static final USB_DT_DEBUG:I = 0xa

.field private static final USB_DT_DEVICE:I = 0x1

.field private static final USB_DT_DEVICE_CAPABILITY:I = 0x10

.field private static final USB_DT_DEVICE_QUALIFIER:I = 0x6

.field private static final USB_DT_DEVICE_SIZE:I = 0x12

.field private static final USB_DT_ENCRYPTION_TYPE:I = 0xe

.field private static final USB_DT_ENDPOINT:I = 0x5

.field private static final USB_DT_INTERFACE:I = 0x4

.field private static final USB_DT_INTERFACE_ASSOCIATION:I = 0xb

.field private static final USB_DT_INTERFACE_POWER:I = 0x8

.field private static final USB_DT_KEY:I = 0xd

.field private static final USB_DT_OTG:I = 0x9

.field private static final USB_DT_OTHER_SPEED_CONFIG:I = 0x7

.field private static final USB_DT_PIPE_USAGE:I = 0x24

.field private static final USB_DT_RPIPE:I = 0x22

.field private static final USB_DT_SECURITY:I = 0xc

.field private static final USB_DT_SS_ENDPOINT_COMP:I = 0x30

.field private static final USB_DT_STRING:I = 0x3

.field private static final USB_DT_WIRELESS_ENDPOINT_COMP:I = 0x11

.field private static final USB_DT_WIRE_ADAPTER:I = 0x21

.field private static final USB_RECIP_DEVICE:I = 0x0

.field private static final USB_RECIP_ENDPOINT:I = 0x2

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_RECIP_MASK:I = 0x1f

.field private static final USB_RECIP_OTHER:I = 0x3

.field private static final USB_RECIP_PORT:I = 0x4

.field private static final USB_RECIP_RPIPE:I = 0x5

.field private static final USB_REQ_CLEAR_FEATURE:I = 0x1

.field private static final USB_REQ_CS_DEVICE_GET:I = 0xa0

.field private static final USB_REQ_CS_DEVICE_SET:I = 0x20

.field private static final USB_REQ_CS_ENDPOINT_GET:I = 0xa2

.field private static final USB_REQ_CS_ENDPOINT_SET:I = 0x22

.field private static final USB_REQ_CS_INTERFACE_GET:I = 0xa1

.field private static final USB_REQ_CS_INTERFACE_SET:I = 0x21

.field private static final USB_REQ_GET_CONFIGURATION:I = 0x8

.field private static final USB_REQ_GET_DESCRIPTOR:I = 0x6

.field private static final USB_REQ_GET_ENCRYPTION:I = 0xe

.field private static final USB_REQ_GET_HANDSHAKE:I = 0x10

.field private static final USB_REQ_GET_INTERFACE:I = 0xa

.field private static final USB_REQ_GET_SECURITY_DATA:I = 0x13

.field private static final USB_REQ_GET_STATUS:I = 0x0

.field private static final USB_REQ_LOOPBACK_DATA_READ:I = 0x16

.field private static final USB_REQ_LOOPBACK_DATA_WRITE:I = 0x15

.field private static final USB_REQ_RPIPE_ABORT:I = 0xe

.field private static final USB_REQ_RPIPE_RESET:I = 0xf

.field private static final USB_REQ_SET_ADDRESS:I = 0x5

.field private static final USB_REQ_SET_CONFIGURATION:I = 0x9

.field private static final USB_REQ_SET_CONNECTION:I = 0x11

.field private static final USB_REQ_SET_DESCRIPTOR:I = 0x7

.field private static final USB_REQ_SET_ENCRYPTION:I = 0xd

.field private static final USB_REQ_SET_FEATURE:I = 0x3

.field private static final USB_REQ_SET_HANDSHAKE:I = 0xf

.field private static final USB_REQ_SET_INTERFACE:I = 0xb

.field private static final USB_REQ_SET_INTERFACE_DS:I = 0x17

.field private static final USB_REQ_SET_ISOCH_DELAY:I = 0x31

.field private static final USB_REQ_SET_SECURITY_DATA:I = 0x12

.field private static final USB_REQ_SET_SEL:I = 0x30

.field private static final USB_REQ_SET_WUSB_DATA:I = 0x14

.field private static final USB_REQ_STANDARD_DEVICE_GET:I = 0x80

.field private static final USB_REQ_STANDARD_DEVICE_SET:I = 0x0

.field private static final USB_REQ_STANDARD_ENDPOINT_GET:I = 0x82

.field private static final USB_REQ_STANDARD_ENDPOINT_SET:I = 0x2

.field private static final USB_REQ_STANDARD_INTERFACE_GET:I = 0x81

.field private static final USB_REQ_STANDARD_INTERFACE_SET:I = 0x1

.field private static final USB_REQ_SYNCH_FRAME:I = 0xc

.field private static final USB_REQ_VENDER_DEVICE_GET:I = 0xa0

.field private static final USB_REQ_VENDER_DEVICE_SET:I = 0x20

.field private static final USB_REQ_VENDER_ENDPOINT_GET:I = 0xa2

.field private static final USB_REQ_VENDER_ENDPOINT_SET:I = 0x22

.field private static final USB_REQ_VENDER_INTERFACE_GET:I = 0xa1

.field private static final USB_REQ_VENDER_INTERFACE_SET:I = 0x21

.field private static final USB_TYPE_CLASS:I = 0x20

.field private static final USB_TYPE_MASK:I = 0x60

.field private static final USB_TYPE_RESERVED:I = 0x60

.field private static final USB_TYPE_STANDARD:I = 0x0

.field private static final USB_TYPE_VENDOR:I = 0x40


# instance fields
.field private final ACTION_USB_PERMISSION:Ljava/lang/String;

.field private volatile destroyed:Z

.field private final mAsyncHandler:Landroid/os/Handler;

.field private final mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceCheckRunnable:Ljava/lang/Runnable;

.field private volatile mDeviceCounts:I

.field private mDeviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnDeviceConnectListener:Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

.field private mPermissionIntent:Landroid/app/PendingIntent;

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.serenegiant.USB_PERMISSION."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->ACTION_USB_PERMISSION:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mHasPermissions:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/serenegiant/usb/USBMonitor$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/USBMonitor$1;-><init>(Lcom/serenegiant/usb/USBMonitor;)V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCounts:I

    .line 9
    new-instance v1, Lcom/serenegiant/usb/USBMonitor$2;

    invoke-direct {v1, p0}, Lcom/serenegiant/usb/USBMonitor$2;-><init>(Lcom/serenegiant/usb/USBMonitor;)V

    iput-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCheckRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mWeakContext:Ljava/lang/ref/WeakReference;

    const-string v1, "usb"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 12
    iput-object p2, p0, Lcom/serenegiant/usb/USBMonitor;->mOnDeviceConnectListener:Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    const-string p1, "USBMonitor"

    .line 13
    invoke-static {p1}, Lcom/serenegiant/usb/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/usb/HandlerThreadHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 14
    iput-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OnDeviceConnectListener should not null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDevice;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic access$100(Lcom/serenegiant/usb/USBMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/serenegiant/usb/USBMonitor;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/USBMonitor;->mHasPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/USBMonitor;->mOnDeviceConnectListener:Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/serenegiant/usb/USBMonitor;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/serenegiant/usb/USBMonitor;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/usb/USBMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/USBMonitor;->ACTION_USB_PERMISSION:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processConnect(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processCancel(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$500(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/usb/USBMonitor;->updatePermission(Landroid/hardware/usb/UsbDevice;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processAttach(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$700(Lcom/serenegiant/usb/USBMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/serenegiant/usb/USBMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCounts:I

    return p0
.end method

.method static synthetic access$802(Lcom/serenegiant/usb/USBMonitor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCounts:I

    return p1
.end method

.method static synthetic access$900(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processDettach(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static getDeviceInfo(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;
    .locals 1

    const-string v0, "usb"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    new-instance v0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    invoke-direct {v0}, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/serenegiant/usb/USBMonitor;->updateDeviceInfo(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getDeviceKey(Landroid/hardware/usb/UsbDevice;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1, v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static final getDeviceKey(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getDeviceKey(Landroid/hardware/usb/UsbDevice;Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getDeviceKeyName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_3

    .line 16
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_3

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x17

    if-lt p2, p1, :cond_3

    .line 25
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getString(Landroid/hardware/usb/UsbDeviceConnection;II[B)Ljava/lang/String;
    .locals 15

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v11, p2

    move-object v13, v9

    const/4 v12, 0x1

    :goto_0
    if-gt v12, v11, :cond_2

    const/16 v2, 0x80

    const/4 v3, 0x6

    move/from16 v14, p1

    or-int/lit16 v4, v14, 0x300

    .line 1
    aget-byte v5, p3, v12

    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const/4 v3, 0x0

    .line 2
    aget-byte v3, v0, v3

    if-ne v3, v1, :cond_1

    aget-byte v3, v0, v10

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3
    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v1, v1, -0x2

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v0, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "\u0409"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_0

    move-object v13, v3

    goto :goto_2

    :cond_0
    move-object v13, v9

    goto :goto_1

    :catch_0
    move-object v13, v3

    :catch_1
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v13
.end method

.method private final processAttach(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mOnDeviceConnectListener:Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/serenegiant/usb/USBMonitor$5;

    invoke-direct {v1, p0, p1}, Lcom/serenegiant/usb/USBMonitor$5;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private final processCancel(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/usb/USBMonitor;->updatePermission(Landroid/hardware/usb/UsbDevice;Z)Z

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mOnDeviceConnectListener:Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/serenegiant/usb/USBMonitor$4;

    invoke-direct {v1, p0, p1}, Lcom/serenegiant/usb/USBMonitor$4;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private final processConnect(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/usb/USBMonitor;->updatePermission(Landroid/hardware/usb/UsbDevice;Z)Z

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/serenegiant/usb/USBMonitor$3;

    invoke-direct {v1, p0, p1}, Lcom/serenegiant/usb/USBMonitor$3;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final processDettach(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mOnDeviceConnectListener:Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/serenegiant/usb/USBMonitor$6;

    invoke-direct {v1, p0, p1}, Lcom/serenegiant/usb/USBMonitor$6;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static updateDeviceInfo(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    invoke-direct {p2}, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;-><init>()V

    .line 2
    :goto_0
    invoke-static {p2}, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->access$1300(Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)V

    if-eqz p1, :cond_e

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->usb_version:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    .line 8
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 9
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v2

    .line 11
    iget-object v3, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->usb_version:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "%x.%02x"

    const/4 v11, 0x2

    if-eqz v3, :cond_4

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v5, 0x3

    .line 12
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    aget-byte v5, v2, v11

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->usb_version:Ljava/lang/String;

    .line 13
    :cond_4
    iget-object v3, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->version:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-array v3, v11, [Ljava/lang/Object;

    const/16 v5, 0xd

    .line 14
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/16 v5, 0xc

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->version:Ljava/lang/String;

    .line 15
    :cond_5
    iget-object v3, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    :cond_6
    const/16 v3, 0x100

    new-array v12, v3, [B

    const/16 v4, 0x80

    const/4 v5, 0x6

    const/16 v6, 0x300

    const/4 v7, 0x0

    const/16 v9, 0x100

    const/4 v10, 0x0

    move-object v3, p0

    move-object v8, v12

    .line 17
    :try_start_0
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    if-lez v3, :cond_7

    sub-int/2addr v3, v11

    .line 18
    div-int/2addr v3, v11

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    if-lez v3, :cond_a

    .line 19
    iget-object v4, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xe

    .line 20
    aget-byte v4, v2, v4

    invoke-static {p0, v4, v3, v12}, Lcom/serenegiant/usb/USBMonitor;->getString(Landroid/hardware/usb/UsbDeviceConnection;II[B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    .line 21
    :cond_8
    iget-object v4, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0xf

    .line 22
    aget-byte v4, v2, v4

    invoke-static {p0, v4, v3, v12}, Lcom/serenegiant/usb/USBMonitor;->getString(Landroid/hardware/usb/UsbDeviceConnection;II[B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    .line 23
    :cond_9
    iget-object v4, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x10

    .line 24
    aget-byte v2, v2, v4

    invoke-static {p0, v2, v3, v12}, Lcom/serenegiant/usb/USBMonitor;->getString(Landroid/hardware/usb/UsbDeviceConnection;II[B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_a
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    throw p1

    .line 26
    :cond_b
    :goto_2
    iget-object p0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 27
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p0

    invoke-static {p0}, Lcom/serenegiant/usb/USBVendorId;->vendorName(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    .line 28
    :cond_c
    iget-object p0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, "%04x"

    if-eqz p0, :cond_d

    new-array p0, v0, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    .line 30
    :cond_d
    iget-object p0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-array p0, v0, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    :cond_e
    return-object p2
.end method

.method private updatePermission(Landroid/hardware/usb/UsbDevice;Z)Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKey(Landroid/hardware/usb/UsbDevice;Z)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mHasPermissions:Landroid/util/SparseArray;

    monitor-enter v1

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor;->mHasPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor;->mHasPermissions:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/usb/USBMonitor;->mHasPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    :cond_1
    :goto_0
    monitor-exit v1

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addDeviceFilter(Lcom/serenegiant/usb/DeviceFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addDeviceFilter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/usb/USBMonitor;->unregister()V

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    .line 4
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "destroy:"

    const-string v2, "USBMonitor"

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 6
    iget-object v4, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 11
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final dumpDevices()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "no device"

    const-string v2, "USBMonitor"

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 8
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    .line 9
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string v11, "interface%d:%s"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 10
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 12
    :cond_3
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public getDeviceCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeviceInfo(Landroid/hardware/usb/UsbDevice;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/serenegiant/usb/USBMonitor;->updateDeviceInfo(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeviceList(Lcom/serenegiant/usb/DeviceFilter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 43
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1, v2}, Lcom/serenegiant/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    if-nez v3, :cond_0

    .line 48
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceList(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_d

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/USBCamera/failed_devices.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 13
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 15
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    .line 18
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/serenegiant/usb/DeviceFilter;

    if-eqz v6, :cond_6

    .line 20
    invoke-virtual {v6, v4}, Lcom/serenegiant/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    iget v7, v6, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 21
    :cond_7
    iget-boolean v5, v6, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    if-nez v5, :cond_4

    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_8
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 25
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_5

    .line 27
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    .line 29
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 31
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", subclass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 35
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    .line 36
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 37
    :cond_9
    :goto_4
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    if-eqz v1, :cond_b

    .line 38
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_b
    if-eqz v3, :cond_c

    .line 39
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    :cond_c
    :goto_5
    sget-object p1, Lcom/serenegiant/usb/a;->a:Lcom/serenegiant/usb/a;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    .line 42
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDevices()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/usb/USBMonitor;->updatePermission(Landroid/hardware/usb/UsbDevice;Z)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized isRegistered()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$1;)V

    .line 4
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mCtrlBlocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "has no permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized register()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor;->ACTION_USB_PERMISSION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 5
    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor;->ACTION_USB_PERMISSION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    :cond_0
    iput v1, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCounts:I

    .line 10
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeDeviceFilter(Lcom/serenegiant/usb/DeviceFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeDeviceFilter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized requestPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/USBMonitor;->isRegistered()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processConnect(Landroid/hardware/usb/UsbDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "USBMonitor"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processCancel(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processCancel(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/USBMonitor;->processCancel(Landroid/hardware/usb/UsbDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v0, 0x1

    .line 9
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDeviceFilter(Lcom/serenegiant/usb/DeviceFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceFilter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized unregister()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCounts:I

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/USBMonitor;->destroyed:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mAsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mDeviceCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "USBMonitor"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor;->mPermissionIntent:Landroid/app/PendingIntent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
