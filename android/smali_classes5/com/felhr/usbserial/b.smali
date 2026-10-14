.class public Lcom/felhr/usbserial/b;
.super Lcom/felhr/usbserial/j;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "b"

.field private static final m:[B


# instance fields
.field private final h:Landroid/hardware/usb/UsbInterface;

.field private i:Landroid/hardware/usb/UsbEndpoint;

.field private j:Landroid/hardware/usb/UsbEndpoint;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/felhr/usbserial/b;->m:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x3et
        0x1t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/j;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/felhr/usbserial/b;->k:I

    if-ltz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/felhr/usbserial/b;->o(Landroid/hardware/usb/UsbDevice;)I

    move-result p3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/b;->h:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method private static o(Landroid/hardware/usb/UsbDevice;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/felhr/usbserial/b;->l:Ljava/lang/String;

    const-string v0, "There is no CDC class interface"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private r()[B
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xa1

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 2
    sget-object v2, Lcom/felhr/usbserial/b;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Control Transfer Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private s()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/b;->h:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lcom/felhr/usbserial/b;->l:Ljava/lang/String;

    const-string v3, "Interface succesfully claimed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/b;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_2

    .line 4
    iget-object v4, p0, Lcom/felhr/usbserial/b;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 6
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/16 v7, 0x80

    if-ne v5, v7, :cond_0

    .line 7
    iput-object v4, p0, Lcom/felhr/usbserial/b;->i:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 9
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    if-nez v5, :cond_1

    .line 10
    iput-object v4, p0, Lcom/felhr/usbserial/b;->j:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/felhr/usbserial/b;->j:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/felhr/usbserial/b;->i:Landroid/hardware/usb/UsbEndpoint;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x20

    .line 12
    invoke-virtual {p0}, Lcom/felhr/usbserial/b;->q()[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/felhr/usbserial/b;->t(II[B)I

    const/16 v0, 0x22

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 13
    invoke-direct {p0, v0, v1, v3}, Lcom/felhr/usbserial/b;->t(II[B)I

    return v2

    .line 14
    :cond_4
    :goto_2
    sget-object v0, Lcom/felhr/usbserial/b;->l:Ljava/lang/String;

    const-string v2, "Interface does not have an IN or OUT interface"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 15
    :cond_5
    sget-object v0, Lcom/felhr/usbserial/b;->l:Ljava/lang/String;

    const-string v2, "Interface could not be claimed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private t(II[B)I
    .locals 9

    if-eqz p3, :cond_0

    .line 1
    array-length v0, p3

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x21

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    .line 3
    sget-object p2, Lcom/felhr/usbserial/b;->l:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Control Transfer Response: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public k(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/b;->r()[B

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 2
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    .line 3
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    .line 4
    aput-byte v1, v0, v3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    .line 5
    aput-byte p1, v0, v1

    const/16 p1, 0x20

    .line 6
    invoke-direct {p0, p1, v2, v0}, Lcom/felhr/usbserial/b;->t(II[B)I

    return-void
.end method

.method public m()V
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/b;->t(II[B)I

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/b;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/b;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/b;->i:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, p0, Lcom/felhr/usbserial/b;->j:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p0, v0, v2}, Lcom/felhr/usbserial/j;->l(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 3
    iput-boolean v1, p0, Lcom/felhr/usbserial/j;->f:Z

    .line 4
    new-instance v0, Lcom/felhr/usbserial/h;

    invoke-direct {v0, p0}, Lcom/felhr/usbserial/h;-><init>(Lcom/felhr/usbserial/k;)V

    iput-object v0, p0, Lcom/felhr/usbserial/j;->d:Lcom/felhr/usbserial/h;

    .line 5
    new-instance v0, Lcom/felhr/usbserial/i;

    invoke-direct {v0, p0}, Lcom/felhr/usbserial/i;-><init>(Lcom/felhr/usbserial/k;)V

    iput-object v0, p0, Lcom/felhr/usbserial/j;->e:Lcom/felhr/usbserial/i;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/b;->k:I

    return v0
.end method

.method protected q()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/felhr/usbserial/b;->p()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v1, Lcom/felhr/usbserial/b;->m:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x8

    shr-int v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/felhr/usbserial/b;->m:[B

    :cond_1
    return-object v1
.end method
