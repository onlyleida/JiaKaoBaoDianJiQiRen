.class public Lcom/alivc/component/encoder/VideoCodecEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/alivc/component/encoder/NativeUsed;
.end annotation


# static fields
.field public static final ERROR_API_LEVEL:I = 0x10003100

.field public static final ERROR_INPUT_BUFFER_ERROR:I = 0x10003102

.field public static final ERROR_NO_BUFFER_AVAILABLE:I = 0x10003103

.field public static final ERROR_STATE:I = 0x10003101

.field public static final OK:I = 0x0

.field private static final STATE_ENCODING:I = 0x2

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUPPORTED_COLOR_FORMATS:[I

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1.2.2"


# instance fields
.field private encodeFormat:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputCount:I

.field private mState:I

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->SUPPORTED_COLOR_FORMATS:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alivc/component/encoder/VideoCodecEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x27
        0x13
        0x14
        0x7f000100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;ZLjava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    const p0, 0x7f000789

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget v0, v0, p2

    invoke-static {v0}, Lcom/alivc/component/encoder/VideoCodecEncoder;->isRecognizedFormat(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method


# virtual methods
.method public createInputSurface()Landroid/view/Surface;
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string v2, "create surface input failed"

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    sget-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string v2, "not support surface input"

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Landroid/media/MediaFormat;ZI)I
    .locals 24
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "level"

    const-string v5, "profile"

    const-string v6, "i-frame-interval"

    const-string v7, ","

    const-string v8, "frame-rate"

    iget v9, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    if-nez v9, :cond_6

    const/4 v9, 0x0

    :try_start_0
    iput v9, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alivc/component/encoder/VideoCodecEncoder;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v11

    const/4 v12, -0x1

    if-nez v11, :cond_0

    sget-object v3, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not supported mime type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_0
    sget-object v13, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Create MediaCodec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v14

    iput-object v14, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v14

    iget-object v15, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, p3

    invoke-static {v11, v15, v2}, Lcom/alivc/component/encoder/VideoCodecEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;ZLjava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    if-nez v2, :cond_1

    return v12

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selected format "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const-string v2, "color-format"

    :try_start_2
    iget v12, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    invoke-virtual {v3, v2, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move/from16 v2, p4

    invoke-virtual {v3, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v12, 0x200

    invoke-virtual {v3, v4, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    const-string v15, "height"

    const-string v10, "width"

    const/16 v2, 0x15

    if-lt v12, v2, :cond_2

    const/16 v2, 0x1d

    if-ge v12, v2, :cond_2

    :try_start_3
    const-class v2, Landroid/media/MediaCodecInfo$VideoCapabilities;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v9, "create"

    move-object/from16 v17, v11

    const/4 v11, 0x2

    :try_start_4
    new-array v1, v11, [Ljava/lang/Class;

    const-class v18, Landroid/media/MediaFormat;

    const/16 v16, 0x0

    aput-object v18, v1, v16

    const-class v18, Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/16 v19, 0x1

    aput-object v18, v1, v19

    invoke-virtual {v2, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v2, v9

    aput-object v14, v2, v19

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v9

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v11

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v14

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v16

    move-object/from16 v18, v4

    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v19, v10

    invoke-virtual {v3, v15}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v20, v15

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v21, v5

    invoke-virtual {v1, v4, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v5

    move-object/from16 v22, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v6

    const-string v6, "bitrateRange ["

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], widthAlignment = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", heightAlignment = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", widthRange ["

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], heightRange ["

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], isSizeSupport = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sizeAndRateSupport = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v5, v15

    invoke-virtual {v1, v4, v10, v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    if-lt v12, v1, :cond_3

    const-string v1, "stride"

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "slice-height"

    invoke-virtual {v3, v1, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v8

    move-object/from16 v19, v10

    move-object/from16 v17, v11

    move-object/from16 v20, v15

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoder bitrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bitrate"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encoder i frame interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encoder frame rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encoder profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encoder level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encoder width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encoder height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v1, p0

    :try_start_5
    iget-object v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput v5, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    const-string v2, "OMX.IMG.TOPAZ.VIDEO.Encoder"

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Product:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    const/16 v3, 0x27

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v3, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x13

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x14

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    goto :goto_1

    :cond_4
    const/16 v2, 0x15

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    :cond_5
    :goto_1
    iget v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    return v2

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_2
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_3
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_4
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_5
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_6
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const v2, 0x10003101

    return v2

    :catch_a
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_7
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v2

    :catch_b
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_8
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return v2

    :catch_c
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_9
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v2

    :catch_d
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_a
    sget-object v4, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string v5, "Create MediaCodec Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return v2

    :cond_6
    const v2, 0x10003101

    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initWithColorSpace(Ljava/lang/String;Landroid/media/MediaFormat;ZIII)I
    .locals 25
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "level"

    const-string v5, "profile"

    const-string v6, "i-frame-interval"

    const-string v7, ","

    const-string v8, "frame-rate"

    iget v9, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    if-nez v9, :cond_d

    const/4 v9, 0x0

    :try_start_0
    iput v9, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alivc/component/encoder/VideoCodecEncoder;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v11

    const/4 v12, -0x1

    if-nez v11, :cond_0

    sget-object v3, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not supported mime type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_0
    sget-object v13, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Create MediaCodec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "1.2.2"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v14

    iput-object v14, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v14

    iget-object v15, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, p3

    invoke-static {v11, v15, v2}, Lcom/alivc/component/encoder/VideoCodecEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;ZLjava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    if-nez v2, :cond_1

    return v12

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selected format "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const-string v2, "color-format"

    :try_start_2
    iget v12, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    invoke-virtual {v3, v2, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move/from16 v2, p4

    invoke-virtual {v3, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v12, 0x200

    invoke-virtual {v3, v4, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    const-string v15, "height"

    const-string v10, "width"

    const/16 v2, 0x15

    const/4 v9, 0x2

    if-lt v12, v2, :cond_2

    const/16 v2, 0x1d

    if-ge v12, v2, :cond_2

    :try_start_3
    const-class v2, Landroid/media/MediaCodecInfo$VideoCapabilities;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v17, v11

    const-string v11, "create"

    :try_start_4
    new-array v1, v9, [Ljava/lang/Class;

    const-class v18, Landroid/media/MediaFormat;

    const/16 v16, 0x0

    aput-object v18, v1, v16

    const-class v18, Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/16 v19, 0x1

    aput-object v18, v1, v19

    invoke-virtual {v2, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v2, v11

    aput-object v14, v2, v19

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v11

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v14

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v16

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v18

    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v20, v10

    invoke-virtual {v3, v15}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v21, v15

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v22, v4

    invoke-virtual {v1, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v4

    move-object/from16 v23, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v8

    const-string v8, "bitrateRange ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], widthAlignment = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", heightAlignment = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", widthRange ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], heightRange ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], isSizeSupport = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sizeAndRateSupport = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v7, v15

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    if-lt v12, v1, :cond_3

    const-string v1, "stride"

    invoke-virtual {v3, v1, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "slice-height"

    invoke-virtual {v3, v1, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_b

    :cond_2
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v20, v10

    move-object/from16 v17, v11

    move-object/from16 v21, v15

    :cond_3
    :goto_0
    const/16 v1, 0x18

    if-lt v12, v1, :cond_9

    if-nez p5, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    move/from16 v1, p5

    :goto_1
    if-nez p6, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    move/from16 v2, p6

    :goto_2
    const/4 v4, 0x1

    if-eq v4, v1, :cond_7

    const/4 v4, 0x2

    if-eq v4, v1, :cond_7

    const/4 v4, 0x6

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const-string v4, "color-standard"

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "color-transfer"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    :goto_5
    if-eq v4, v2, :cond_8

    const/4 v4, 0x2

    if-ne v4, v2, :cond_a

    :cond_8
    const-string v4, "color-range"

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION.SDK_INT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is lower than 24"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, p5

    move/from16 v2, p6

    :cond_a
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoder bitrate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bitrate"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", encoder i frame interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", encoder frame rate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", encoder profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", encoder level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", encoder width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", encoder height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", colorStand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorRange = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v1, p0

    :try_start_5
    iget-object v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput v5, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    const-string v2, "OMX.IMG.TOPAZ.VIDEO.Encoder"

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Product:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    const/16 v3, 0x27

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    iput v3, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    goto :goto_7

    :pswitch_1
    const/16 v2, 0x13

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    goto :goto_7

    :pswitch_2
    const/16 v2, 0x14

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    goto :goto_7

    :cond_b
    const/16 v2, 0x15

    iput v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    :cond_c
    :goto_7
    iget v2, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    return v2

    :catch_5
    move-exception v0

    :goto_8
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_d

    :catch_6
    move-exception v0

    :goto_9
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_e

    :catch_7
    move-exception v0

    :goto_a
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_f

    :catch_8
    move-exception v0

    :goto_b
    move-object v3, v0

    const v2, 0x10003101

    goto :goto_10

    :catch_9
    move-exception v0

    :goto_c
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const v2, 0x10003101

    return v2

    :catch_a
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_d
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v2

    :catch_b
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_e
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return v2

    :catch_c
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_f
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v2

    :catch_d
    move-exception v0

    const v2, 0x10003101

    move-object v3, v0

    :goto_10
    sget-object v4, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string v5, "Create MediaCodec Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return v2

    :cond_d
    const v2, 0x10003101

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inputFrame([BJJZ)I
    .locals 9
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p4, p5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_2

    aget-object p4, v0, v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 p4, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string p5, "Symptom of the \"Callback buffer was to small\" problem..."

    invoke-static {p1, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    aget-object p5, v0, v3

    array-length v1, p1

    invoke-virtual {p5, p1, p4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    if-eqz p6, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x13

    if-lt p1, p5, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p5, "request-sync"

    invoke-virtual {p1, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p5, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p5, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    aget-object p1, v0, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    move-wide v6, p2

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return p4

    :cond_2
    sget-object p1, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string p2, "No buffer available !"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x10003103

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public release()I
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mSurface:Landroid/view/Surface;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    return v0

    :cond_1
    const v0, 0x10003101

    return v0
.end method

.method public setInputSurface(Landroid/view/Surface;)I
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string v0, "set input surface failed"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object p1, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error state codec "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public signalEndOfInput()I
    .locals 3
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string v2, "signalEndOfInputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public start()I
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const v1, 0x10003101

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public stop()I
    .locals 3
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const v1, 0x10003101

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    :try_start_0
    iget v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public tryRead(J)Lcom/alivc/component/encoder/MediaCodecData;
    .locals 5
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v1, Lcom/alivc/component/encoder/MediaCodecData;

    invoke-direct {v1}, Lcom/alivc/component/encoder/MediaCodecData;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, 0x1

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, p1

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    iget-object v3, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alivc/component/encoder/MediaCodecData;->setCodecData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec;I)V

    iget p1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, p1, 0x2

    if-lez v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/alivc/component/encoder/MediaCodecData;->setDataType(I)V

    goto :goto_1

    :cond_1
    and-int/2addr p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Lcom/alivc/component/encoder/MediaCodecData;->setDataType(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/alivc/component/encoder/MediaCodecData;->setDataType(I)V

    :goto_0
    iget p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    :goto_1
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/alivc/component/encoder/MediaCodecData;->setPts(J)V

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/alivc/component/encoder/MediaCodecData;->setDts(J)V

    iget p1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    invoke-virtual {v1, p2}, Lcom/alivc/component/encoder/MediaCodecData;->setEos(Z)V

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/alivc/component/encoder/MediaCodecData;->setEos(Z)V

    goto :goto_3

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    :goto_2
    invoke-virtual {v1, p2}, Lcom/alivc/component/encoder/MediaCodecData;->setCode(I)V

    goto :goto_3

    :cond_6
    const/4 v2, -0x3

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v0}, Lcom/alivc/component/encoder/MediaCodecData;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method public updateBitrate(I)I
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const p1, 0x10003100

    return p1

    :cond_0
    iget v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    mul-int/lit16 p1, p1, 0x3e8

    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const p1, 0x10003101

    return p1
.end method
