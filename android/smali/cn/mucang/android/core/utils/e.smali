.class public Lcn/mucang/android/core/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "e"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)[B
    .locals 1

    const/16 v0, 0x5000

    .line 1
    invoke-static {p0, p1, v0}, Lcn/mucang/android/core/utils/e;->b(Landroid/graphics/Bitmap;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;II)[B
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, ",center:"

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 4
    sget-object v7, Lcn/mucang/android/core/utils/e;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "originSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",maxDif:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    array-length v8, v4

    if-ge v8, v1, :cond_0

    const-string v0, "small enough ,return origin."

    .line 6
    invoke-static {v7, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    invoke-static {v5}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object v4

    :cond_0
    invoke-static {v5}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    const/16 v4, 0xa

    :goto_0
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v7, v7, v8

    int-to-float v8, v4

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v7, v4

    .line 8
    :try_start_2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v7, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 11
    array-length v9, v5

    sub-int/2addr v9, v1

    .line 12
    sget-object v10, Lcn/mucang/android/core/utils/e;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compressed size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v2, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compressed OK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-static {v8}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object v5

    :cond_1
    const-string v11, ",try "

    const-string v12, ","

    const-string v13, ",float "

    const-string v14, ",maxDif "

    const-string v15, "-"

    if-lez v9, :cond_4

    const/16 v0, 0xb

    if-le v7, v0, :cond_3

    if-ne v7, v6, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ed3\u679c\u592a\u5927\uff0c\u964d\u4f4e\u54c1\u8d28,gap:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_2

    .line 17
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u7ecf\u4f7f\u7528\u6700\u5927\u7684\u538b\u7f29\u7ea7\u522b\uff0c\u65e0\u6cd5\u538b\u7f29\u5230\u6307\u5b9a\u8303\u56f4\u5185\uff0c\u4f7f\u7528\u6700\u4f4e\u538b\u7f29\u7ea7\u522b\u8fd4\u56de,gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    invoke-static {v8}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object v5

    :cond_4
    const/16 v0, 0x63

    if-ge v4, v0, :cond_6

    if-ne v4, v7, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ed3\u679c\u592a\u5c0f\uff0c\u63d0\u9ad8\u54c1\u8d28,gap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v7

    .line 20
    :goto_2
    invoke-static {v8}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object v5, v8

    goto/16 :goto_0

    .line 21
    :cond_6
    :goto_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u7ecf\u4f7f\u7528\u4e86\u6700\u4f18\u7684\u538b\u7f29\u7ea7\u522b\uff0c\u56fe\u7247\u5927\u5c0f\u65e0\u6cd5\u8fbe\u5230\u6307\u5b9a\u8303\u56f4\u5185\uff0c\u76f4\u63a5\u4f7f\u7528\u6700\u4f18\u6570\u636e\u8fd4\u56de,gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22
    invoke-static {v8}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object v5

    :catchall_0
    move-exception v0

    move-object v5, v8

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v5}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 23
    throw v0

    :catchall_2
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 24
    :goto_5
    invoke-static {v4}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 25
    throw v0
.end method

.method public static c(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {v0, p0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p0

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :goto_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 7
    throw p0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 4
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10e

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    goto :goto_1

    :cond_3
    const/16 v0, 0xb4

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 7
    invoke-static {v1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public static e(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    invoke-static {v0, v3}, Lcn/mucang/android/core/utils/e;->c(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 9
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/core/utils/e;->d(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_0

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_1

    :cond_0
    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    :try_start_0
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-le v5, v1, :cond_2

    if-le v6, v2, :cond_2

    int-to-double v12, v5

    mul-double v12, v12, v10

    int-to-double v14, v1

    div-double/2addr v12, v14

    int-to-double v5, v6

    mul-double v5, v5, v10

    int-to-double v14, v2

    div-double/2addr v5, v14

    .line 11
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_1

    :cond_2
    if-le v5, v1, :cond_3

    int-to-double v5, v5

    mul-double v5, v5, v10

    int-to-double v12, v1

    :goto_0
    div-double/2addr v5, v12

    goto :goto_1

    :cond_3
    if-le v6, v2, :cond_4

    int-to-double v5, v6

    mul-double v5, v5, v10

    int-to-double v12, v2

    goto :goto_0

    :cond_4
    move-wide v5, v10

    :goto_1
    cmpl-double v8, v5, v10

    if-lez v8, :cond_7

    const/4 v8, 0x2

    :goto_2
    int-to-double v10, v8

    sub-double v12, v10, v5

    .line 12
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpg-double v16, v12, v14

    if-ltz v16, :cond_6

    cmpl-double v12, v10, v5

    if-lez v12, :cond_5

    goto :goto_3

    :cond_5
    shl-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    shr-int/lit8 v4, v8, 0x1

    .line 13
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 14
    :cond_7
    invoke-static {v0, v3}, Lcn/mucang/android/core/utils/e;->c(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_8

    .line 15
    :try_start_1
    invoke-static {v3, v7}, Lcn/mucang/android/core/utils/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 16
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/high16 v0, 0x3f800000    # 1.0f

    if-le v13, v1, :cond_9

    if-le v14, v2, :cond_9

    .line 18
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v13

    mul-float v4, v4, v0

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v1, v14

    mul-float v1, v1, v0

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 19
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v0, v1

    .line 20
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    :cond_9
    if-le v13, v1, :cond_a

    .line 21
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v13

    mul-float v2, v2, v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 22
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_4

    :cond_a
    if-le v14, v2, :cond_b

    .line 23
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v14

    mul-float v1, v1, v0

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 24
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_b
    :goto_4
    move-object v15, v9

    if-eqz v15, :cond_c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object v10, v3

    .line 25
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v9, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 26
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 28
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 29
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v3, v9

    :cond_c
    :goto_6
    return-object v3
.end method

.method public static f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 2
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotateBitmapByDegree decodeFile OutOfMemoryError."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ESA"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    if-eq p0, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method
