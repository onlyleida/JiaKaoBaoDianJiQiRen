.class public Lcom/amap/api/mapcore/util/x7;
.super Lcom/amap/api/mapcore/util/e8;
.source "SourceFile"


# instance fields
.field c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/e8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/e8;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/x7;->c:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected b([B)[B
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x7;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x7;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x7;->c:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method public c([B)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x7;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
