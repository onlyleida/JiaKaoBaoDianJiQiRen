.class public Lcn/mucang/android/facelib/y/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/facelib/y/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[I

.field private d:[[F

.field private e:Ljava/nio/ByteBuffer;

.field private f:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;IZZ)Lcn/mucang/android/facelib/y/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, F

    new-instance v1, Lcn/mucang/android/facelib/y/b;

    invoke-direct {v1}, Lcn/mucang/android/facelib/y/b;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/mucang/android/facelib/y/b;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 3
    iput p2, v1, Lcn/mucang/android/facelib/y/b;->b:I

    .line 4
    :try_start_0
    new-instance p1, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {p1}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    const/4 p2, 0x4

    if-eqz p3, :cond_0

    .line 5
    new-instance v2, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;

    invoke-direct {v2}, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;-><init>()V

    .line 6
    new-instance v3, Lorg/tensorflow/lite/gpu/GpuDelegate;

    invoke-direct {v3, v2}, Lorg/tensorflow/lite/gpu/GpuDelegate;-><init>(Lorg/tensorflow/lite/gpu/GpuDelegate$Options;)V

    .line 7
    invoke-virtual {p1, v3}, Lorg/tensorflow/lite/Interpreter$Options;->addDelegate(Lorg/tensorflow/lite/Delegate;)Lorg/tensorflow/lite/Interpreter$Options;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    .line 9
    :goto_0
    new-instance v2, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {v2, p0, p1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v2, v1, Lcn/mucang/android/facelib/y/b;->f:Lorg/tensorflow/lite/Interpreter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance p0, Lorg/tensorflow/lite/gpu/CompatibilityList;

    invoke-direct {p0}, Lorg/tensorflow/lite/gpu/CompatibilityList;-><init>()V

    if-nez p3, :cond_2

    .line 11
    invoke-virtual {p0}, Lorg/tensorflow/lite/gpu/CompatibilityList;->isDelegateSupportedOnThisDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "\u53e3\u7f69Tensorflow\u652f\u6301GPU\u52a0\u901f\uff1aFALSE"

    .line 12
    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, "\u53e3\u7f69Tensorflow\u652f\u6301GPU\u52a0\u901f\uff1aTRUE"

    .line 13
    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 14
    :goto_2
    iput-boolean p4, v1, Lcn/mucang/android/facelib/y/b;->a:Z

    if-eqz p4, :cond_3

    const/4 p2, 0x1

    .line 15
    :cond_3
    iget p0, v1, Lcn/mucang/android/facelib/y/b;->b:I

    mul-int/lit8 p1, p0, 0x1

    mul-int p1, p1, p0

    mul-int/lit8 p1, p1, 0x3

    mul-int p1, p1, p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v1, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    iget p0, v1, Lcn/mucang/android/facelib/y/b;->b:I

    mul-int p0, p0, p0

    new-array p0, p0, [I

    iput-object p0, v1, Lcn/mucang/android/facelib/y/b;->c:[I

    const/4 p0, 0x2

    new-array p1, p0, [I

    .line 18
    fill-array-data p1, :array_0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    new-array p0, p0, [I

    .line 19
    fill-array-data p0, :array_1

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    iput-object p0, v1, Lcn/mucang/android/facelib/y/b;->d:[[F

    return-object v1

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private static c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 5
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    .line 6
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/facelib/y/d;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, F

    const-string v1, "recognizeImage"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v1, "preprocessBitmap"

    .line 2
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcn/mucang/android/facelib/y/b;->c:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcn/mucang/android/facelib/y/b;->b:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget v3, p0, Lcn/mucang/android/facelib/y/b;->b:I

    if-ge v2, v3, :cond_1

    .line 7
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->c:[I

    mul-int v3, v3, v1

    add-int/2addr v3, v2

    aget v3, v4, v3

    .line 8
    iget-boolean v4, p0, Lcn/mucang/android/facelib/y/b;->a:Z

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 12
    :cond_0
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/4 v6, 0x0

    sub-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    sub-float/2addr v3, v6

    div-float/2addr v3, v7

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "feed"

    .line 16
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 17
    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    new-array v2, v1, [I

    .line 18
    fill-array-data v2, :array_1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcn/mucang/android/facelib/y/b;->d:[[F

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 19
    iget-object v3, p0, Lcn/mucang/android/facelib/y/b;->e:Ljava/nio/ByteBuffer;

    aput-object v3, v2, p1

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcn/mucang/android/facelib/y/b;->d:[[F

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "run"

    .line 23
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 24
    iget-object v4, p0, Lcn/mucang/android/facelib/y/b;->f:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v4, v2, v3}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    if-nez v3, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    const/4 v4, 0x1

    .line 27
    :goto_4
    new-instance v5, Lcn/mucang/android/facelib/y/d;

    iget-object v6, p0, Lcn/mucang/android/facelib/y/b;->d:[[F

    aget-object v6, v6, p1

    aget v6, v6, v3

    invoke-direct {v5, v4, v6}, Lcn/mucang/android/facelib/y/d;-><init>(IF)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 28
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v2

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/y/b;->f:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/facelib/y/b;->f:Lorg/tensorflow/lite/Interpreter;

    :cond_0
    return-void
.end method
