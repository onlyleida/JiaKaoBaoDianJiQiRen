.class public abstract Lcom/felhr/usbserial/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felhr/usbserial/k;


# static fields
.field static final g:Z


# instance fields
.field protected final a:Landroid/hardware/usb/UsbDeviceConnection;

.field private b:Landroid/hardware/usb/UsbEndpoint;

.field private c:Landroid/hardware/usb/UsbEndpoint;

.field protected d:Lcom/felhr/usbserial/h;

.field protected e:Lcom/felhr/usbserial/i;

.field protected f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/felhr/usbserial/j;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/felhr/usbserial/j;->f:Z

    .line 4
    new-instance p1, Lcom/felhr/usbserial/g;

    sget-boolean p2, Lcom/felhr/usbserial/j;->g:Z

    invoke-direct {p1, p2}, Lcom/felhr/usbserial/g;-><init>(Z)V

    return-void
.end method

.method public static e(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lcom/felhr/usbserial/j;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/felhr/usbserial/j;->f(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/j;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 3
    invoke-static {p0}, Lg/c/a/c;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Lcom/felhr/usbserial/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/e;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lg/c/a/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v0, Lcom/felhr/usbserial/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/d;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 7
    :cond_1
    invoke-static {v0, v1}, Lg/c/a/e;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v0, Lcom/felhr/usbserial/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/f;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 9
    :cond_2
    invoke-static {v0, v1}, Lg/c/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcom/felhr/usbserial/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/c;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 11
    :cond_3
    invoke-static {p0}, Lcom/felhr/usbserial/j;->i(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lcom/felhr/usbserial/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/b;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    add-int/lit8 v4, v0, -0x1

    if-gt v2, v4, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static j(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 3
    invoke-static {p0}, Lg/c/a/c;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lg/c/a/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 5
    :cond_1
    invoke-static {v0, v1}, Lg/c/a/e;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-static {v0, v1}, Lg/c/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-static {p0}, Lcom/felhr/usbserial/j;->i(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a([BIII)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/j;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/j;->b:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1
.end method

.method public b([BI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/j;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/j;->b:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    return p1
.end method

.method public c([BI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/j;->f:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/j;->c:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d([BIII)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/j;->f:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/j;->c:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public g()Lcom/felhr/usbserial/h;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/j;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/j;->d:Lcom/felhr/usbserial/h;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream only available in Sync mode. \nOpen the port with syncOpen()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lcom/felhr/usbserial/i;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/j;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/j;->e:Lcom/felhr/usbserial/i;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OutputStream only available in Sync mode. \nOpen the port with syncOpen()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract k(I)V
.end method

.method protected l(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/j;->b:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    iput-object p2, p0, Lcom/felhr/usbserial/j;->c:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method public abstract m()V
.end method

.method public abstract n()Z
.end method
