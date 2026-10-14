.class public Lcom/hw/videoprocessor/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    .line 2
    iput v0, p0, Lcom/hw/videoprocessor/g/f;->b:I

    const/16 v0, 0xc

    .line 3
    iput v0, p0, Lcom/hw/videoprocessor/g/f;->c:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/hw/videoprocessor/g/f;->d:I

    .line 5
    iput v0, p0, Lcom/hw/videoprocessor/g/f;->e:I

    .line 6
    iput p1, p0, Lcom/hw/videoprocessor/g/f;->b:I

    .line 7
    iput p2, p0, Lcom/hw/videoprocessor/g/f;->c:I

    .line 8
    iput p3, p0, Lcom/hw/videoprocessor/g/f;->d:I

    .line 9
    iput p4, p0, Lcom/hw/videoprocessor/g/f;->e:I

    .line 10
    invoke-static {p1, p2, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/hw/videoprocessor/g/f;->a:I

    return-void
.end method

.method private b(Ljava/io/FileOutputStream;JJJIJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    new-array v1, v0, [B

    const/16 v2, 0x52

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x49

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0x46

    aput-byte v5, v1, v2

    const/4 v2, 0x3

    aput-byte v5, v1, v2

    const-wide/16 v5, 0xff

    and-long v7, p4, v5

    long-to-int v2, v7

    int-to-byte v2, v2

    const/4 v7, 0x4

    aput-byte v2, v1, v7

    const/16 v2, 0x8

    shr-long v8, p4, v2

    and-long/2addr v8, v5

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x5

    aput-byte v8, v1, v9

    const/16 v8, 0x10

    shr-long v9, p4, v8

    and-long/2addr v9, v5

    long-to-int v10, v9

    int-to-byte v9, v10

    const/4 v10, 0x6

    aput-byte v9, v1, v10

    const/16 v9, 0x18

    shr-long v10, p4, v9

    and-long/2addr v10, v5

    long-to-int v11, v10

    int-to-byte v10, v11

    const/4 v11, 0x7

    aput-byte v10, v1, v11

    const/16 v10, 0x57

    aput-byte v10, v1, v2

    const/16 v10, 0x9

    const/16 v11, 0x41

    aput-byte v11, v1, v10

    const/16 v10, 0xa

    const/16 v11, 0x56

    aput-byte v11, v1, v10

    const/16 v10, 0xb

    const/16 v11, 0x45

    aput-byte v11, v1, v10

    const/16 v10, 0xc

    const/16 v11, 0x66

    aput-byte v11, v1, v10

    const/16 v10, 0xd

    const/16 v11, 0x6d

    aput-byte v11, v1, v10

    const/16 v10, 0xe

    const/16 v11, 0x74

    aput-byte v11, v1, v10

    const/16 v10, 0xf

    const/16 v12, 0x20

    aput-byte v12, v1, v10

    aput-byte v8, v1, v8

    const/16 v10, 0x11

    aput-byte v3, v1, v10

    const/16 v10, 0x12

    aput-byte v3, v1, v10

    const/16 v10, 0x13

    aput-byte v3, v1, v10

    const/16 v10, 0x14

    aput-byte v4, v1, v10

    const/16 v4, 0x15

    aput-byte v3, v1, v4

    move/from16 v4, p8

    int-to-byte v4, v4

    const/16 v10, 0x16

    aput-byte v4, v1, v10

    const/16 v4, 0x17

    aput-byte v3, v1, v4

    and-long v13, p6, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    shr-long v13, p6, v2

    and-long/2addr v13, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x19

    aput-byte v4, v1, v10

    shr-long v13, p6, v8

    and-long/2addr v13, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x1a

    aput-byte v4, v1, v10

    shr-long v13, p6, v9

    and-long/2addr v13, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x1b

    aput-byte v4, v1, v10

    and-long v13, p9, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x1c

    aput-byte v4, v1, v10

    shr-long v13, p9, v2

    and-long/2addr v13, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x1d

    aput-byte v4, v1, v10

    shr-long v13, p9, v8

    and-long/2addr v13, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x1e

    aput-byte v4, v1, v10

    shr-long v13, p9, v9

    and-long/2addr v13, v5

    long-to-int v4, v13

    int-to-byte v4, v4

    const/16 v10, 0x1f

    aput-byte v4, v1, v10

    aput-byte v7, v1, v12

    const/16 v4, 0x21

    aput-byte v3, v1, v4

    const/16 v4, 0x22

    aput-byte v8, v1, v4

    const/16 v4, 0x23

    aput-byte v3, v1, v4

    const/16 v4, 0x24

    const/16 v7, 0x64

    aput-byte v7, v1, v4

    const/16 v4, 0x25

    const/16 v7, 0x61

    aput-byte v7, v1, v4

    const/16 v4, 0x26

    aput-byte v11, v1, v4

    const/16 v4, 0x27

    aput-byte v7, v1, v4

    and-long v10, p2, v5

    long-to-int v4, v10

    int-to-byte v4, v4

    const/16 v7, 0x28

    aput-byte v4, v1, v7

    shr-long v10, p2, v2

    and-long/2addr v10, v5

    long-to-int v2, v10

    int-to-byte v2, v2

    const/16 v4, 0x29

    aput-byte v2, v1, v4

    shr-long v7, p2, v8

    and-long/2addr v7, v5

    long-to-int v2, v7

    int-to-byte v2, v2

    const/16 v4, 0x2a

    aput-byte v2, v1, v4

    shr-long v7, p2, v9

    and-long v4, v7, v5

    long-to-int v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x2b

    aput-byte v2, v1, v4

    move-object/from16 v2, p1

    .line 1
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/hw/videoprocessor/g/f;->b:I

    int-to-long v7, v0

    .line 2
    iget v9, p0, Lcom/hw/videoprocessor/g/f;->d:I

    mul-int/lit8 v0, v0, 0x10

    mul-int v0, v0, v9

    .line 3
    div-int/lit8 v0, v0, 0x8

    int-to-long v10, v0

    .line 4
    iget v0, p0, Lcom/hw/videoprocessor/g/f;->a:I

    new-array v0, v0, [B

    .line 5
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v1, 0x24

    add-long v5, v3, v1

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-direct/range {v1 .. v11}, Lcom/hw/videoprocessor/g/f;->b(Ljava/io/FileOutputStream;JJJIJ)V

    .line 9
    :goto_0
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 12
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
