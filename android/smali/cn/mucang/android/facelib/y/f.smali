.class public Lcn/mucang/android/facelib/y/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/facelib/y/e;


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

.method public static b(Landroid/content/res/AssetManager;Ljava/lang/String;IZZ)Lcn/mucang/android/facelib/y/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, F

    new-instance v1, Lcn/mucang/android/facelib/y/f;

    invoke-direct {v1}, Lcn/mucang/android/facelib/y/f;-><init>()V

    .line 2
    iput p2, v1, Lcn/mucang/android/facelib/y/f;->b:I

    .line 3
    :try_start_0
    new-instance p2, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {p2}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    const/4 v2, 0x4

    if-eqz p3, :cond_0

    .line 4
    new-instance v3, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;

    invoke-direct {v3}, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;-><init>()V

    .line 5
    new-instance v4, Lorg/tensorflow/lite/gpu/GpuDelegate;

    invoke-direct {v4, v3}, Lorg/tensorflow/lite/gpu/GpuDelegate;-><init>(Lorg/tensorflow/lite/gpu/GpuDelegate$Options;)V

    .line 6
    invoke-virtual {p2, v4}, Lorg/tensorflow/lite/Interpreter$Options;->addDelegate(Lorg/tensorflow/lite/Delegate;)Lorg/tensorflow/lite/Interpreter$Options;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, v2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    .line 8
    :goto_0
    new-instance v3, Lorg/tensorflow/lite/Interpreter;

    invoke-static {p0, p1}, Lcn/mucang/android/facelib/y/f;->d(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-direct {v3, p0, p2}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v3, v1, Lcn/mucang/android/facelib/y/f;->f:Lorg/tensorflow/lite/Interpreter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    new-instance p0, Lorg/tensorflow/lite/gpu/CompatibilityList;

    invoke-direct {p0}, Lorg/tensorflow/lite/gpu/CompatibilityList;-><init>()V

    if-nez p3, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/tensorflow/lite/gpu/CompatibilityList;->isDelegateSupportedOnThisDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "\u4eba\u8138Tensorflow\u652f\u6301GPU\u52a0\u901f\uff1aFALSE"

    .line 11
    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, "\u4eba\u8138Tensorflow\u652f\u6301GPU\u52a0\u901f\uff1aTRUE"

    .line 12
    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 13
    :goto_2
    iput-boolean p4, v1, Lcn/mucang/android/facelib/y/f;->a:Z

    if-eqz p4, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x4

    .line 14
    :goto_3
    iget p1, v1, Lcn/mucang/android/facelib/y/f;->b:I

    mul-int/lit8 p2, p1, 0x1

    mul-int p2, p2, p1

    const/4 p1, 0x3

    mul-int/lit8 p2, p2, 0x3

    mul-int p2, p2, p0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v1, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    iget p0, v1, Lcn/mucang/android/facelib/y/f;->b:I

    mul-int p0, p0, p0

    new-array p0, p0, [I

    iput-object p0, v1, Lcn/mucang/android/facelib/y/f;->c:[I

    .line 17
    iget-object p0, v1, Lcn/mucang/android/facelib/y/f;->f:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {p0, v2}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    new-array p0, p1, [I

    .line 18
    fill-array-data p0, :array_0

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[F

    const/4 p0, 0x2

    new-array p1, p0, [I

    .line 19
    fill-array-data p1, :array_1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    new-array p0, p0, [I

    .line 20
    fill-array-data p0, :array_2

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    return-object v1

    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :array_0
    .array-data 4
        0x1
        0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method static synthetic c(Lorg/tensorflow/lite/Interpreter;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->close()V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
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
.method public a(Landroid/graphics/Bitmap;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/facelib/y/e$a;",
            ">;"
        }
    .end annotation

    const-string v0, "recognizeImage"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "preprocessBitmap"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/facelib/y/f;->c:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcn/mucang/android/facelib/y/f;->b:I

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    .line 6
    :goto_1
    iget v2, p0, Lcn/mucang/android/facelib/y/f;->b:I

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->c:[I

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    aget v2, v3, v2

    .line 8
    iget-boolean v3, p0, Lcn/mucang/android/facelib/y/f;->a:Z

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 12
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x43000000    # 128.0f

    sub-float/2addr v4, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    sub-float/2addr v4, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    sub-float/2addr v2, v5

    div-float/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "feed"

    .line 16
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 17
    iget-object v2, p0, Lcn/mucang/android/facelib/y/f;->e:Ljava/nio/ByteBuffer;

    aput-object v2, v1, p1

    .line 18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 20
    fill-array-data v3, :array_0

    const-class v4, F

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcn/mucang/android/facelib/y/f;->d:[[F

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lcn/mucang/android/facelib/y/f;->d:[[F

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "run"

    .line 22
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/facelib/y/f;->f:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {p1, v1, v2}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    new-instance v0, Lcn/mucang/android/facelib/y/e$a;

    invoke-direct {v0}, Lcn/mucang/android/facelib/y/e$a;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    .line 28
    iget-object p2, p0, Lcn/mucang/android/facelib/y/f;->d:[[F

    invoke-virtual {v0, p2}, Lcn/mucang/android/facelib/y/e$a;->c(Ljava/lang/Object;)V

    .line 29
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :array_0
    .array-data 4
        0x1
        0xc0
    .end array-data
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/y/f;->f:Lorg/tensorflow/lite/Interpreter;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/android/facelib/y/f;->f:Lorg/tensorflow/lite/Interpreter;

    .line 3
    new-instance v1, Lcn/mucang/android/facelib/y/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/facelib/y/a;-><init>(Lorg/tensorflow/lite/Interpreter;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
