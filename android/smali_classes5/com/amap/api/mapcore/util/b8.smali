.class public Lcom/amap/api/mapcore/util/b8;
.super Lcom/amap/api/mapcore/util/e8;
.source "SourceFile"


# static fields
.field public static d:I = 0xd

.field public static e:I = 0x6


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/e8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/e8;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b8;->c:Landroid/content/Context;

    return-void
.end method

.method private e(Landroid/content/Context;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.2."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/amap/api/mapcore/util/b8;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/amap/api/mapcore/util/b8;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string v3, "Android"

    .line 3
    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/g5;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/amap/api/mapcore/util/g5;->R(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/amap/api/mapcore/util/g5;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 7
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 8
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 9
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/amap/api/mapcore/util/g5;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/amap/api/mapcore/util/c5;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/amap/api/mapcore/util/c5;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/n5;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    aput-byte v1, p1, v1

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    const-string v1, "sm"

    const-string v3, "gh"

    .line 18
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    return-object v2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :goto_1
    throw p1
.end method


# virtual methods
.method protected b([B)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b8;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b8;->e(Landroid/content/Context;)[B

    move-result-object v0

    .line 2
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
