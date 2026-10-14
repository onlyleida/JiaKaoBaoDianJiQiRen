.class public Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlivcLivePushPublishType:I

.field private mAudioCaptureFps:I

.field private mAudioCapturingSampleRate:I

.field private mAudioDurationFromeCaptureToUpload:I

.field private mAudioEncodeBitrate:I

.field private mAudioEncodeFps:I

.field private mAudioFrameInEncodeBuffer:I

.field private mAudioLostRate:I

.field private mAudioPacketsInUploadBuffer:I

.field private mAudioReSendBitRate:I

.field private mAudioUploadBitrate:I

.field private mAudioUploadFps:I

.field private mAudioVideoPtsDiff:I

.field private mAvPTSInterval:J

.field private mCpu:F

.field private mCurrentUploadPacketSize:I

.field private mCurrentlyUploadedAudioFramePts:J

.field private mCurrentlyUploadedVideoFramePts:J

.field private mLastAudioFramePTSInQueue:J

.field private mLastAudioPtsInBuffer:J

.field private mLastVideoFramePTSInQueue:J

.field private mLastVideoPtsInBuffer:J

.field private mMaxSizeOfAudioPacketsInBuffer:I

.field private mMaxSizeOfVideoPacketsInBuffer:I

.field private mMemory:F

.field private mPreviousVideoKeyFramePts:J

.field private mRtt:I

.field private mTotalDroppedAudioFrames:I

.field private mTotalDurationOfDropingVideoFrames:J

.field private mTotalFramesOfEncodedVideo:J

.field private mTotalFramesOfUploadedVideo:J

.field private mTotalSendedPacketSizeInTwoSecond:J

.field private mTotalSizeOfUploadedPackets:J

.field private mTotalTimeOfEncodedVideo:J

.field private mTotalTimeOfUploading:J

.field private mTotalTimesOfDisconnect:I

.field private mTotalTimesOfDropingVideoFrames:J

.field private mTotalTimesOfReconnect:I

.field private mVideoCaptureFps:I

.field private mVideoDurationFromeCaptureToUpload:I

.field private mVideoEncodeBitrate:I

.field private mVideoEncodeFps:I

.field private mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

.field private mVideoEncodeParam:I

.field private mVideoEncodingGopSize:I

.field private mVideoEncodingHeight:I

.field private mVideoEncodingWidth:I

.field private mVideoFramesInEncodeBuffer:I

.field private mVideoFramesInRenderBuffer:I

.field private mVideoLostRate:I

.field private mVideoPacketsInUploadBuffer:I

.field private mVideoReSendBitRate:I

.field private mVideoRenderConsumingTimePerFrame:I

.field private mVideoRenderFps:I

.field private mVideoUploadBitrate:I

.field private mVideoUploadeFps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlivcLivePushPublishType()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAlivcLivePushPublishType:I

    return v0
.end method

.method public getAudioCaptureFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioCaptureFps:I

    return v0
.end method

.method public getAudioCapturingSampleRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioCapturingSampleRate:I

    return v0
.end method

.method public getAudioDurationFromeCaptureToUpload()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioDurationFromeCaptureToUpload:I

    return v0
.end method

.method public getAudioEncodeBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioEncodeBitrate:I

    return v0
.end method

.method public getAudioEncodeFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioEncodeFps:I

    return v0
.end method

.method public getAudioFrameInEncodeBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioFrameInEncodeBuffer:I

    return v0
.end method

.method public getAudioLostRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioLostRate:I

    return v0
.end method

.method public getAudioPacketsInUploadBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioPacketsInUploadBuffer:I

    return v0
.end method

.method public getAudioReSendBitRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioReSendBitRate:I

    return v0
.end method

.method public getAudioUploadBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioUploadBitrate:I

    return v0
.end method

.method public getAudioUploadFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioUploadFps:I

    return v0
.end method

.method public getAudioVideoPtsDiff()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioVideoPtsDiff:I

    return v0
.end method

.method public getAvPTSInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAvPTSInterval:J

    return-wide v0
.end method

.method public getCpu()F
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCpu:F

    return v0
.end method

.method public getCurrentUploadPacketSize()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentUploadPacketSize:I

    return v0
.end method

.method public getCurrentlyUploadedAudioFramePts()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentlyUploadedAudioFramePts:J

    return-wide v0
.end method

.method public getCurrentlyUploadedVideoFramePts()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentlyUploadedVideoFramePts:J

    return-wide v0
.end method

.method public getLastAudioFramePTSInQueue()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastAudioFramePTSInQueue:J

    return-wide v0
.end method

.method public getLastAudioPtsInBuffer()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastAudioPtsInBuffer:J

    return-wide v0
.end method

.method public getLastVideoFramePTSInQueue()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastVideoFramePTSInQueue:J

    return-wide v0
.end method

.method public getLastVideoPtsInBuffer()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastVideoPtsInBuffer:J

    return-wide v0
.end method

.method public getMaxSizeOfAudioPacketsInBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMaxSizeOfAudioPacketsInBuffer:I

    return v0
.end method

.method public getMaxSizeOfVideoPacketsInBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMaxSizeOfVideoPacketsInBuffer:I

    return v0
.end method

.method public getMemory()F
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMemory:F

    return v0
.end method

.method public getPreviousVideoKeyFramePts()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mPreviousVideoKeyFramePts:J

    return-wide v0
.end method

.method public getRtt()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mRtt:I

    return v0
.end method

.method public getTotalDroppedAudioFrames()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalDroppedAudioFrames:I

    return v0
.end method

.method public getTotalDurationOfDropingVideoFrames()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalDurationOfDropingVideoFrames:J

    return-wide v0
.end method

.method public getTotalFramesOfEncodedVideo()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalFramesOfEncodedVideo:J

    return-wide v0
.end method

.method public getTotalFramesOfUploadedVideo()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalFramesOfUploadedVideo:J

    return-wide v0
.end method

.method public getTotalSendedPacketSizeInTwoSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalSendedPacketSizeInTwoSecond:J

    return-wide v0
.end method

.method public getTotalSizeOfUploadedPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalSizeOfUploadedPackets:J

    return-wide v0
.end method

.method public getTotalTimeOfEncodedVideo()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimeOfEncodedVideo:J

    return-wide v0
.end method

.method public getTotalTimeOfUploading()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimeOfUploading:J

    return-wide v0
.end method

.method public getTotalTimesOfDisconnect()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfDisconnect:I

    return v0
.end method

.method public getTotalTimesOfDropingVideoFrames()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfDropingVideoFrames:J

    return-wide v0
.end method

.method public getTotalTimesOfReconnect()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfReconnect:I

    return v0
.end method

.method public getVideoCaptureFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoCaptureFps:I

    return v0
.end method

.method public getVideoDurationFromeCaptureToUpload()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoDurationFromeCaptureToUpload:I

    return v0
.end method

.method public getVideoEncodeBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeBitrate:I

    return v0
.end method

.method public getVideoEncodeFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeFps:I

    return v0
.end method

.method public getVideoEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    return-object v0
.end method

.method public getVideoEncodeParam()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeParam:I

    return v0
.end method

.method public getVideoEncodingGopSize()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingGopSize:I

    return v0
.end method

.method public getVideoEncodingHeight()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingHeight:I

    return v0
.end method

.method public getVideoEncodingWidth()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingWidth:I

    return v0
.end method

.method public getVideoFramesInEncodeBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoFramesInEncodeBuffer:I

    return v0
.end method

.method public getVideoFramesInRenderBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoFramesInRenderBuffer:I

    return v0
.end method

.method public getVideoLostRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoLostRate:I

    return v0
.end method

.method public getVideoPacketsInUploadBuffer()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoPacketsInUploadBuffer:I

    return v0
.end method

.method public getVideoReSendBitRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoReSendBitRate:I

    return v0
.end method

.method public getVideoRenderConsumingTimePerFrame()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoRenderConsumingTimePerFrame:I

    return v0
.end method

.method public getVideoRenderFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoRenderFps:I

    return v0
.end method

.method public getVideoUploadBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoUploadBitrate:I

    return v0
.end method

.method public getVideoUploadeFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoUploadeFps:I

    return v0
.end method

.method public setAlivcLivePushPublishType(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAlivcLivePushPublishType:I

    return-void
.end method

.method protected setAudioCaptureFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioCaptureFps:I

    return-void
.end method

.method public setAudioCapturingSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioCapturingSampleRate:I

    return-void
.end method

.method protected setAudioDurationFromeCaptureToUpload(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioDurationFromeCaptureToUpload:I

    return-void
.end method

.method protected setAudioEncodeBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioEncodeBitrate:I

    return-void
.end method

.method public setAudioEncodeFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioEncodeFps:I

    return-void
.end method

.method protected setAudioFrameInEncodeBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioFrameInEncodeBuffer:I

    return-void
.end method

.method protected setAudioLostRate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioLostRate:I

    return-void
.end method

.method protected setAudioPacketsInUploadBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioPacketsInUploadBuffer:I

    return-void
.end method

.method protected setAudioReSendBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioReSendBitRate:I

    return-void
.end method

.method protected setAudioUploadBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioUploadBitrate:I

    return-void
.end method

.method protected setAudioUploadFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioUploadFps:I

    return-void
.end method

.method protected setAudioVideoPtsDiff(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioVideoPtsDiff:I

    return-void
.end method

.method protected setAvPTSInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAvPTSInterval:J

    return-void
.end method

.method protected setCpu(F)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCpu:F

    return-void
.end method

.method protected setCurrentUploadPacketSize(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentUploadPacketSize:I

    return-void
.end method

.method protected setCurrentlyUploadedAudioFramePts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentlyUploadedAudioFramePts:J

    return-void
.end method

.method protected setCurrentlyUploadedVideoFramePts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentlyUploadedVideoFramePts:J

    return-void
.end method

.method protected setLastAudioFramePTSInQueue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastAudioFramePTSInQueue:J

    return-void
.end method

.method protected setLastAudioPtsInBuffer(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastAudioPtsInBuffer:J

    return-void
.end method

.method public setLastVideoFramePTSInQueue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastVideoFramePTSInQueue:J

    return-void
.end method

.method protected setLastVideoPtsInBuffer(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastVideoPtsInBuffer:J

    return-void
.end method

.method protected setMaxSizeOfAudioPacketsInBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMaxSizeOfAudioPacketsInBuffer:I

    return-void
.end method

.method protected setMaxSizeOfVideoPacketsInBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMaxSizeOfVideoPacketsInBuffer:I

    return-void
.end method

.method protected setMemory(F)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMemory:F

    return-void
.end method

.method protected setPreviousVideoKeyFramePts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mPreviousVideoKeyFramePts:J

    return-void
.end method

.method protected setRtt(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mRtt:I

    return-void
.end method

.method protected setTotalDroppedAudioFrames(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalDroppedAudioFrames:I

    return-void
.end method

.method protected setTotalDurationOfDropingVideoFrames(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalDurationOfDropingVideoFrames:J

    return-void
.end method

.method protected setTotalFramesOfEncodedVideo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalFramesOfEncodedVideo:J

    return-void
.end method

.method protected setTotalFramesOfUploadedVideo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalFramesOfUploadedVideo:J

    return-void
.end method

.method protected setTotalSendedPacketSizeInTwoSecond(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalSendedPacketSizeInTwoSecond:J

    return-void
.end method

.method protected setTotalSizeOfUploadedPackets(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalSizeOfUploadedPackets:J

    return-void
.end method

.method protected setTotalTimeOfEncodedVideo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimeOfEncodedVideo:J

    return-void
.end method

.method protected setTotalTimeOfUploading(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimeOfUploading:J

    return-void
.end method

.method protected setTotalTimesOfDisconnect(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfDisconnect:I

    return-void
.end method

.method protected setTotalTimesOfDropingVideoFrames(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfDropingVideoFrames:J

    return-void
.end method

.method protected setTotalTimesOfReconnect(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfReconnect:I

    return-void
.end method

.method protected setVideoCaptureFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoCaptureFps:I

    return-void
.end method

.method protected setVideoDurationFromeCaptureToUpload(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoDurationFromeCaptureToUpload:I

    return-void
.end method

.method protected setVideoEncodeBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeBitrate:I

    return-void
.end method

.method protected setVideoEncodeFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeFps:I

    return-void
.end method

.method public setVideoEncodeMode(Lcom/alivc/live/pusher/AlivcEncodeModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    return-void
.end method

.method protected setVideoEncodeParam(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeParam:I

    return-void
.end method

.method public setVideoEncodingGopSize(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingGopSize:I

    return-void
.end method

.method public setVideoEncodingHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingHeight:I

    return-void
.end method

.method public setVideoEncodingWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingWidth:I

    return-void
.end method

.method protected setVideoFramesInEncodeBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoFramesInEncodeBuffer:I

    return-void
.end method

.method protected setVideoFramesInRenderBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoFramesInRenderBuffer:I

    return-void
.end method

.method protected setVideoLostRate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoLostRate:I

    return-void
.end method

.method protected setVideoPacketsInUploadBuffer(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoPacketsInUploadBuffer:I

    return-void
.end method

.method protected setVideoReSendBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoReSendBitRate:I

    return-void
.end method

.method public setVideoRenderConsumingTimePerFrame(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoRenderConsumingTimePerFrame:I

    return-void
.end method

.method protected setVideoRenderFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoRenderFps:I

    return-void
.end method

.method protected setVideoUploadBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoUploadBitrate:I

    return-void
.end method

.method protected setVideoUploadeFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoUploadeFps:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoCaptureFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoCaptureFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioCaptureFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioCaptureFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioEncodeBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioEncodeBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioEncodeFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioEncodeFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioFrameInEncodeBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioFrameInEncodeBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoRenderFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoRenderFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoFramesInRenderBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoFramesInRenderBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodeBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodeFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalFramesOfEncodedVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalFramesOfEncodedVideo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimeOfEncodedVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimeOfEncodedVideo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodeParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodeParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoFramesInEncodeBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoFramesInEncodeBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioUploadBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioUploadBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoUploadBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoUploadBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioPacketsInUploadBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioPacketsInUploadBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoPacketsInUploadBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoPacketsInUploadBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoUploadeFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoUploadeFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioUploadFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioUploadFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentlyUploadedVideoFramePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentlyUploadedVideoFramePts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentlyUploadedAudioFramePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentlyUploadedAudioFramePts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousVideoKeyFramePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mPreviousVideoKeyFramePts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastVideoPtsInBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastVideoPtsInBuffer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastAudioPtsInBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastAudioPtsInBuffer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalSizeOfUploadedPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalSizeOfUploadedPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimeOfUploading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimeOfUploading:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalFramesOfUploadedVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalFramesOfUploadedVideo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalDurationOfDropingVideoFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalDurationOfDropingVideoFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimesOfDropingVideoFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfDropingVideoFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimesOfDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfDisconnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimesOfReconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalTimesOfReconnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoDurationFromeCaptureToUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoDurationFromeCaptureToUpload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioDurationFromeCaptureToUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioDurationFromeCaptureToUpload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentUploadPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCurrentUploadPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioVideoPtsDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioVideoPtsDiff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalSendedPacketSizeInTwoSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalSendedPacketSizeInTwoSecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeOfVideoPacketsInBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMaxSizeOfVideoPacketsInBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeOfAudioPacketsInBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMaxSizeOfAudioPacketsInBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mCpu:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mMemory:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mLastVideoFramePTSInQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastVideoFramePTSInQueue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastAudioFramePTSInQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mLastAudioFramePTSInQueue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAvPTSInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAvPTSInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoRenderConsumingTimePerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoRenderConsumingTimePerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalDroppedAudioFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mTotalDroppedAudioFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mRtt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoLostRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoLostRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioLostRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioLostRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoReSendBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoReSendBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioReSendBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioReSendBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodingWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioCapturingSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAudioCapturingSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodingGopSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingGopSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodingHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mVideoEncodingHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAlivcLivePushPublishType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->mAlivcLivePushPublishType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
