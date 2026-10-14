.class public final synthetic Lcom/serenegiant/usb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/serenegiant/usb/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/serenegiant/usb/a;

    invoke-direct {v0}, Lcom/serenegiant/usb/a;-><init>()V

    sput-object v0, Lcom/serenegiant/usb/a;->a:Lcom/serenegiant/usb/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, p2}, Lcom/serenegiant/usb/USBMonitor;->a(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    return p1
.end method
