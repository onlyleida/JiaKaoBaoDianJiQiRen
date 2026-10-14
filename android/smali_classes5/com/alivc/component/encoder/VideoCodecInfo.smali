.class public Lcom/alivc/component/encoder/VideoCodecInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCodecInfo"


# instance fields
.field public mHeightAlign:I

.field public mMaxBitrate:I

.field public mMaxHeight:I

.field public mMaxWidth:I

.field final mMimeType:Ljava/lang/String;

.field public mMinBitrate:I

.field public mMinHeight:I

.field public mMinWidth:I

.field public mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public mWidthAlign:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMimeType:Ljava/lang/String;

    const v1, 0x7fffffff

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxBitrate:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinBitrate:I

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxWidth:I

    iput v2, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinWidth:I

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxHeight:I

    iput v2, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinHeight:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mWidthAlign:I

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mHeightAlign:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "VideoCodecInfo"

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3

    const-string v1, "try to got CodecCapabilities"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/alivc/component/encoder/VideoCodecInfo;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "failed to got mediaCodecinfo video/avc"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "failed to got CodecCapabilities video/avc"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-nez v0, :cond_2

    const-string v0, "failed to got VideoCapabilities video/avc"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxBitrate:I

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinBitrate:I

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mWidthAlign:I

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mHeightAlign:I

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinWidth:I

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinHeight:I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitrateRange ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxBitrate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], widthAlignment = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mWidthAlign:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", heightAlignment = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mHeightAlign:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", widthRange ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], heightRange ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMinHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
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


# virtual methods
.method public getSupportFormats()V
    .locals 0

    return-void
.end method

.method public getSupportProfile()V
    .locals 0

    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecInfo;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
