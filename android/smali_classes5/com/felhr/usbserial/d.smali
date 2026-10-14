.class public Lcom/felhr/usbserial/d;
.super Lcom/felhr/usbserial/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/d$b;
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/String; = "d"


# instance fields
.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/felhr/usbserial/k$b;

.field private m:Lcom/felhr/usbserial/k$c;

.field private final n:Landroid/hardware/usb/UsbInterface;

.field private o:Landroid/hardware/usb/UsbEndpoint;

.field private p:Landroid/hardware/usb/UsbEndpoint;

.field private q:Lcom/felhr/usbserial/d$b;

.field private r:Lcom/felhr/usbserial/k$f;

.field private s:Lcom/felhr/usbserial/k$a;

.field private t:Lcom/felhr/usbserial/k$d;

.field private u:Lcom/felhr/usbserial/k$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/j;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/felhr/usbserial/d;->h:Z

    .line 3
    iput-boolean p2, p0, Lcom/felhr/usbserial/d;->i:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/felhr/usbserial/d;->j:Z

    .line 5
    iput-boolean v0, p0, Lcom/felhr/usbserial/d;->k:Z

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method static synthetic A(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/d;->t:Lcom/felhr/usbserial/k$d;

    return-object p0
.end method

.method static synthetic B(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/d;->s:Lcom/felhr/usbserial/k$a;

    return-object p0
.end method

.method private C()V
    .locals 2

    .line 1
    new-instance v0, Lcom/felhr/usbserial/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/felhr/usbserial/d$b;-><init>(Lcom/felhr/usbserial/d;Lcom/felhr/usbserial/d$a;)V

    iput-object v0, p0, Lcom/felhr/usbserial/d;->q:Lcom/felhr/usbserial/d$b;

    return-void
.end method

.method private D()[B
    .locals 9

    const/16 v0, 0x13

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v5

    const/16 v2, 0xc1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/16 v7, 0x13

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 2
    sget-object v2, Lcom/felhr/usbserial/d;->v:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Control Transfer Response (Comm status): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private E()[B
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v5

    const/16 v2, 0xc1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    return-object v0
.end method

.method private F()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lcom/felhr/usbserial/d;->v:Ljava/lang/String;

    const-string v3, "Interface succesfully claimed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

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

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 7
    iput-object v4, p0, Lcom/felhr/usbserial/d;->o:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 8
    :cond_0
    iput-object v4, p0, Lcom/felhr/usbserial/d;->p:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/felhr/usbserial/d;->G(II[B)I

    move-result v3

    if-gez v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x2580

    .line 10
    invoke-virtual {p0, v3}, Lcom/felhr/usbserial/d;->k(I)V

    const/4 v3, 0x3

    const/16 v4, 0x800

    .line 11
    invoke-direct {p0, v3, v4, v0}, Lcom/felhr/usbserial/d;->G(II[B)I

    move-result v3

    if-gez v3, :cond_3

    return v1

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, Lcom/felhr/usbserial/d;->H(I)V

    const/4 v3, 0x7

    .line 13
    invoke-direct {p0, v3, v1, v0}, Lcom/felhr/usbserial/d;->G(II[B)I

    move-result v0

    if-gez v0, :cond_4

    return v1

    :cond_4
    return v2

    .line 14
    :cond_5
    sget-object v0, Lcom/felhr/usbserial/d;->v:Ljava/lang/String;

    const-string v2, "Interface could not be claimed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private G(II[B)I
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

    const/16 v2, 0x41

    iget-object v0, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v5

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    .line 3
    sget-object p2, Lcom/felhr/usbserial/d;->v:Ljava/lang/String;

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

.method private I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/d;->q:Lcom/felhr/usbserial/d$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/d;->q:Lcom/felhr/usbserial/d$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/d;->q:Lcom/felhr/usbserial/d$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/felhr/usbserial/a;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/felhr/usbserial/d;->q:Lcom/felhr/usbserial/d$b;

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/felhr/usbserial/d;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->D()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/felhr/usbserial/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/d;->h:Z

    return p0
.end method

.method static synthetic q(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/d;->u:Lcom/felhr/usbserial/k$e;

    return-object p0
.end method

.method static synthetic r(Lcom/felhr/usbserial/d;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->E()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/felhr/usbserial/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/d;->j:Z

    return p0
.end method

.method static synthetic t(Lcom/felhr/usbserial/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/d;->j:Z

    return p1
.end method

.method static synthetic u(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/d;->l:Lcom/felhr/usbserial/k$b;

    return-object p0
.end method

.method static synthetic v(Lcom/felhr/usbserial/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/d;->i:Z

    return p0
.end method

.method static synthetic w(Lcom/felhr/usbserial/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/d;->k:Z

    return p0
.end method

.method static synthetic x(Lcom/felhr/usbserial/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/d;->k:Z

    return p1
.end method

.method static synthetic y(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/d;->m:Lcom/felhr/usbserial/k$c;

    return-object p0
.end method

.method static synthetic z(Lcom/felhr/usbserial/d;)Lcom/felhr/usbserial/k$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/d;->r:Lcom/felhr/usbserial/k$f;

    return-object p0
.end method


# virtual methods
.method public H(I)V
    .locals 8

    const/16 v0, 0x13

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eq p1, v6, :cond_3

    const/4 v7, 0x2

    if-eq p1, v7, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    return-void

    :cond_0
    new-array p1, v1, [B

    .line 1
    fill-array-data p1, :array_0

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 2
    fill-array-data v1, :array_1

    const/16 v3, 0x19

    .line 3
    invoke-direct {p0, v3, v2, v1}, Lcom/felhr/usbserial/d;->G(II[B)I

    .line 4
    invoke-direct {p0, v0, v2, p1}, Lcom/felhr/usbserial/d;->G(II[B)I

    goto :goto_0

    :cond_1
    new-array p1, v1, [B

    .line 5
    fill-array-data p1, :array_2

    .line 6
    iput-boolean v6, p0, Lcom/felhr/usbserial/d;->i:Z

    .line 7
    iput-boolean v2, p0, Lcom/felhr/usbserial/d;->h:Z

    .line 8
    invoke-direct {p0, v0, v2, p1}, Lcom/felhr/usbserial/d;->G(II[B)I

    const/16 p1, 0x101

    .line 9
    invoke-direct {p0, v5, p1, v4}, Lcom/felhr/usbserial/d;->G(II[B)I

    .line 10
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->D()[B

    move-result-object p1

    .line 11
    aget-byte p1, p1, v3

    and-int/2addr p1, v7

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/felhr/usbserial/d;->k:Z

    .line 12
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->I()V

    goto :goto_0

    :cond_3
    new-array p1, v1, [B

    .line 13
    fill-array-data p1, :array_3

    .line 14
    iput-boolean v6, p0, Lcom/felhr/usbserial/d;->h:Z

    .line 15
    iput-boolean v2, p0, Lcom/felhr/usbserial/d;->i:Z

    .line 16
    invoke-direct {p0, v0, v2, p1}, Lcom/felhr/usbserial/d;->G(II[B)I

    const/16 p1, 0x202

    .line 17
    invoke-direct {p0, v5, p1, v4}, Lcom/felhr/usbserial/d;->G(II[B)I

    .line 18
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->D()[B

    move-result-object p1

    .line 19
    aget-byte p1, p1, v3

    and-int/2addr p1, v6

    if-nez p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/felhr/usbserial/d;->j:Z

    .line 20
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->I()V

    goto :goto_0

    :cond_5
    new-array p1, v1, [B

    .line 21
    fill-array-data p1, :array_4

    .line 22
    iput-boolean v2, p0, Lcom/felhr/usbserial/d;->h:Z

    .line 23
    iput-boolean v2, p0, Lcom/felhr/usbserial/d;->i:Z

    .line 24
    invoke-direct {p0, v0, v2, p1}, Lcom/felhr/usbserial/d;->G(II[B)I

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public k(I)V
    .locals 4

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

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/16 p1, 0x1e

    .line 1
    invoke-direct {p0, p1, v2, v0}, Lcom/felhr/usbserial/d;->G(II[B)I

    return-void
.end method

.method public m()V
    .locals 3

    const/16 v0, 0x12

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/d;->G(II[B)I

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v2}, Lcom/felhr/usbserial/d;->G(II[B)I

    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->J()V

    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/j;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/d;->n:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->F()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/felhr/usbserial/d;->C()V

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/d;->o:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, p0, Lcom/felhr/usbserial/d;->p:Landroid/hardware/usb/UsbEndpoint;

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
