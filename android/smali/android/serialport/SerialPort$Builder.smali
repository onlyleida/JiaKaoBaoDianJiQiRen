.class public final Landroid/serialport/SerialPort$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/serialport/SerialPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baudrate:I

.field private dataBits:I

.field private device:Ljava/io/File;

.field private flags:I

.field private parity:I

.field private stopBits:I


# direct methods
.method private constructor <init>(Ljava/io/File;I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Landroid/serialport/SerialPort$Builder;->dataBits:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/serialport/SerialPort$Builder;->parity:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Landroid/serialport/SerialPort$Builder;->stopBits:I

    .line 7
    iput v0, p0, Landroid/serialport/SerialPort$Builder;->flags:I

    .line 8
    iput-object p1, p0, Landroid/serialport/SerialPort$Builder;->device:Ljava/io/File;

    .line 9
    iput p2, p0, Landroid/serialport/SerialPort$Builder;->baudrate:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;ILandroid/serialport/SerialPort$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/serialport/SerialPort$Builder;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Landroid/serialport/SerialPort$Builder;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/serialport/SerialPort$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/serialport/SerialPort$Builder;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/serialport/SerialPort;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v8, Landroid/serialport/SerialPort;

    iget-object v1, p0, Landroid/serialport/SerialPort$Builder;->device:Ljava/io/File;

    iget v2, p0, Landroid/serialport/SerialPort$Builder;->baudrate:I

    iget v3, p0, Landroid/serialport/SerialPort$Builder;->dataBits:I

    iget v4, p0, Landroid/serialport/SerialPort$Builder;->parity:I

    iget v5, p0, Landroid/serialport/SerialPort$Builder;->stopBits:I

    iget v6, p0, Landroid/serialport/SerialPort$Builder;->flags:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/serialport/SerialPort;-><init>(Ljava/io/File;IIIIILandroid/serialport/SerialPort$1;)V

    return-object v8
.end method

.method public dataBits(I)Landroid/serialport/SerialPort$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/serialport/SerialPort$Builder;->dataBits:I

    return-object p0
.end method

.method public flags(I)Landroid/serialport/SerialPort$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/serialport/SerialPort$Builder;->flags:I

    return-object p0
.end method

.method public parity(I)Landroid/serialport/SerialPort$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/serialport/SerialPort$Builder;->parity:I

    return-object p0
.end method

.method public stopBits(I)Landroid/serialport/SerialPort$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/serialport/SerialPort$Builder;->stopBits:I

    return-object p0
.end method
