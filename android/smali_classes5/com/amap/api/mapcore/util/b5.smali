.class public Lcom/amap/api/mapcore/util/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[B

.field private static b:[B

.field static c:[B

.field static d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FDF1F436161AEF5B"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/b5;->a:[B

    const-string v0, "0102030405060708"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/b5;->b:[B

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/amap/api/mapcore/util/b5;->c:[B

    .line 4
    sput-object v0, Lcom/amap/api/mapcore/util/b5;->d:[B

    return-void
.end method

.method private static a(Landroid/content/Context;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/b5;->c:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore/util/b5;->c:[B

    return-object p0
.end method

.method public static b(Landroid/content/Context;[B)[B
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->a(Landroid/content/Context;)[B

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->d(Landroid/content/Context;)[B

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/amap/api/mapcore/util/h5;->i([B[B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static c([B)[B
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/b5;->a:[B

    sget-object v1, Lcom/amap/api/mapcore/util/b5;->b:[B

    invoke-static {v0, p0, v1}, Lcom/amap/api/mapcore/util/h5;->i([B[B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static d(Landroid/content/Context;)[B
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/b5;->d:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->a(Landroid/content/Context;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->a(Landroid/content/Context;)[B

    move-result-object p0

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {v0, v2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore/util/b5;->d:[B

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->a(Landroid/content/Context;)[B

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/amap/api/mapcore/util/b5;->d:[B

    .line 5
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore/util/b5;->d:[B

    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->a(Landroid/content/Context;)[B

    move-result-object v1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    sget-object p0, Lcom/amap/api/mapcore/util/b5;->d:[B

    return-object p0
.end method

.method public static e(Landroid/content/Context;[B)[B
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->a(Landroid/content/Context;)[B

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/b5;->d(Landroid/content/Context;)[B

    move-result-object p0

    .line 3
    invoke-static {v0, p1, p0}, Lcom/amap/api/mapcore/util/h5;->e([B[B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static f([B)[B
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/b5;->a:[B

    sget-object v1, Lcom/amap/api/mapcore/util/b5;->b:[B

    invoke-static {v0, p0, v1}, Lcom/amap/api/mapcore/util/h5;->e([B[B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
