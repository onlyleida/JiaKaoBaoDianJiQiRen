package com.alivc.live.pusher;

/* JADX INFO: loaded from: classes5.dex */
public class AlivcLivePushStatsInfo {
    private int mAlivcLivePushPublishType;
    private int mAudioCaptureFps;
    private int mAudioCapturingSampleRate;
    private int mAudioDurationFromeCaptureToUpload;
    private int mAudioEncodeBitrate;
    private int mAudioEncodeFps;
    private int mAudioFrameInEncodeBuffer;
    private int mAudioLostRate;
    private int mAudioPacketsInUploadBuffer;
    private int mAudioReSendBitRate;
    private int mAudioUploadBitrate;
    private int mAudioUploadFps;
    private int mAudioVideoPtsDiff;
    private long mAvPTSInterval;
    private float mCpu;
    private int mCurrentUploadPacketSize;
    private long mCurrentlyUploadedAudioFramePts;
    private long mCurrentlyUploadedVideoFramePts;
    private long mLastAudioFramePTSInQueue;
    private long mLastAudioPtsInBuffer;
    private long mLastVideoFramePTSInQueue;
    private long mLastVideoPtsInBuffer;
    private int mMaxSizeOfAudioPacketsInBuffer;
    private int mMaxSizeOfVideoPacketsInBuffer;
    private float mMemory;
    private long mPreviousVideoKeyFramePts;
    private int mRtt;
    private int mTotalDroppedAudioFrames;
    private long mTotalDurationOfDropingVideoFrames;
    private long mTotalFramesOfEncodedVideo;
    private long mTotalFramesOfUploadedVideo;
    private long mTotalSendedPacketSizeInTwoSecond;
    private long mTotalSizeOfUploadedPackets;
    private long mTotalTimeOfEncodedVideo;
    private long mTotalTimeOfUploading;
    private int mTotalTimesOfDisconnect;
    private long mTotalTimesOfDropingVideoFrames;
    private int mTotalTimesOfReconnect;
    private int mVideoCaptureFps;
    private int mVideoDurationFromeCaptureToUpload;
    private int mVideoEncodeBitrate;
    private int mVideoEncodeFps;
    private AlivcEncodeModeEnum mVideoEncodeMode;
    private int mVideoEncodeParam;
    private int mVideoEncodingGopSize;
    private int mVideoEncodingHeight;
    private int mVideoEncodingWidth;
    private int mVideoFramesInEncodeBuffer;
    private int mVideoFramesInRenderBuffer;
    private int mVideoLostRate;
    private int mVideoPacketsInUploadBuffer;
    private int mVideoReSendBitRate;
    private int mVideoRenderConsumingTimePerFrame;
    private int mVideoRenderFps;
    private int mVideoUploadBitrate;
    private int mVideoUploadeFps;

    public int getAlivcLivePushPublishType() {
        return this.mAlivcLivePushPublishType;
    }

    public int getAudioCaptureFps() {
        return this.mAudioCaptureFps;
    }

    public int getAudioCapturingSampleRate() {
        return this.mAudioCapturingSampleRate;
    }

    public int getAudioDurationFromeCaptureToUpload() {
        return this.mAudioDurationFromeCaptureToUpload;
    }

    public int getAudioEncodeBitrate() {
        return this.mAudioEncodeBitrate;
    }

    public int getAudioEncodeFps() {
        return this.mAudioEncodeFps;
    }

    public int getAudioFrameInEncodeBuffer() {
        return this.mAudioFrameInEncodeBuffer;
    }

    public int getAudioLostRate() {
        return this.mAudioLostRate;
    }

    public int getAudioPacketsInUploadBuffer() {
        return this.mAudioPacketsInUploadBuffer;
    }

    public int getAudioReSendBitRate() {
        return this.mAudioReSendBitRate;
    }

    public int getAudioUploadBitrate() {
        return this.mAudioUploadBitrate;
    }

    public int getAudioUploadFps() {
        return this.mAudioUploadFps;
    }

    public int getAudioVideoPtsDiff() {
        return this.mAudioVideoPtsDiff;
    }

    public long getAvPTSInterval() {
        return this.mAvPTSInterval;
    }

    public float getCpu() {
        return this.mCpu;
    }

    public int getCurrentUploadPacketSize() {
        return this.mCurrentUploadPacketSize;
    }

    public long getCurrentlyUploadedAudioFramePts() {
        return this.mCurrentlyUploadedAudioFramePts;
    }

    public long getCurrentlyUploadedVideoFramePts() {
        return this.mCurrentlyUploadedVideoFramePts;
    }

    public long getLastAudioFramePTSInQueue() {
        return this.mLastAudioFramePTSInQueue;
    }

    public long getLastAudioPtsInBuffer() {
        return this.mLastAudioPtsInBuffer;
    }

    public long getLastVideoFramePTSInQueue() {
        return this.mLastVideoFramePTSInQueue;
    }

    public long getLastVideoPtsInBuffer() {
        return this.mLastVideoPtsInBuffer;
    }

    public int getMaxSizeOfAudioPacketsInBuffer() {
        return this.mMaxSizeOfAudioPacketsInBuffer;
    }

    public int getMaxSizeOfVideoPacketsInBuffer() {
        return this.mMaxSizeOfVideoPacketsInBuffer;
    }

    public float getMemory() {
        return this.mMemory;
    }

    public long getPreviousVideoKeyFramePts() {
        return this.mPreviousVideoKeyFramePts;
    }

    public int getRtt() {
        return this.mRtt;
    }

    public int getTotalDroppedAudioFrames() {
        return this.mTotalDroppedAudioFrames;
    }

    public long getTotalDurationOfDropingVideoFrames() {
        return this.mTotalDurationOfDropingVideoFrames;
    }

    public long getTotalFramesOfEncodedVideo() {
        return this.mTotalFramesOfEncodedVideo;
    }

    public long getTotalFramesOfUploadedVideo() {
        return this.mTotalFramesOfUploadedVideo;
    }

    public long getTotalSendedPacketSizeInTwoSecond() {
        return this.mTotalSendedPacketSizeInTwoSecond;
    }

    public long getTotalSizeOfUploadedPackets() {
        return this.mTotalSizeOfUploadedPackets;
    }

    public long getTotalTimeOfEncodedVideo() {
        return this.mTotalTimeOfEncodedVideo;
    }

    public long getTotalTimeOfUploading() {
        return this.mTotalTimeOfUploading;
    }

    public int getTotalTimesOfDisconnect() {
        return this.mTotalTimesOfDisconnect;
    }

    public long getTotalTimesOfDropingVideoFrames() {
        return this.mTotalTimesOfDropingVideoFrames;
    }

    public int getTotalTimesOfReconnect() {
        return this.mTotalTimesOfReconnect;
    }

    public int getVideoCaptureFps() {
        return this.mVideoCaptureFps;
    }

    public int getVideoDurationFromeCaptureToUpload() {
        return this.mVideoDurationFromeCaptureToUpload;
    }

    public int getVideoEncodeBitrate() {
        return this.mVideoEncodeBitrate;
    }

    public int getVideoEncodeFps() {
        return this.mVideoEncodeFps;
    }

    public AlivcEncodeModeEnum getVideoEncodeMode() {
        return this.mVideoEncodeMode;
    }

    public int getVideoEncodeParam() {
        return this.mVideoEncodeParam;
    }

    public int getVideoEncodingGopSize() {
        return this.mVideoEncodingGopSize;
    }

    public int getVideoEncodingHeight() {
        return this.mVideoEncodingHeight;
    }

    public int getVideoEncodingWidth() {
        return this.mVideoEncodingWidth;
    }

    public int getVideoFramesInEncodeBuffer() {
        return this.mVideoFramesInEncodeBuffer;
    }

    public int getVideoFramesInRenderBuffer() {
        return this.mVideoFramesInRenderBuffer;
    }

    public int getVideoLostRate() {
        return this.mVideoLostRate;
    }

    public int getVideoPacketsInUploadBuffer() {
        return this.mVideoPacketsInUploadBuffer;
    }

    public int getVideoReSendBitRate() {
        return this.mVideoReSendBitRate;
    }

    public int getVideoRenderConsumingTimePerFrame() {
        return this.mVideoRenderConsumingTimePerFrame;
    }

    public int getVideoRenderFps() {
        return this.mVideoRenderFps;
    }

    public int getVideoUploadBitrate() {
        return this.mVideoUploadBitrate;
    }

    public int getVideoUploadeFps() {
        return this.mVideoUploadeFps;
    }

    public void setAlivcLivePushPublishType(int i) {
        this.mAlivcLivePushPublishType = i;
    }

    protected void setAudioCaptureFps(int i) {
        this.mAudioCaptureFps = i;
    }

    public void setAudioCapturingSampleRate(int i) {
        this.mAudioCapturingSampleRate = i;
    }

    protected void setAudioDurationFromeCaptureToUpload(int i) {
        this.mAudioDurationFromeCaptureToUpload = i;
    }

    protected void setAudioEncodeBitrate(int i) {
        this.mAudioEncodeBitrate = i;
    }

    public void setAudioEncodeFps(int i) {
        this.mAudioEncodeFps = i;
    }

    protected void setAudioFrameInEncodeBuffer(int i) {
        this.mAudioFrameInEncodeBuffer = i;
    }

    protected void setAudioLostRate(int i) {
        this.mAudioLostRate = i;
    }

    protected void setAudioPacketsInUploadBuffer(int i) {
        this.mAudioPacketsInUploadBuffer = i;
    }

    protected void setAudioReSendBitRate(int i) {
        this.mAudioReSendBitRate = i;
    }

    protected void setAudioUploadBitrate(int i) {
        this.mAudioUploadBitrate = i;
    }

    protected void setAudioUploadFps(int i) {
        this.mAudioUploadFps = i;
    }

    protected void setAudioVideoPtsDiff(int i) {
        this.mAudioVideoPtsDiff = i;
    }

    protected void setAvPTSInterval(long j) {
        this.mAvPTSInterval = j;
    }

    protected void setCpu(float f2) {
        this.mCpu = f2;
    }

    protected void setCurrentUploadPacketSize(int i) {
        this.mCurrentUploadPacketSize = i;
    }

    protected void setCurrentlyUploadedAudioFramePts(long j) {
        this.mCurrentlyUploadedAudioFramePts = j;
    }

    protected void setCurrentlyUploadedVideoFramePts(long j) {
        this.mCurrentlyUploadedVideoFramePts = j;
    }

    protected void setLastAudioFramePTSInQueue(long j) {
        this.mLastAudioFramePTSInQueue = j;
    }

    protected void setLastAudioPtsInBuffer(long j) {
        this.mLastAudioPtsInBuffer = j;
    }

    public void setLastVideoFramePTSInQueue(long j) {
        this.mLastVideoFramePTSInQueue = j;
    }

    protected void setLastVideoPtsInBuffer(long j) {
        this.mLastVideoPtsInBuffer = j;
    }

    protected void setMaxSizeOfAudioPacketsInBuffer(int i) {
        this.mMaxSizeOfAudioPacketsInBuffer = i;
    }

    protected void setMaxSizeOfVideoPacketsInBuffer(int i) {
        this.mMaxSizeOfVideoPacketsInBuffer = i;
    }

    protected void setMemory(float f2) {
        this.mMemory = f2;
    }

    protected void setPreviousVideoKeyFramePts(long j) {
        this.mPreviousVideoKeyFramePts = j;
    }

    protected void setRtt(int i) {
        this.mRtt = i;
    }

    protected void setTotalDroppedAudioFrames(int i) {
        this.mTotalDroppedAudioFrames = i;
    }

    protected void setTotalDurationOfDropingVideoFrames(long j) {
        this.mTotalDurationOfDropingVideoFrames = j;
    }

    protected void setTotalFramesOfEncodedVideo(long j) {
        this.mTotalFramesOfEncodedVideo = j;
    }

    protected void setTotalFramesOfUploadedVideo(long j) {
        this.mTotalFramesOfUploadedVideo = j;
    }

    protected void setTotalSendedPacketSizeInTwoSecond(long j) {
        this.mTotalSendedPacketSizeInTwoSecond = j;
    }

    protected void setTotalSizeOfUploadedPackets(long j) {
        this.mTotalSizeOfUploadedPackets = j;
    }

    protected void setTotalTimeOfEncodedVideo(long j) {
        this.mTotalTimeOfEncodedVideo = j;
    }

    protected void setTotalTimeOfUploading(long j) {
        this.mTotalTimeOfUploading = j;
    }

    protected void setTotalTimesOfDisconnect(int i) {
        this.mTotalTimesOfDisconnect = i;
    }

    protected void setTotalTimesOfDropingVideoFrames(long j) {
        this.mTotalTimesOfDropingVideoFrames = j;
    }

    protected void setTotalTimesOfReconnect(int i) {
        this.mTotalTimesOfReconnect = i;
    }

    protected void setVideoCaptureFps(int i) {
        this.mVideoCaptureFps = i;
    }

    protected void setVideoDurationFromeCaptureToUpload(int i) {
        this.mVideoDurationFromeCaptureToUpload = i;
    }

    protected void setVideoEncodeBitrate(int i) {
        this.mVideoEncodeBitrate = i;
    }

    protected void setVideoEncodeFps(int i) {
        this.mVideoEncodeFps = i;
    }

    public void setVideoEncodeMode(AlivcEncodeModeEnum alivcEncodeModeEnum) {
        this.mVideoEncodeMode = alivcEncodeModeEnum;
    }

    protected void setVideoEncodeParam(int i) {
        this.mVideoEncodeParam = i;
    }

    public void setVideoEncodingGopSize(int i) {
        this.mVideoEncodingGopSize = i;
    }

    public void setVideoEncodingHeight(int i) {
        this.mVideoEncodingHeight = i;
    }

    public void setVideoEncodingWidth(int i) {
        this.mVideoEncodingWidth = i;
    }

    protected void setVideoFramesInEncodeBuffer(int i) {
        this.mVideoFramesInEncodeBuffer = i;
    }

    protected void setVideoFramesInRenderBuffer(int i) {
        this.mVideoFramesInRenderBuffer = i;
    }

    protected void setVideoLostRate(int i) {
        this.mVideoLostRate = i;
    }

    protected void setVideoPacketsInUploadBuffer(int i) {
        this.mVideoPacketsInUploadBuffer = i;
    }

    protected void setVideoReSendBitRate(int i) {
        this.mVideoReSendBitRate = i;
    }

    public void setVideoRenderConsumingTimePerFrame(int i) {
        this.mVideoRenderConsumingTimePerFrame = i;
    }

    protected void setVideoRenderFps(int i) {
        this.mVideoRenderFps = i;
    }

    protected void setVideoUploadBitrate(int i) {
        this.mVideoUploadBitrate = i;
    }

    protected void setVideoUploadeFps(int i) {
        this.mVideoUploadeFps = i;
    }

    public String toString() {
        return "mVideoCaptureFps=" + this.mVideoCaptureFps + ", mAudioCaptureFps=" + this.mAudioCaptureFps + ", mAudioEncodeBitrate=" + this.mAudioEncodeBitrate + ", mAudioEncodeFps=" + this.mAudioEncodeFps + ", mAudioFrameInEncodeBuffer=" + this.mAudioFrameInEncodeBuffer + ", mVideoRenderFps=" + this.mVideoRenderFps + ", mVideoFramesInRenderBuffer=" + this.mVideoFramesInRenderBuffer + ", mVideoEncodeMode=" + this.mVideoEncodeMode + ", mVideoEncodeBitrate=" + this.mVideoEncodeBitrate + ", mVideoEncodeFps=" + this.mVideoEncodeFps + ", mTotalFramesOfEncodedVideo=" + this.mTotalFramesOfEncodedVideo + ", mTotalTimeOfEncodedVideo=" + this.mTotalTimeOfEncodedVideo + ", mVideoEncodeParam=" + this.mVideoEncodeParam + ", mVideoFramesInEncodeBuffer=" + this.mVideoFramesInEncodeBuffer + ", mAudioUploadBitrate=" + this.mAudioUploadBitrate + ", mVideoUploadBitrate=" + this.mVideoUploadBitrate + ", mAudioPacketsInUploadBuffer=" + this.mAudioPacketsInUploadBuffer + ", mVideoPacketsInUploadBuffer=" + this.mVideoPacketsInUploadBuffer + ", mVideoUploadeFps=" + this.mVideoUploadeFps + ", mAudioUploadFps=" + this.mAudioUploadFps + ", mCurrentlyUploadedVideoFramePts=" + this.mCurrentlyUploadedVideoFramePts + ", mCurrentlyUploadedAudioFramePts=" + this.mCurrentlyUploadedAudioFramePts + ", mPreviousVideoKeyFramePts=" + this.mPreviousVideoKeyFramePts + ", mLastVideoPtsInBuffer=" + this.mLastVideoPtsInBuffer + ", mLastAudioPtsInBuffer=" + this.mLastAudioPtsInBuffer + ", mTotalSizeOfUploadedPackets=" + this.mTotalSizeOfUploadedPackets + ", mTotalTimeOfUploading=" + this.mTotalTimeOfUploading + ", mTotalFramesOfUploadedVideo=" + this.mTotalFramesOfUploadedVideo + ", mTotalDurationOfDropingVideoFrames=" + this.mTotalDurationOfDropingVideoFrames + ", mTotalTimesOfDropingVideoFrames=" + this.mTotalTimesOfDropingVideoFrames + ", mTotalTimesOfDisconnect=" + this.mTotalTimesOfDisconnect + ", mTotalTimesOfReconnect=" + this.mTotalTimesOfReconnect + ", mVideoDurationFromeCaptureToUpload=" + this.mVideoDurationFromeCaptureToUpload + ", mAudioDurationFromeCaptureToUpload=" + this.mAudioDurationFromeCaptureToUpload + ", mCurrentUploadPacketSize=" + this.mCurrentUploadPacketSize + ", mAudioVideoPtsDiff=" + this.mAudioVideoPtsDiff + ", mTotalSendedPacketSizeInTwoSecond=" + this.mTotalSendedPacketSizeInTwoSecond + ", mMaxSizeOfVideoPacketsInBuffer=" + this.mMaxSizeOfVideoPacketsInBuffer + ", mMaxSizeOfAudioPacketsInBuffer=" + this.mMaxSizeOfAudioPacketsInBuffer + ", mCpu=" + this.mCpu + ", mMemory=" + this.mMemory + ", mLastVideoFramePTSInQueue=" + this.mLastVideoFramePTSInQueue + ", mLastAudioFramePTSInQueue=" + this.mLastAudioFramePTSInQueue + ", mAvPTSInterval=" + this.mAvPTSInterval + ", mVideoRenderConsumingTimePerFrame=" + this.mVideoRenderConsumingTimePerFrame + ", mTotalDroppedAudioFrames=" + this.mTotalDroppedAudioFrames + ", mRtt=" + this.mRtt + ", mVideoLostRate=" + this.mVideoLostRate + ", mAudioLostRate=" + this.mAudioLostRate + ", mVideoReSendBitRate=" + this.mVideoReSendBitRate + ", mAudioReSendBitRate=" + this.mAudioReSendBitRate + ", mVideoEncodingWidth=" + this.mVideoEncodingWidth + ", mAudioCapturingSampleRate=" + this.mAudioCapturingSampleRate + ", mVideoEncodingGopSize=" + this.mVideoEncodingGopSize + ", mVideoEncodingHeight=" + this.mVideoEncodingHeight + ", mAlivcLivePushPublishType=" + this.mAlivcLivePushPublishType;
    }
}
