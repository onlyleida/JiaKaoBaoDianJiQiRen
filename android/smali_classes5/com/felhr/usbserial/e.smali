.class public Lcom/felhr/usbserial/e;
.super Lcom/felhr/usbserial/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/e$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "e"


# instance fields
.field private final h:Landroid/hardware/usb/UsbInterface;

.field private i:Landroid/hardware/usb/UsbEndpoint;

.field private j:Landroid/hardware/usb/UsbEndpoint;

.field public k:Lcom/felhr/usbserial/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/j;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 2
    new-instance p2, Lcom/felhr/usbserial/e$a;

    invoke-direct {p2, p0}, Lcom/felhr/usbserial/e$a;-><init>(Lcom/felhr/usbserial/e;)V

    iput-object p2, p0, Lcom/felhr/usbserial/e;->k:Lcom/felhr/usbserial/e$a;

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/e;->h:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method static synthetic o([B[B)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/felhr/usbserial/e;->p([B[B)V

    return-void
.end method

.method private static p([B[B)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v3, v2, -0x2

    .line 1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x40

    if-gt v3, v4, :cond_0

    const/16 v3, 0x3e

    .line 2
    invoke-static {p0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x40

    add-int/lit8 v1, v1, 0x3e

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, p0

    sub-int/2addr v3, v2

    add-int/2addr v3, v0

    if-lez v3, :cond_1

    sub-int/2addr v3, v0

    .line 4
    invoke-static {p0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private q(I)[S
    .locals 15

    move/from16 v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [S

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 1
    fill-array-data v3, :array_0

    const/16 v4, 0x10

    new-array v5, v4, [B

    .line 2
    fill-array-data v5, :array_1

    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/e;->r()S

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    return-object v7

    :cond_0
    const/16 v8, 0x200

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, v8, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/felhr/usbserial/e;->s()B

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/16 v11, 0x500

    const/16 v12, 0x900

    const/16 v13, 0x800

    const/16 v14, 0x700

    if-eq v6, v11, :cond_3

    if-eq v6, v14, :cond_3

    if-eq v6, v13, :cond_3

    if-eq v6, v12, :cond_3

    const/16 v11, 0x1000

    if-ne v6, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v11, 0x1

    :goto_2
    if-eq v6, v14, :cond_5

    if-eq v6, v13, :cond_5

    if-ne v6, v12, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x1

    :goto_4
    const/16 v12, 0x4b0

    if-lt v0, v12, :cond_6

    if-eqz v6, :cond_6

    const v6, 0xb71b00

    const/high16 v12, 0x20000

    goto :goto_5

    :cond_6
    const v6, 0x2dc6c0

    const/4 v12, 0x0

    :goto_5
    shr-int/lit8 v13, v6, 0xe

    if-lt v0, v13, :cond_e

    if-le v0, v6, :cond_7

    goto :goto_8

    :cond_7
    shl-int/lit8 v13, v6, 0x4

    .line 5
    div-int/2addr v13, v0

    and-int/lit8 v14, v13, 0xf

    if-ne v14, v10, :cond_8

    and-int/lit8 v5, v13, -0x8

    goto :goto_6

    :cond_8
    if-eqz v8, :cond_9

    .line 6
    aget-byte v5, v5, v14

    add-int/2addr v5, v13

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v13, 0x1

    :goto_6
    shr-int/2addr v5, v10

    shl-int/lit8 v6, v6, 0x3

    .line 7
    div-int/2addr v6, v5

    int-to-long v13, v6

    move-object v8, v3

    int-to-long v2, v0

    move-object v0, p0

    .line 8
    invoke-direct {p0, v13, v14, v2, v3}, Lcom/felhr/usbserial/e;->t(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return-object v7

    :cond_a
    and-int/lit8 v2, v5, 0x7

    shr-int/lit8 v3, v5, 0x3

    if-ne v3, v10, :cond_c

    if-nez v2, :cond_b

    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    .line 9
    :cond_c
    :goto_7
    aget-byte v2, v8, v2

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v2, v12

    or-int/2addr v2, v3

    int-to-short v3, v2

    aput-short v3, v1, v9

    shr-int/2addr v2, v4

    int-to-short v2, v2

    aput-short v2, v1, v10

    if-eqz v11, :cond_d

    .line 10
    aget-short v2, v1, v10

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v10

    :cond_d
    return-object v1

    :cond_e
    :goto_8
    move-object v0, p0

    return-object v7

    :array_0
    .array-data 1
        0x0t
        0x3t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        -0x1t
        0x2t
        0x1t
        0x0t
        -0x1t
        -0x2t
        -0x3t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method private r()S
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v0

    const/16 v2, 0xc

    .line 3
    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    aget-byte v0, v0, v1

    add-int/2addr v2, v0

    int-to-short v0, v2

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private s()B
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v0

    const/16 v1, 0x10

    .line 3
    aget-byte v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private t(JJ)Z
    .locals 3

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    const-wide/16 v0, 0x67

    .line 1
    div-long v0, p3, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x61

    div-long/2addr p3, v0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private u()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/e;->h:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    sget-object v0, Lcom/felhr/usbserial/e;->l:Ljava/lang/String;

    const-string v3, "Interface succesfully claimed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/e;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x2

    if-gt v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/felhr/usbserial/e;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 6
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 7
    iput-object v4, p0, Lcom/felhr/usbserial/e;->i:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 8
    :cond_0
    iput-object v4, p0, Lcom/felhr/usbserial/e;->j:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, v1, v1, v1}, Lcom/felhr/usbserial/e;->v(III)I

    move-result v0

    if-gez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    const/16 v3, 0x8

    .line 10
    invoke-direct {p0, v0, v3, v1}, Lcom/felhr/usbserial/e;->v(III)I

    move-result v0

    if-gez v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x101

    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/felhr/usbserial/e;->v(III)I

    move-result v0

    if-gez v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x202

    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/felhr/usbserial/e;->v(III)I

    move-result v0

    if-gez v0, :cond_5

    return v1

    .line 13
    :cond_5
    invoke-direct {p0, v5, v1, v1}, Lcom/felhr/usbserial/e;->v(III)I

    move-result v0

    if-gez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x3

    const/16 v3, 0x4138

    .line 14
    invoke-direct {p0, v0, v3, v1}, Lcom/felhr/usbserial/e;->v(III)I

    move-result v0

    if-gez v0, :cond_7

    return v1

    :cond_7
    return v2

    .line 15
    :cond_8
    sget-object v0, Lcom/felhr/usbserial/e;->l:Ljava/lang/String;

    const-string v2, "Interface could not be claimed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private v(III)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/e;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v4, v1, p3

    const/16 v1, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    .line 2
    sget-object p2, Lcom/felhr/usbserial/e;->l:Ljava/lang/String;

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

.method private w([S)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x0

    aget-short v3, p1, v1

    const/4 v1, 0x1

    aget-short v4, p1, v1

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    return-void
.end method

.method private x(I)V
    .locals 4

    const v0, 0x8003

    const/16 v1, 0x4138

    const/16 v2, 0x12c

    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    const/16 v0, 0x2710

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x258

    if-le p1, v2, :cond_1

    if-gt p1, v3, :cond_1

    const/16 v0, 0x1388

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x4b0

    if-le p1, v3, :cond_2

    if-gt p1, v2, :cond_2

    const/16 v0, 0x9c4

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x960

    if-le p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    const/16 v0, 0x4e2

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x12c0

    if-le p1, v3, :cond_4

    if-gt p1, v2, :cond_4

    const/16 v0, 0x271

    goto :goto_0

    :cond_4
    const/16 v3, 0x2580

    if-le p1, v2, :cond_6

    if-gt p1, v3, :cond_6

    :cond_5
    const/16 v0, 0x4138

    goto :goto_0

    :cond_6
    const/16 v2, 0x4b00

    if-le p1, v3, :cond_7

    if-gt p1, v2, :cond_7

    const v0, 0x809c

    goto :goto_0

    :cond_7
    if-le p1, v2, :cond_8

    const v3, 0x9600

    if-gt p1, v3, :cond_8

    const v0, 0xc04e

    goto :goto_0

    :cond_8
    const v3, 0xe100

    if-le p1, v2, :cond_9

    if-gt p1, v3, :cond_9

    const/16 v0, 0x34

    goto :goto_0

    :cond_9
    const v2, 0x1c200

    if-le p1, v3, :cond_a

    if-gt p1, v2, :cond_a

    const/16 v0, 0x1a

    goto :goto_0

    :cond_a
    const v3, 0x38400

    if-le p1, v2, :cond_b

    if-gt p1, v3, :cond_b

    const/16 v0, 0xd

    goto :goto_0

    :cond_b
    const v2, 0x70800

    if-le p1, v3, :cond_c

    if-gt p1, v2, :cond_c

    const/16 v0, 0x4006

    goto :goto_0

    :cond_c
    const v3, 0xe1000

    if-le p1, v2, :cond_d

    if-gt p1, v3, :cond_d

    goto :goto_0

    :cond_d
    if-le p1, v3, :cond_5

    :goto_0
    const/4 p1, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/felhr/usbserial/e;->v(III)I

    return-void
.end method


# virtual methods
.method public a([BIII)I
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/felhr/usbserial/j;->f:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    return v2

    .line 3
    :cond_1
    div-int/lit8 v3, p3, 0x3e

    .line 4
    rem-int/lit8 v4, p3, 0x3e

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    .line 5
    new-array v5, v3, [B

    const/4 v6, 0x0

    :cond_3
    if-lez p4, :cond_4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v0, v7

    long-to-int v8, v7

    if-gtz v8, :cond_5

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 7
    :cond_5
    iget-object v7, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/felhr/usbserial/e;->i:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v7, v9, v5, v3, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    if-le v7, v4, :cond_7

    .line 8
    iget-object v6, p0, Lcom/felhr/usbserial/e;->k:Lcom/felhr/usbserial/e$a;

    invoke-virtual {v6, v5}, Lcom/felhr/usbserial/e$a;->a([B)[B

    move-result-object v6

    .line 9
    invoke-static {v6, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    div-int/lit8 v6, v7, 0x40

    .line 11
    rem-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v7, v6

    move v6, v7

    :cond_7
    if-lez v6, :cond_3

    :goto_0
    return v6
.end method

.method public b([BI)I
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/felhr/usbserial/j;->f:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v3, p1

    div-int/lit8 v3, v3, 0x3e

    .line 4
    array-length v4, p1

    rem-int/lit8 v4, v4, 0x3e

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 5
    :cond_2
    array-length v4, p1

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    new-array v3, v4, [B

    const/4 v6, 0x0

    :cond_3
    if-lez p2, :cond_4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v0, v7

    long-to-int v8, v7

    if-gtz v8, :cond_5

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 7
    :cond_5
    iget-object v7, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/felhr/usbserial/e;->i:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v7, v9, v3, v4, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    if-le v7, v5, :cond_7

    .line 8
    iget-object v6, p0, Lcom/felhr/usbserial/e;->k:Lcom/felhr/usbserial/e$a;

    invoke-virtual {v6, v3}, Lcom/felhr/usbserial/e$a;->a([B)[B

    move-result-object v6

    .line 9
    array-length v8, p1

    invoke-static {v6, v2, p1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    div-int/lit8 v6, v7, 0x40

    .line 11
    rem-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v7, v6

    move v6, v7

    :cond_7
    if-lez v6, :cond_3

    :goto_0
    return v6
.end method

.method public k(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/e;->q(I)[S

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/e;->w([S)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/e;->x(I)V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/e;->v(III)I

    const/16 v1, 0x200

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/e;->v(III)I

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/e;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/e;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/e;->i:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, p0, Lcom/felhr/usbserial/e;->j:Landroid/hardware/usb/UsbEndpoint;

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
