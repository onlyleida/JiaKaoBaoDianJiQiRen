.class public Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bout:Ljava/io/ByteArrayOutputStream;

.field private dout:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->bout:Ljava/io/ByteArrayOutputStream;

    .line 3
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->dout:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public appendBCD(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->writeBCD(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    return-void
.end method

.method public appendBCD(Ljava/lang/String;I)V
    .locals 2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->writeBCD(Ljava/lang/String;)[B

    move-result-object p1

    .line 6
    array-length v0, p1

    if-eq v0, p2, :cond_1

    .line 7
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    return-void
.end method

.method public appendBYTE(I)V
    .locals 3

    const/16 v0, 0xff

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u975e\u6cd5\u7684\u65e0\u7b26\u53f7\u7684byte:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->dout:Ljava/io/DataOutputStream;

    and-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public appendBytes([B)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public appendDWORD(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 1
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u975e\u6cd5\u7684\u65e0\u7b26\u53f7\u7684int:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    move-wide p1, v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->dout:Ljava/io/DataOutputStream;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    return-void
.end method

.method public appendString(Ljava/lang/String;I)V
    .locals 4

    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 4
    array-length v1, v0

    if-gt v1, p2, :cond_0

    .line 5
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u7684\u5b57\u7b26\u4e32\u957f\u5ea6\u4e0d\u80fd\u5927\u4e8e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u5b57\u7b26\u4e32\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendWORD(I)V
    .locals 3

    const v0, 0xffff

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u975e\u6cd5\u7684\u65e0\u7b26\u53f7\u7684short:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->dout:Ljava/io/DataOutputStream;

    and-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
