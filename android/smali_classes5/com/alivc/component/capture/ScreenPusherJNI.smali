.class public Lcom/alivc/component/capture/ScreenPusherJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeHandler:J

.field private mRotation:I

.field private mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

.field private mVideoPusherTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mNativeHandler:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    new-instance v0, Lcom/alivc/component/capture/ScreenPusherJNI$1;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/ScreenPusherJNI$1;-><init>(Lcom/alivc/component/capture/ScreenPusherJNI;)V

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mVideoPusherTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    const-string v0, "ScreenPusherJNI"

    const-string v1, "ME ME ME, ScreenPusherJNI construct"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alivc/component/capture/ScreenPusher;

    invoke-direct {v0}, Lcom/alivc/component/capture/ScreenPusher;-><init>()V

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mVideoPusherTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/ScreenPusher;->setVideoSourceTextureListener(Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;)V

    :cond_0
    iput-wide p1, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mNativeHandler:J

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/capture/ScreenPusherJNI;)I
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mRotation:I

    return p0
.end method

.method static synthetic access$100(Lcom/alivc/component/capture/ScreenPusherJNI;JIIII)I
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/alivc/component/capture/ScreenPusherJNI;->onTexture(JIIII)I

    move-result p0

    return p0
.end method

.method private native onTexture(JIIII)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "ScreenPusherJNI"

    const-string v1, "ScreenPusherJNI destroy"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/ScreenPusher;->destroy()V

    iput-object v1, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    :cond_0
    iput-object v1, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mNativeHandler:J

    return-void
.end method

.method public getScreenHandler()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mNativeHandler:J

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 11

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/ScreenPusher;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mRotation:I

    const/16 v1, 0x5a

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-static {p1, v3, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    const/4 v6, 0x0

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-static {p1, v3, v2, v4, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public init(IIIIILandroid/content/Intent;Landroid/content/Context;)V
    .locals 11

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenPusherJNI init source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", widht "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fps "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenPusherJNI"

    invoke-static {v3, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    if-eqz v3, :cond_0

    move/from16 v1, p5

    iput v1, v0, Lcom/alivc/component/capture/ScreenPusherJNI;->mRotation:I

    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/alivc/component/capture/ScreenPusherJNI;->mContext:Landroid/content/Context;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/alivc/component/capture/ScreenPusher;->init(IIIIILandroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public isCapturing()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(I)I
    .locals 2

    const-string v0, "ScreenPusherJNI"

    const-string v1, "ScreenPusherJNI start"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alivc/component/capture/ScreenPusher;->start(I)V
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

    const-string v0, "ScreenPusherJNI"

    const-string v1, "ScreenPusherJNI stop"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/ScreenPusher;->stop()V

    :cond_0
    return-void
.end method

.method public updateTexImage()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI;->mScreenPusher:Lcom/alivc/component/capture/ScreenPusher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/capture/ScreenPusher;->updateTexImage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
