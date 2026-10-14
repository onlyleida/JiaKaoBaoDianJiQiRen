.class public Lcom/felhr/usbserial/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:[B

.field private d:I

.field private e:I

.field protected final f:Lcom/felhr/usbserial/k;


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/felhr/usbserial/h;->a:I

    const/16 v1, 0x4000

    .line 3
    iput v1, p0, Lcom/felhr/usbserial/h;->b:I

    .line 4
    iput-object p1, p0, Lcom/felhr/usbserial/h;->f:Lcom/felhr/usbserial/k;

    new-array p1, v1, [B

    .line 5
    iput-object p1, p0, Lcom/felhr/usbserial/h;->c:[B

    .line 6
    iput v0, p0, Lcom/felhr/usbserial/h;->d:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/felhr/usbserial/h;->e:I

    return-void
.end method

.method private a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/h;->e:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/felhr/usbserial/h;->d:I

    if-ge v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/h;->c:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/felhr/usbserial/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/felhr/usbserial/h;->d:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/felhr/usbserial/h;->e:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/h;->e:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Lcom/felhr/usbserial/h;->d:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/h;->a()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/h;->f:Lcom/felhr/usbserial/k;

    iget-object v1, p0, Lcom/felhr/usbserial/h;->c:[B

    iget v2, p0, Lcom/felhr/usbserial/h;->a:I

    invoke-interface {v0, v1, v2}, Lcom/felhr/usbserial/k;->b([BI)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iput v0, p0, Lcom/felhr/usbserial/h;->e:I

    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/h;->c:[B

    iget v1, p0, Lcom/felhr/usbserial/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/felhr/usbserial/h;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/h;->f:Lcom/felhr/usbserial/k;

    iget v1, p0, Lcom/felhr/usbserial/h;->a:I

    invoke-interface {v0, p1, v1}, Lcom/felhr/usbserial/k;->b([BI)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    if-ltz p2, :cond_3

    if-ltz p3, :cond_2

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1

    if-nez p2, :cond_0

    .line 7
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/felhr/usbserial/h;->read([B)I

    move-result p1

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/h;->f:Lcom/felhr/usbserial/k;

    iget v1, p0, Lcom/felhr/usbserial/h;->a:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/felhr/usbserial/k;->a([BIII)I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Length greater than b.length - off"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Length must positive"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Offset must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
