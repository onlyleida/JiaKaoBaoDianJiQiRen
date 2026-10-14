.class public interface abstract Lcom/alivc/live/pusher/ILivePusher;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addDynamicsAddons(Ljava/lang/String;FFFF)I
.end method

.method public abstract changeResolution(Lcom/alivc/live/pusher/AlivcResolutionEnum;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract focusCameraAtAdjustedPoint(FFZ)V
.end method

.method public abstract getCurrentExposure()I
.end method

.method public abstract getCurrentStatus()Lcom/alivc/live/pusher/AlivcLivePushStats;
.end method

.method public abstract getCurrentZoom()I
.end method

.method public abstract getLastError()Lcom/alivc/live/pusher/AlivcLivePushError;
.end method

.method public abstract getLivePushStatsInfo()Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getPushUrl()Ljava/lang/String;
.end method

.method public abstract getSupportedMaxExposure()I
.end method

.method public abstract getSupportedMinExposure()I
.end method

.method public abstract init(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V
.end method

.method public abstract inputStreamAudioData([BIIIJ)V
.end method

.method public abstract inputStreamAudioPtr(JIIIJ)V
.end method

.method public abstract inputStreamVideoData([BIIIIJI)V
.end method

.method public abstract inputStreamVideoPtr(JIIIIJI)V
.end method

.method public abstract isCameraSupportAutoFocus()Z
.end method

.method public abstract isCameraSupportFlash()Z
.end method

.method public abstract isNetworkPushing()Z
.end method

.method public abstract isPushing()Z
.end method

.method public abstract pause()V
.end method

.method public abstract pauseBGM()V
.end method

.method public abstract pauseScreenCapture()V
.end method

.method public abstract reconnectPushAsync(Ljava/lang/String;)V
.end method

.method public abstract removeDynamicsAddons(I)V
.end method

.method public abstract restartPush()V
.end method

.method public abstract restartPushAync()V
.end method

.method public abstract resume()V
.end method

.method public abstract resumeAsync()V
.end method

.method public abstract resumeBGM()V
.end method

.method public abstract resumeScreenCapture()V
.end method

.method public abstract setAudioDenoise(Z)V
.end method

.method public abstract setAutoFocus(Z)V
.end method

.method public abstract setBGMEarsBack(Z)V
.end method

.method public abstract setBGMLoop(Z)V
.end method

.method public abstract setBGMVolume(I)V
.end method

.method public abstract setCaptureVolume(I)V
.end method

.method public abstract setExposure(I)V
.end method

.method public abstract setFlash(Z)V
.end method

.method public abstract setLivePushBGMListener(Lcom/alivc/live/pusher/AlivcLivePushBGMListener;)V
.end method

.method public abstract setLivePushErrorListener(Lcom/alivc/live/pusher/AlivcLivePushErrorListener;)V
.end method

.method public abstract setLivePushInfoListener(Lcom/alivc/live/pusher/AlivcLivePushInfoListener;)V
.end method

.method public abstract setLivePushNetworkListener(Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;)V
.end method

.method public abstract setLivePushRenderContextListener(Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;)V
.end method

.method public abstract setLogDirPath(Ljava/lang/String;)V
.end method

.method public abstract setLogLevel(Lcom/alivc/live/pusher/AlivcLivePushLogLevel;)V
.end method

.method public abstract setMinVideoBitrate(I)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setPreviewMirror(Z)V
.end method

.method public abstract setPreviewMode(Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;)V
.end method

.method public abstract setPreviewOrientation(Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;)V
.end method

.method public abstract setPushMirror(Z)V
.end method

.method public abstract setQualityMode(Lcom/alivc/live/pusher/AlivcQualityModeEnum;)V
.end method

.method public abstract setScreenOrientation(I)V
.end method

.method public abstract setTargetVideoBitrate(I)V
.end method

.method public abstract setWaterMarkVisible(Z)V
.end method

.method public abstract setZoom(I)V
.end method

.method public abstract snapshot(IILcom/alivc/live/pusher/AlivcSnapshotListener;)V
.end method

.method public abstract startBGMAsync(Ljava/lang/String;)V
.end method

.method public abstract startCamera(Landroid/view/SurfaceView;)I
.end method

.method public abstract startCameraMix(FFFF)I
.end method

.method public abstract startPreview(Landroid/view/SurfaceView;)V
.end method

.method public abstract startPreviewAysnc(Landroid/view/SurfaceView;)V
.end method

.method public abstract startPush(Ljava/lang/String;)V
.end method

.method public abstract startPushAysnc(Ljava/lang/String;)V
.end method

.method public abstract stopBGMAsync()V
.end method

.method public abstract stopCamera()V
.end method

.method public abstract stopCameraMix()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopPush()V
.end method

.method public abstract switchCamera()V
.end method
