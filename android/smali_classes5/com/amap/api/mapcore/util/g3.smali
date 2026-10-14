.class public Lcom/amap/api/mapcore/util/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 1
    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    .line 4
    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0xff

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g3;->h(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    .line 5
    invoke-static {p0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    invoke-static {p0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p0, v2, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "setNinePatchChunk"

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 10
    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "mNinePatchChunk"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 12
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_1
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/g3;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    invoke-static {p1, v4}, Lcom/amap/api/mapcore/util/g3;->g([BLandroid/graphics/Rect;)V

    .line 6
    new-instance p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object p1
.end method

.method private static d(Landroid/graphics/Bitmap;[B)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v9, v0, [I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v9

    move v4, v0

    move v7, v0

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, -0x1000000

    if-ge v2, v0, :cond_1

    .line 4
    aget v4, v9, v2

    if-ne v3, v4, :cond_0

    const/16 v4, 0xc

    .line 5
    invoke-static {p1, v4, v2}, Lcom/amap/api/mapcore/util/g3;->f([BII)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 6
    aget v4, v9, v2

    if-ne v3, v4, :cond_2

    const/16 v4, 0x10

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    .line 7
    invoke-static {p1, v4, v0}, Lcom/amap/api/mapcore/util/g3;->f([BII)V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 8
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v2, v0, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, v2

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_4
    if-ge v1, v0, :cond_5

    .line 10
    aget p0, v2, v1

    if-ne v3, p0, :cond_4

    const/16 p0, 0x14

    .line 11
    invoke-static {p1, p0, v1}, Lcom/amap/api/mapcore/util/g3;->f([BII)V

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p0, v0, -0x1

    :goto_6
    if-ltz p0, :cond_7

    .line 12
    aget v1, v2, p0

    if-ne v3, v1, :cond_6

    const/16 v1, 0x18

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x2

    .line 13
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore/util/g3;->f([BII)V

    goto :goto_7

    :cond_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method

.method private static e(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static f([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    .line 1
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 4
    aput-byte p2, p0, p1

    return-void
.end method

.method private static g([BLandroid/graphics/Rect;)V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/g3;->a([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x10

    .line 2
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/g3;->a([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const/16 v0, 0x14

    .line 3
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/g3;->a([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    const/16 v0, 0x18

    .line 4
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/g3;->a([BI)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static h(Landroid/graphics/Bitmap;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v11, v3, -0x2

    .line 5
    new-array v12, v11, [I

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v6, v11

    .line 6
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7
    aget v0, v12, v10

    const/high16 v1, -0x1000000

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v3, v11, -0x1

    .line 8
    aget v3, v12, v3

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v4, v11, :cond_4

    .line 9
    aget v7, v12, v4

    if-eq v5, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 10
    invoke-static {v9, v4}, Lcom/amap/api/mapcore/util/g3;->e(Ljava/io/OutputStream;I)V

    .line 11
    aget v5, v12, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 12
    invoke-static {v9, v11}, Lcom/amap/api/mapcore/util/g3;->e(Ljava/io/OutputStream;I)V

    :cond_5
    add-int/lit8 v4, v6, 0x1

    if-eqz v0, :cond_6

    add-int/lit8 v4, v4, -0x1

    :cond_6
    if-eqz v3, :cond_7

    add-int/lit8 v4, v4, -0x1

    :cond_7
    const/4 v0, 0x2

    sub-int/2addr v8, v0

    .line 13
    new-array v3, v8, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object v12, v3

    move/from16 v18, v8

    .line 14
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 15
    aget v5, v3, v10

    if-ne v5, v1, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v7, v8, -0x1

    .line 16
    aget v7, v3, v7

    if-ne v7, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v7, v8, :cond_b

    .line 17
    aget v13, v3, v7

    if-eq v11, v13, :cond_a

    add-int/lit8 v12, v12, 0x1

    .line 18
    invoke-static {v9, v7}, Lcom/amap/api/mapcore/util/g3;->e(Ljava/io/OutputStream;I)V

    .line 19
    aget v11, v3, v7

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    add-int/lit8 v12, v12, 0x1

    .line 20
    invoke-static {v9, v8}, Lcom/amap/api/mapcore/util/g3;->e(Ljava/io/OutputStream;I)V

    :cond_c
    add-int/lit8 v3, v12, 0x1

    if-eqz v5, :cond_d

    add-int/lit8 v3, v3, -0x1

    :cond_d
    if-eqz v1, :cond_e

    add-int/lit8 v3, v3, -0x1

    :cond_e
    const/4 v1, 0x0

    :goto_7
    mul-int v5, v4, v3

    if-ge v1, v5, :cond_f

    .line 21
    invoke-static {v9, v2}, Lcom/amap/api/mapcore/util/g3;->e(Ljava/io/OutputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 22
    :cond_f
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 23
    aput-byte v2, v1, v10

    int-to-byte v3, v6

    .line 24
    aput-byte v3, v1, v2

    int-to-byte v2, v12

    .line 25
    aput-byte v2, v1, v0

    const/4 v0, 0x3

    int-to-byte v2, v5

    .line 26
    aput-byte v2, v1, v0

    move-object/from16 v0, p0

    .line 27
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/g3;->d(Landroid/graphics/Bitmap;[B)V

    return-object v1
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/l3;->b(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g3;->b(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method
