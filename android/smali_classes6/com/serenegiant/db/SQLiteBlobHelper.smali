.class public Lcom/serenegiant/db/SQLiteBlobHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindBlobBitmap(Landroid/database/sqlite/SQLiteStatement;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/serenegiant/graphics/BitmapHelper;->BitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobDoubleArray(Landroid/database/sqlite/SQLiteStatement;I[D)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->doubleArrayToByteArray([DII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobDoubleArray(Landroid/database/sqlite/SQLiteStatement;I[DII)V
    .locals 0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->doubleArrayToByteArray([DII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobFloatArray(Landroid/database/sqlite/SQLiteStatement;I[F)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->floatArrayToByteArray([FII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobFloatArray(Landroid/database/sqlite/SQLiteStatement;I[FII)V
    .locals 0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->floatArrayToByteArray([FII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobIntArray(Landroid/database/sqlite/SQLiteStatement;I[I)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->intArrayToByteArray([III)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobIntArray(Landroid/database/sqlite/SQLiteStatement;I[III)V
    .locals 0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->intArrayToByteArray([III)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobLongArray(Landroid/database/sqlite/SQLiteStatement;I[J)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->longArrayToByteArray([JII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobLongArray(Landroid/database/sqlite/SQLiteStatement;I[JII)V
    .locals 0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->longArrayToByteArray([JII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobShortArray(Landroid/database/sqlite/SQLiteStatement;I[S)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->shortArrayToByteArray([SII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static bindBlobShortArray(Landroid/database/sqlite/SQLiteStatement;I[SII)V
    .locals 0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/serenegiant/db/SQLiteBlobHelper;->shortArrayToByteArray([SII)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public static byteArrayToDoubleArray([B)[D
    .locals 6

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 5
    new-array v1, v0, [D

    .line 6
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToFloatArray([B)[F
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 5
    new-array v1, v0, [F

    .line 6
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToIntArray([B)[I
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 5
    new-array v1, v0, [I

    .line 6
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToLongArray([B)[J
    .locals 6

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 5
    new-array v1, v0, [J

    .line 6
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToShortArray([B)[S
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/2addr v0, v1

    .line 5
    new-array v1, v0, [S

    .line 6
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x4

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x5

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x6

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v2, 0x7

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static doubleArrayToByteArray([DII)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x40

    .line 1
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 4
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 5
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 6
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 7
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 8
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 9
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 10
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 11
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 12
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static floatArrayToByteArray([FII)[B
    .locals 3

    mul-int/lit8 v0, p2, 0x20

    .line 1
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 4
    aget v2, p0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 5
    aget p1, p0, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 6
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 7
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 8
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 9
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 10
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 11
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 12
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmap(Landroid/database/Cursor;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmapStrictSize(Landroid/database/Cursor;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    .line 2
    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmapStrictSize([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobBitmapStrictSize(Landroid/database/Cursor;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 4
    invoke-static {p0, p2, p3}, Lcom/serenegiant/graphics/BitmapHelper;->asBitmapStrictSize([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobDoubleArray(Landroid/database/Cursor;I)[D
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToDoubleArray([B)[D

    move-result-object p0

    return-object p0
.end method

.method public static getBlobDoubleArray(Landroid/database/Cursor;Ljava/lang/String;[D)[D
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToDoubleArray([B)[D

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobFloatArray(Landroid/database/Cursor;I)[F
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToFloatArray([B)[F

    move-result-object p0

    return-object p0
.end method

.method public static getBlobFloatArray(Landroid/database/Cursor;Ljava/lang/String;[F)[F
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToFloatArray([B)[F

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobIntArray(Landroid/database/Cursor;I)[I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToIntArray([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static getBlobIntArray(Landroid/database/Cursor;Ljava/lang/String;[I)[I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToIntArray([B)[I

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobLongArray(Landroid/database/Cursor;I)[J
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToLongArray([B)[J

    move-result-object p0

    return-object p0
.end method

.method public static getBlobLongArray(Landroid/database/Cursor;Ljava/lang/String;[J)[J
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToLongArray([B)[J

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getBlobShortArray(Landroid/database/Cursor;I)[S
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToShortArray([B)[S

    move-result-object p0

    return-object p0
.end method

.method public static getBlobShortArray(Landroid/database/Cursor;Ljava/lang/String;[S)[S
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/db/SQLiteBlobHelper;->getBlob(Landroid/database/Cursor;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/serenegiant/db/SQLiteBlobHelper;->byteArrayToShortArray([B)[S

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static intArrayToByteArray([III)[B
    .locals 3

    mul-int/lit8 v0, p2, 0x20

    .line 1
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 4
    aget v2, p0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 5
    aget p1, p0, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 6
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 7
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 8
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 9
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 10
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 11
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 12
    aget p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static longArrayToByteArray([JII)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x40

    .line 1
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 4
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 5
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 6
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 7
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 8
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 9
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 10
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 11
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 12
    aget-wide v2, p0, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static shortArrayToByteArray([SII)[B
    .locals 3

    mul-int/lit8 v0, p2, 0x10

    .line 1
    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    rem-int/lit8 v1, p2, 0x8

    add-int/2addr v1, p1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 4
    aget-short v2, p0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    .line 5
    aget-short p1, p0, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x1

    .line 6
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x2

    .line 7
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x3

    .line 8
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x4

    .line 9
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x5

    .line 10
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x6

    .line 11
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, v1, 0x7

    .line 12
    aget-short p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
