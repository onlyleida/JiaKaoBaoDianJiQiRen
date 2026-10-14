.class public Lcom/felhr/usbserial/c;
.super Lcom/felhr/usbserial/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/c$b;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "c"


# instance fields
.field private h:Landroid/hardware/usb/UsbInterface;

.field private i:Landroid/hardware/usb/UsbEndpoint;

.field private j:Landroid/hardware/usb/UsbEndpoint;

.field private k:Lcom/felhr/usbserial/c$b;

.field private l:Lcom/felhr/usbserial/k$b;

.field private m:Lcom/felhr/usbserial/k$c;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/j;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/felhr/usbserial/c;->p:Z

    .line 3
    iput-boolean p2, p0, Lcom/felhr/usbserial/c;->q:Z

    .line 4
    iput-boolean p2, p0, Lcom/felhr/usbserial/c;->n:Z

    .line 5
    iput-boolean p2, p0, Lcom/felhr/usbserial/c;->o:Z

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/c;->h:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method private A(Ljava/lang/String;II[I)I
    .locals 2

    .line 1
    array-length v0, p4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/felhr/usbserial/c;->F(III[B)I

    move-result p2

    .line 3
    array-length p3, p4

    if-eq p2, p3, :cond_0

    .line 4
    sget-object p3, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " bytes, but get "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    return v1
.end method

.method private B()V
    .locals 2

    .line 1
    new-instance v0, Lcom/felhr/usbserial/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/felhr/usbserial/c$b;-><init>(Lcom/felhr/usbserial/c;Lcom/felhr/usbserial/c$a;)V

    iput-object v0, p0, Lcom/felhr/usbserial/c;->k:Lcom/felhr/usbserial/c$b;

    return-void
.end method

.method private C()I
    .locals 10

    const/16 v0, 0xa1

    const v1, 0xc29c

    const v2, 0xb2b9

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 2
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xdf

    const/16 v2, 0xa4

    const/4 v4, 0x0

    .line 3
    invoke-direct {p0, v2, v0, v4, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #2"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 v0, 0x9f

    .line 5
    invoke-direct {p0, v2, v0, v4, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v0

    if-gez v0, :cond_2

    .line 6
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #3"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 7
    fill-array-data v2, :array_0

    const-string v5, "init #4"

    const/16 v6, 0x95

    const/16 v7, 0x706

    invoke-direct {p0, v5, v6, v7, v2}, Lcom/felhr/usbserial/c;->A(Ljava/lang/String;II[I)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    :cond_3
    const/16 v2, 0x9a

    const/16 v5, 0x2727

    .line 8
    invoke-direct {p0, v2, v5, v4, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v8

    if-gez v8, :cond_4

    .line 9
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #5"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/16 v8, 0x1312

    const v9, 0xb282

    .line 10
    invoke-direct {p0, v2, v8, v9, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v8

    if-gez v8, :cond_5

    .line 11
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #6"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/16 v8, 0xf2c

    const/16 v9, 0x8

    .line 12
    invoke-direct {p0, v2, v8, v9, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v8

    if-gez v8, :cond_6

    .line 13
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #7"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/16 v8, 0x2518

    const/16 v9, 0xc3

    .line 14
    invoke-direct {p0, v2, v8, v9, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v8

    if-gez v8, :cond_7

    .line 15
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #8"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_1

    const-string v8, "init #9"

    invoke-direct {p0, v8, v6, v7, v0}, Lcom/felhr/usbserial/c;->A(Ljava/lang/String;II[I)I

    move-result v0

    if-ne v0, v1, :cond_8

    return v1

    .line 17
    :cond_8
    invoke-direct {p0, v2, v5, v4, v3}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result v0

    if-gez v0, :cond_9

    .line 18
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "init failed! #10"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    return v4

    :array_0
    .array-data 4
        0x9f
        0xee
    .end array-data

    :array_1
    .array-data 4
        0x9f
        0xee
    .end array-data
.end method

.method private D()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/c;->h:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v3, "Interface succesfully claimed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/c;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_2

    .line 4
    iget-object v4, p0, Lcom/felhr/usbserial/c;->h:Landroid/hardware/usb/UsbInterface;

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
    iput-object v4, p0, Lcom/felhr/usbserial/c;->i:Landroid/hardware/usb/UsbEndpoint;

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
    iput-object v4, p0, Lcom/felhr/usbserial/c;->j:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/felhr/usbserial/c;->C()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 12
    :cond_4
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    const-string v2, "Interface could not be claimed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private E(II)I
    .locals 5

    const/16 v0, 0x9a

    const/16 v1, 0x1312

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result p1

    const/4 v1, -0x1

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0xf2c

    .line 2
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result p1

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/16 p1, 0x95

    const/16 p2, 0x706

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3
    fill-array-data v3, :array_0

    const-string v4, "set_baud_rate"

    invoke-direct {p0, v4, p1, p2, v3}, Lcom/felhr/usbserial/c;->A(Ljava/lang/String;II[I)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    const/16 p1, 0x2727

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/felhr/usbserial/c;->G(III[B)I

    move-result p1

    if-gez p1, :cond_3

    return v1

    :cond_3
    return p2

    :array_0
    .array-data 4
        0x9f
        0xee
    .end array-data
.end method

.method private F(III[B)I
    .locals 9

    if-eqz p4, :cond_0

    .line 1
    array-length v0, p4

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    .line 3
    sget-object p2, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

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

.method private G(III[B)I
    .locals 9

    if-eqz p4, :cond_0

    .line 1
    array-length v0, p4

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    .line 3
    sget-object p2, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

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

.method private H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/c;->k:Lcom/felhr/usbserial/c$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/felhr/usbserial/a;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/felhr/usbserial/c;->k:Lcom/felhr/usbserial/c$b;

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/felhr/usbserial/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/c;->n:Z

    return p0
.end method

.method static synthetic p(Lcom/felhr/usbserial/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/c;->p:Z

    return p0
.end method

.method static synthetic q(Lcom/felhr/usbserial/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/c;->p:Z

    return p1
.end method

.method static synthetic r(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/c;->l:Lcom/felhr/usbserial/k$b;

    return-object p0
.end method

.method static synthetic s(Lcom/felhr/usbserial/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/c;->o:Z

    return p0
.end method

.method static synthetic t(Lcom/felhr/usbserial/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/c;->q:Z

    return p0
.end method

.method static synthetic u(Lcom/felhr/usbserial/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/c;->q:Z

    return p1
.end method

.method static synthetic v(Lcom/felhr/usbserial/c;)Lcom/felhr/usbserial/k$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/c;->m:Lcom/felhr/usbserial/k$c;

    return-object p0
.end method

.method static synthetic w(Lcom/felhr/usbserial/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/c;->y()Z

    move-result p0

    return p0
.end method

.method static synthetic x(Lcom/felhr/usbserial/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/c;->z()Z

    move-result p0

    return p0
.end method

.method private y()Z
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x95

    const/16 v3, 0x706

    const/4 v4, 0x0

    .line 1
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/felhr/usbserial/c;->F(III[B)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 2
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 2 bytes, but get "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3
    :cond_0
    aget-byte v0, v1, v4

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v4
.end method

.method private z()Z
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x95

    const/16 v3, 0x706

    const/4 v4, 0x0

    .line 1
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/felhr/usbserial/c;->F(III[B)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 2
    sget-object v0, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 2 bytes, but get "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3
    :cond_0
    aget-byte v1, v1, v4

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method


# virtual methods
.method public k(I)V
    .locals 5

    const/16 v0, 0x12c

    const-string v1, "SetBaudRate failed!"

    const/4 v2, -0x1

    if-gt p1, v0, :cond_0

    const p1, 0xd980

    const/16 v0, 0xeb

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 2
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x258

    if-le p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    const/16 p1, 0x6481

    const/16 v0, 0x76

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 4
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x4b0

    if-le p1, v3, :cond_2

    if-gt p1, v0, :cond_2

    const p1, 0xb281

    const/16 v0, 0x3b

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 6
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x960

    if-le p1, v0, :cond_3

    if-gt p1, v3, :cond_3

    const p1, 0xd981

    const/16 v0, 0x1e

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 8
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x12c0

    if-le p1, v3, :cond_4

    if-gt p1, v0, :cond_4

    const/16 p1, 0x6482

    const/16 v0, 0xf

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 10
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x2580

    if-le p1, v0, :cond_5

    if-gt p1, v3, :cond_5

    const p1, 0xb282

    const/16 v0, 0x8

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 12
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x4b00

    const/4 v4, 0x7

    if-le p1, v3, :cond_6

    if-gt p1, v0, :cond_6

    const p1, 0xd982

    .line 13
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 14
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const v3, 0x9600

    if-le p1, v0, :cond_7

    if-gt p1, v3, :cond_7

    const/16 p1, 0x6483

    .line 15
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 16
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const v0, 0xe100

    if-le p1, v3, :cond_8

    if-gt p1, v0, :cond_8

    const p1, 0x9883

    .line 17
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 18
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const v3, 0x1c200

    if-le p1, v0, :cond_9

    if-gt p1, v3, :cond_9

    const p1, 0xcc83

    .line 19
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 20
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const v0, 0x38400

    if-le p1, v3, :cond_a

    if-gt p1, v0, :cond_a

    const p1, 0xe683

    .line 21
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 22
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const v3, 0x70800

    if-le p1, v0, :cond_b

    if-gt p1, v3, :cond_b

    const p1, 0xf383

    .line 23
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 24
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_b
    const v0, 0xe1000

    if-le p1, v3, :cond_c

    if-gt p1, v0, :cond_c

    const p1, 0xf387

    .line 25
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 26
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_c
    const v3, 0x12c000

    if-le p1, v0, :cond_d

    if-gt p1, v3, :cond_d

    const p1, 0xfb03

    const/16 v0, 0x21

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 28
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_d
    if-le p1, v3, :cond_e

    const v0, 0x1e8480

    if-gt p1, v0, :cond_e

    const p1, 0xfd03

    const/4 v0, 0x2

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/c;->E(II)I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 30
    sget-object p1, Lcom/felhr/usbserial/c;->r:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/c;->H()V

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/c;->h:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/c;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/felhr/usbserial/c;->B()V

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/c;->i:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, p0, Lcom/felhr/usbserial/c;->j:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p0, v0, v2}, Lcom/felhr/usbserial/j;->l(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 4
    iput-boolean v1, p0, Lcom/felhr/usbserial/j;->f:Z

    .line 5
    new-instance v0, Lcom/felhr/usbserial/h;

    invoke-direct {v0, p0}, Lcom/felhr/usbserial/h;-><init>(Lcom/felhr/usbserial/k;)V

    iput-object v0, p0, Lcom/felhr/usbserial/j;->d:Lcom/felhr/usbserial/h;

    .line 6
    new-instance v0, Lcom/felhr/usbserial/i;

    invoke-direct {v0, p0}, Lcom/felhr/usbserial/i;-><init>(Lcom/felhr/usbserial/k;)V

    iput-object v0, p0, Lcom/felhr/usbserial/j;->e:Lcom/felhr/usbserial/i;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
