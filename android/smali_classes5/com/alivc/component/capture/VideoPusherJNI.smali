.class public Lcom/alivc/component/capture/VideoPusherJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeHandler:J

.field private mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

.field private mVideoPusherDataListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

.field private mVideoPusherTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    new-instance v0, Lcom/alivc/component/capture/VideoPusherJNI$1;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusherJNI$1;-><init>(Lcom/alivc/component/capture/VideoPusherJNI;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherDataListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    new-instance v0, Lcom/alivc/component/capture/VideoPusherJNI$2;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusherJNI$2;-><init>(Lcom/alivc/component/capture/VideoPusherJNI;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    const-string v0, "VideoPusherJNI"

    const-string v1, "ME ME ME, VideoPusherJNI construct"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {v0}, Lcom/alivc/component/capture/VideoPusher;-><init>()V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherDataListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->setVideoSourceListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusherTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->setVideoSourceTextureListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;)V

    :cond_0
    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/capture/VideoPusherJNI;[BJIIIII)I
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/alivc/component/capture/VideoPusherJNI;->onData([BJIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/alivc/component/capture/VideoPusherJNI;JIIIII)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/alivc/component/capture/VideoPusherJNI;->onTexture(JIIIII)I

    move-result p0

    return p0
.end method

.method public static getSupportedFormats()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/alivc/component/capture/VideoPusher;->getSupportedFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/alivc/live/pusher/JNIUtils;->VideoFormatToNative(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getSupportedResolutions(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/alivc/component/capture/VideoPusher;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    const-string v2, ","

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private native onData([BJIIIII)I
.end method

.method private native onStarted()I
.end method

.method private native onStopped()I
.end method

.method private native onTexture(JIIIII)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI destroy"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    return-void
.end method

.method public getCurrentExposureCompensation()I
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI getCurrentExposureCompensation "

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getCurrentExposure()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentZoom()I
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI getCurrentZoom "

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getCurrentZoom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxExposure()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getMaxExposure()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxZoom()I
    .locals 3

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI getMaxZoom "

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoPusher;->getMaxZoom()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getMaxZoom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMinExposure()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->getMinExposure()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTransformMatrix([F)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->getTransformMatrix([F)V

    :cond_0
    return-void
.end method

.method public getVideoHandler()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mNativeHandler:J

    return-wide v0
.end method

.method public init(IIIIIIZZLandroid/content/Context;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPusherJNI init source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", widht "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPusherJNI"

    invoke-static {v2, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/alivc/component/capture/VideoPusher;->init(IIIIIIZZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public isCapturing()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isPreviewRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAutoFocus()Z
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI isSupportAutoFocus "

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isSupportAutoFocus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFlash()Z
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI isSupportFlash "

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isSupportFlash()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPusherJNI pause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->pause(Z)V

    :cond_0
    return-void
.end method

.method public resume()I
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI resume"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public setAutoFocus(ZFF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPusherJNI setAutoFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setAutoFocus(Z)V

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-gtz v0, :cond_0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {p1, p2, p3}, Lcom/alivc/component/capture/VideoPusher;->setFocus(FF)V

    :cond_1
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPusherJNI setExposureCompensation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setExposure(I)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI setOrientation"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTorch(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPusherJNI setTorch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setFlashOn(Z)V

    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPusherJNI setzoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public start(I)I
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI start"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI stop"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->stop()V

    :cond_0
    return-void
.end method

.method public switchCamera()V
    .locals 2

    const-string v0, "VideoPusherJNI"

    const-string v1, "VideoPusherJNI switchCamera"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->switchCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateTexImage()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI;->mVideoPusher:Lcom/alivc/component/capture/VideoPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->updateTexImage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
