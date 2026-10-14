package com.serenegiant.media;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractRecorder {
    private static final boolean DEBUG = false;
    private static final String TAG = "AbstractRecorder";
    protected MediaEncoder mAudioEncoder;
    protected final String mOutputPath;
    protected MediaEncoder mVideoEncoder;
    protected int mStartedCount = 0;
    protected int mEncoderCount = 0;
    protected volatile boolean mIsStarted = false;

    public AbstractRecorder(String str) {
        this.mOutputPath = str;
    }

    void addEncoder(MediaEncoder mediaEncoder) {
        if (mediaEncoder.isAudio()) {
            if (this.mAudioEncoder != null) {
                throw new IllegalArgumentException("Video encoder already added.");
            }
            this.mAudioEncoder = mediaEncoder;
        } else {
            if (this.mVideoEncoder != null) {
                throw new IllegalArgumentException("Video encoder already added.");
            }
            this.mVideoEncoder = mediaEncoder;
        }
        this.mEncoderCount = (this.mVideoEncoder != null ? 1 : 0) + (this.mAudioEncoder == null ? 0 : 1);
    }

    abstract int addTrack(MediaFormat mediaFormat);

    public void frameAvailableSoon() {
        MediaEncoder mediaEncoder = this.mVideoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.frameAvailableSoon();
        }
    }

    public abstract int getHeight();

    public abstract Surface getInputSurface() throws IllegalStateException;

    public String getOutputPath() {
        return this.mOutputPath;
    }

    public abstract int getWidth();

    protected abstract void internal_start();

    protected abstract void internal_stop();

    public boolean isStarted() {
        return this.mIsStarted;
    }

    public void prepare() throws IOException {
        MediaEncoder mediaEncoder = this.mVideoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.prepare();
        }
        MediaEncoder mediaEncoder2 = this.mAudioEncoder;
        if (mediaEncoder2 != null) {
            mediaEncoder2.prepare();
        }
    }

    public void release() {
        MediaEncoder mediaEncoder = this.mVideoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.release();
            this.mVideoEncoder = null;
        }
        MediaEncoder mediaEncoder2 = this.mAudioEncoder;
        if (mediaEncoder2 != null) {
            mediaEncoder2.release();
            this.mAudioEncoder = null;
        }
    }

    synchronized boolean start() {
        int i = this.mStartedCount + 1;
        this.mStartedCount = i;
        int i2 = this.mEncoderCount;
        if (i2 > 0 && i == i2) {
            internal_start();
            this.mIsStarted = true;
            notifyAll();
        }
        return this.mIsStarted;
    }

    public void startRecording() {
        MediaEncoder mediaEncoder = this.mVideoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.start();
        }
        MediaEncoder mediaEncoder2 = this.mAudioEncoder;
        if (mediaEncoder2 != null) {
            mediaEncoder2.start();
        }
    }

    synchronized void stop() {
        int i = this.mStartedCount - 1;
        this.mStartedCount = i;
        if (this.mEncoderCount > 0 && i <= 0) {
            this.mIsStarted = false;
            internal_stop();
        }
    }

    public void stopRecording() {
        MediaEncoder mediaEncoder = this.mVideoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.stop();
        }
        this.mVideoEncoder = null;
        MediaEncoder mediaEncoder2 = this.mAudioEncoder;
        if (mediaEncoder2 != null) {
            mediaEncoder2.stop();
        }
        this.mAudioEncoder = null;
    }

    abstract void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);
}
