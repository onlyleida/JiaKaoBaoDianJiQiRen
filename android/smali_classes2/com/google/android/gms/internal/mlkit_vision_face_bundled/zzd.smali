.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/graphics/Bitmap;Z)Ljava/nio/ByteBuffer;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 3
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-double v0, v9

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v0

    int-to-double v4, v8

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int v0, v0, v1

    add-int/2addr v0, v10

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v9, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    .line 7
    aget v6, v11, v3

    shr-int/lit8 v7, v6, 0x10

    const/16 v12, 0xff

    and-int/2addr v7, v12

    shr-int/lit8 v13, v6, 0x8

    and-int/2addr v13, v12

    and-int/2addr v6, v12

    mul-int/lit8 v14, v7, -0x26

    mul-int/lit8 v15, v13, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v6, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v15, v7, 0x70

    mul-int/lit8 v16, v13, 0x5e

    sub-int v15, v15, v16

    mul-int/lit8 v16, v6, 0x12

    sub-int v15, v15, v16

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit16 v15, v15, 0x80

    add-int/lit8 v16, v4, 0x1

    mul-int/lit8 v7, v7, 0x42

    mul-int/lit16 v13, v13, 0x81

    add-int/2addr v7, v13

    mul-int/lit8 v6, v6, 0x19

    add-int/2addr v7, v6

    add-int/lit16 v7, v7, 0x80

    shr-int/lit8 v6, v7, 0x8

    add-int/lit8 v6, v6, 0x10

    .line 8
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v0, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    add-int/lit8 v4, v10, 0x1

    .line 9
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v0, v10, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v4, 0x1

    .line 10
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v0, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
