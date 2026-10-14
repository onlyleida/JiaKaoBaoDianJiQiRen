.class public Lcom/felhr/usbserial/f;
.super Lcom/felhr/usbserial/j;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "f"


# instance fields
.field private final h:[B

.field private final i:Landroid/hardware/usb/UsbInterface;

.field private j:Landroid/hardware/usb/UsbEndpoint;

.field private k:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/j;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x7

    new-array p2, p2, [B

    .line 2
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/felhr/usbserial/f;->h:[B

    const/4 p2, 0x1

    if-gt p3, p2, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/f;->i:Landroid/hardware/usb/UsbInterface;

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multi-interface PL2303 devices not supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        -0x80t
        0x25t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method private o()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/f;->i:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lcom/felhr/usbserial/f;->l:Ljava/lang/String;

    const-string v3, "Interface succesfully claimed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/f;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_2

    .line 4
    iget-object v4, p0, Lcom/felhr/usbserial/f;->i:Landroid/hardware/usb/UsbInterface;

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
    iput-object v4, p0, Lcom/felhr/usbserial/f;->j:Landroid/hardware/usb/UsbEndpoint;

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
    iput-object v4, p0, Lcom/felhr/usbserial/f;->k:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v2, [B

    const/16 v5, 0xc0

    const/4 v6, 0x1

    const v7, 0x8484

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v0

    .line 11
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_3

    return v1

    :cond_3
    const/16 v5, 0x40

    const/4 v6, 0x1

    const/16 v7, 0x404

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 12
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_4

    return v1

    :cond_4
    const/16 v5, 0xc0

    const/4 v6, 0x1

    const v7, 0x8484

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v0

    .line 13
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_5

    return v1

    :cond_5
    const/16 v5, 0xc0

    const/4 v6, 0x1

    const v7, 0x8383

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v0

    .line 14
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_6

    return v1

    :cond_6
    const/16 v5, 0xc0

    const/4 v6, 0x1

    const v7, 0x8484

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v0

    .line 15
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_7

    return v1

    :cond_7
    const/16 v5, 0x40

    const/4 v6, 0x1

    const/16 v7, 0x404

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    .line 16
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_8

    return v1

    :cond_8
    const/16 v5, 0xc0

    const/4 v6, 0x1

    const v7, 0x8484

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v0

    .line 17
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v3

    if-gez v3, :cond_9

    return v1

    :cond_9
    const/16 v5, 0xc0

    const/4 v6, 0x1

    const v7, 0x8383

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v0

    .line 18
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_a

    return v1

    :cond_a
    const/16 v4, 0x40

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    .line 19
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_b

    return v1

    :cond_b
    const/16 v4, 0x40

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 20
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_c

    return v1

    :cond_c
    const/16 v4, 0x40

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x44

    const/4 v8, 0x0

    move-object v3, p0

    .line 21
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_d

    return v1

    :cond_d
    const/16 v4, 0x21

    const/16 v5, 0x22

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 22
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_e

    return v1

    :cond_e
    const/16 v4, 0x21

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    iget-object v8, p0, Lcom/felhr/usbserial/f;->h:[B

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_f

    return v1

    :cond_f
    const/16 v4, 0x40

    const/4 v5, 0x1

    const/16 v6, 0x505

    const/16 v7, 0x1311

    const/4 v8, 0x0

    move-object v3, p0

    .line 24
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    move-result v0

    if-gez v0, :cond_10

    return v1

    :cond_10
    return v2

    .line 25
    :cond_11
    sget-object v0, Lcom/felhr/usbserial/f;->l:Ljava/lang/String;

    const-string v2, "Interface could not be claimed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private p(IIII[B)I
    .locals 9

    if-eqz p5, :cond_0

    .line 1
    array-length v0, p5

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v8, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    .line 3
    sget-object p2, Lcom/felhr/usbserial/f;->l:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Control Transfer Response: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public k(I)V
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 1
    aget-byte p1, v0, v2

    iget-object v10, p0, Lcom/felhr/usbserial/f;->h:[B

    aget-byte v5, v10, v2

    if-ne p1, v5, :cond_0

    aget-byte p1, v0, v3

    aget-byte v5, v10, v3

    if-ne p1, v5, :cond_0

    aget-byte p1, v0, v4

    aget-byte v5, v10, v4

    if-ne p1, v5, :cond_0

    aget-byte p1, v0, v1

    aget-byte v5, v10, v1

    if-eq p1, v5, :cond_1

    .line 2
    :cond_0
    aget-byte p1, v0, v2

    aput-byte p1, v10, v2

    .line 3
    aget-byte p1, v0, v3

    aput-byte p1, v10, v3

    .line 4
    aget-byte p1, v0, v4

    aput-byte p1, v10, v4

    .line 5
    aget-byte p1, v0, v1

    aput-byte p1, v10, v1

    const/16 v6, 0x21

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    .line 6
    invoke-direct/range {v5 .. v10}, Lcom/felhr/usbserial/f;->p(IIII[B)I

    :cond_1
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/f;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/f;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/f;->j:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, p0, Lcom/felhr/usbserial/f;->k:Landroid/hardware/usb/UsbEndpoint;

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
