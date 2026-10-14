package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import com.serenegiant.utils.BuildCheck;
import com.serenegiant.utils.Time;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public abstract class MediaDecoder implements IMediaCodec {
    private static final boolean DEBUG = false;
    protected static final int STATE_INITIALIZED = 1;
    protected static final int STATE_PAUSED = 4;
    protected static final int STATE_PLAYING = 3;
    protected static final int STATE_PREPARED = 2;
    protected static final int STATE_UNINITIALIZED = 0;
    protected static final int STATE_WAIT = 5;
    private static final String TAG_STATIC = "MediaDecoder";
    private static final int TIMEOUT_USEC = 10000;
    private int mBitRate;
    private MediaCodec.BufferInfo mBufferInfo;
    private IMediaCodecCallback mCallback;
    private long mDuration;
    private ByteBuffer[] mInputBuffers;
    private volatile boolean mInputDone;
    private volatile boolean mIsRunning;
    private MediaCodec mMediaCodec;
    private MediaExtractor mMediaExtractor;
    private MediaMetadataRetriever mMediaMetadataRetriever;
    private ByteBuffer[] mOutputBuffers;
    private volatile boolean mOutputDone;
    private long mStartTime;
    private int mTrackIndex;
    private long presentationTimeUs;
    protected final String TAG = getClass().getSimpleName();
    private final Object mSync = new Object();
    private long mRequestTime = -1;
    protected int mState = 0;
    private final Runnable mPlaybackTask = new Runnable() { // from class: com.serenegiant.media.MediaDecoder.1
        @Override // java.lang.Runnable
        public final void run() {
            MediaDecoder mediaDecoder = MediaDecoder.this;
            mediaDecoder.mInputDone = mediaDecoder.mOutputDone = false;
            MediaDecoder.this.mIsRunning = true;
            MediaDecoder.this.callOnStart();
            while (true) {
                if (MediaDecoder.this.mInputDone && MediaDecoder.this.mOutputDone) {
                    break;
                }
                try {
                    if (MediaDecoder.this.mRequestTime >= 0) {
                        MediaDecoder mediaDecoder2 = MediaDecoder.this;
                        mediaDecoder2.handleSeek(mediaDecoder2.mRequestTime);
                    }
                    if (!MediaDecoder.this.mInputDone) {
                        MediaDecoder.this.internal_HandleInput();
                    }
                    if (!MediaDecoder.this.mOutputDone) {
                        MediaDecoder.this.internal_handleOutput();
                    }
                    if (!MediaDecoder.this.mIsRunning || (MediaDecoder.this.mInputDone && MediaDecoder.this.mOutputDone)) {
                        MediaDecoder mediaDecoder3 = MediaDecoder.this;
                        mediaDecoder3.mState = 5;
                        mediaDecoder3.callOnStop();
                        if (!MediaDecoder.this.mIsRunning) {
                            break;
                        }
                        MediaDecoder.this.mMediaCodec.flush();
                        synchronized (MediaDecoder.this.mSync) {
                            MediaDecoder mediaDecoder4 = MediaDecoder.this;
                            if (mediaDecoder4.mState == 5) {
                                try {
                                    mediaDecoder4.mSync.wait();
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        if (!MediaDecoder.this.mIsRunning) {
                            break;
                        }
                        MediaDecoder.this.callOnStart();
                        MediaDecoder mediaDecoder5 = MediaDecoder.this;
                        mediaDecoder5.mStartTime = mediaDecoder5.presentationTimeUs = -1L;
                        MediaDecoder mediaDecoder6 = MediaDecoder.this;
                        mediaDecoder6.mInputDone = mediaDecoder6.mOutputDone = false;
                        MediaDecoder.this.mState = 3;
                    }
                } catch (Exception e2) {
                    Log.e(MediaDecoder.this.TAG, "PlaybackTask:", e2);
                    MediaDecoder.this.callErrorHandler(e2);
                }
            }
            MediaDecoder.this.internal_stop();
            synchronized (MediaDecoder.this.mSync) {
                MediaDecoder.this.mSync.notifyAll();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSeek(long j) {
        if (j < 0) {
            return;
        }
        MediaExtractor mediaExtractor = this.mMediaExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.seekTo(j, 0);
            this.mMediaExtractor.advance();
        }
        this.mRequestTime = -1L;
    }

    private void internal_release() throws IOException {
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec != null) {
            mediaCodec.release();
            this.mMediaCodec = null;
        }
        MediaExtractor mediaExtractor = this.mMediaExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
            this.mMediaExtractor = null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = this.mMediaMetadataRetriever;
        if (mediaMetadataRetriever != null) {
            mediaMetadataRetriever.release();
            this.mMediaMetadataRetriever = null;
        }
        this.mTrackIndex = -1;
        this.mDuration = 0L;
        this.mBitRate = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void internal_stop() {
        int i = this.mState;
        if (i == 3 || i == 4 || i == 5) {
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.stop();
            }
            this.mState = 2;
        }
    }

    protected static final int selectTrack(MediaExtractor mediaExtractor, String str) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            if (mediaExtractor.getTrackFormat(i).getString("mime").startsWith(str)) {
                return i;
            }
        }
        return -1;
    }

    protected long adjustPresentationTime(long j, long j2) {
        if (BuildCheck.isJellyBeanMr1()) {
            return adjustPresentationTimeAPI17(j, j2);
        }
        if (j <= 0) {
            return Time.nanoTime() / 1000;
        }
        long jNanoTime = Time.nanoTime();
        while (true) {
            long j3 = j2 - ((jNanoTime / 1000) - j);
            if (j3 <= 0) {
                break;
            }
            synchronized (this.mSync) {
                try {
                    this.mSync.wait(j3 / 1000, (int) ((j3 % 1000) * 1000));
                } catch (InterruptedException unused) {
                }
                if (!this.mIsRunning) {
                }
            }
            break;
            jNanoTime = Time.nanoTime();
        }
        return j;
    }

    @SuppressLint({"NewApi"})
    protected long adjustPresentationTimeAPI17(long j, long j2) {
        if (j <= 0) {
            return Time.nanoTime() / 1000;
        }
        long jNanoTime = Time.nanoTime();
        while (true) {
            long j3 = j2 - ((jNanoTime / 1000) - j);
            if (j3 <= 0) {
                break;
            }
            synchronized (this.mSync) {
                try {
                    this.mSync.wait(j3 / 1000, (int) ((j3 % 1000) * 1000));
                } catch (InterruptedException unused) {
                }
                if (!this.mIsRunning) {
                }
            }
            break;
            jNanoTime = Time.nanoTime();
        }
        return j;
    }

    protected boolean callErrorHandler(Exception exc) {
        IMediaCodecCallback iMediaCodecCallback = this.mCallback;
        if (iMediaCodecCallback != null) {
            return iMediaCodecCallback.onError(this, exc);
        }
        return false;
    }

    protected void callOnPrepared() {
        IMediaCodecCallback iMediaCodecCallback = this.mCallback;
        if (iMediaCodecCallback != null) {
            try {
                iMediaCodecCallback.onPrepared(this);
            } catch (Exception e2) {
                Log.w(this.TAG, "callOnPrepared", e2);
            }
        }
    }

    protected void callOnRelease() {
        IMediaCodecCallback iMediaCodecCallback = this.mCallback;
        if (iMediaCodecCallback != null) {
            try {
                iMediaCodecCallback.onRelease(this);
            } catch (Exception e2) {
                Log.w(this.TAG, "callOnRelease", e2);
            }
        }
    }

    protected void callOnStart() {
        IMediaCodecCallback iMediaCodecCallback = this.mCallback;
        if (iMediaCodecCallback != null) {
            try {
                iMediaCodecCallback.onStart(this);
            } catch (Exception e2) {
                Log.w(this.TAG, "callOnStart", e2);
            }
        }
    }

    protected void callOnStop() {
        IMediaCodecCallback iMediaCodecCallback = this.mCallback;
        if (iMediaCodecCallback != null) {
            try {
                iMediaCodecCallback.onStop(this);
            } catch (Exception e2) {
                Log.w(this.TAG, "callOnStop", e2);
            }
        }
    }

    protected MediaCodec createCodec(MediaExtractor mediaExtractor, int i, MediaFormat mediaFormat) throws IOException {
        if (i < 0) {
            return null;
        }
        MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(mediaFormat.getString("mime"));
        mediaCodecCreateDecoderByType.configure(mediaFormat, getOutputSurface(), (MediaCrypto) null, 0);
        mediaCodecCreateDecoderByType.start();
        return mediaCodecCreateDecoderByType;
    }

    public int getBitRate() {
        return this.mBitRate;
    }

    public IMediaCodecCallback getCallback() {
        return this.mCallback;
    }

    public long getDuration() {
        return this.mDuration;
    }

    protected abstract Surface getOutputSurface();

    protected long handleInput(long j) {
        int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(10000L);
        if (iDequeueInputBuffer < 0) {
            return j;
        }
        int sampleData = this.mMediaExtractor.readSampleData(this.mInputBuffers[iDequeueInputBuffer], 0);
        if (sampleData > 0) {
            this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, j, 0);
        }
        this.mMediaExtractor.advance();
        return -1L;
    }

    protected abstract boolean handleOutput(ByteBuffer byteBuffer, int i, int i2, long j);

    protected abstract int handlePrepare(MediaExtractor mediaExtractor);

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    protected void internal_HandleInput() {
        boolean z;
        int iDequeueInputBuffer;
        if (this.mInputDone) {
            z = false;
        } else {
            if (this.presentationTimeUs < 0) {
                this.presentationTimeUs = this.mMediaExtractor.getSampleTime();
            }
            long j = this.presentationTimeUs;
            if (j >= 0) {
                this.presentationTimeUs = handleInput(j);
                z = true;
            } else {
                z = false;
            }
        }
        if (z || (iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(10000L)) < 0) {
            return;
        }
        this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
        this.mInputDone = true;
    }

    protected void internal_handleOutput() {
        IMediaCodecCallback iMediaCodecCallback;
        int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(this.mBufferInfo, 10000L);
        if (iDequeueOutputBuffer == -1) {
            return;
        }
        if (iDequeueOutputBuffer == -3) {
            this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
            return;
        }
        if (iDequeueOutputBuffer == -2) {
            this.mMediaCodec.getOutputFormat();
            return;
        }
        if (iDequeueOutputBuffer < 0) {
            RuntimeException runtimeException = new RuntimeException("unexpected result from dequeueOutputBuffer: " + iDequeueOutputBuffer);
            if (!callErrorHandler(runtimeException)) {
                throw runtimeException;
            }
            return;
        }
        boolean z = false;
        MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
        int i = bufferInfo.size;
        if (i > 0 && ((z = !handleOutput(this.mOutputBuffers[iDequeueOutputBuffer], 0, i, bufferInfo.presentationTimeUs))) && ((iMediaCodecCallback = this.mCallback) == null || !iMediaCodecCallback.onFrameAvailable(this, this.mBufferInfo.presentationTimeUs))) {
            this.mStartTime = adjustPresentationTime(this.mStartTime, this.mBufferInfo.presentationTimeUs);
        }
        this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, z);
        if ((this.mBufferInfo.flags & 4) != 0) {
            this.mOutputDone = true;
        }
    }

    @Override // com.serenegiant.media.IMediaCodec
    public boolean isPrepared() {
        return this.mState >= 2;
    }

    @Override // com.serenegiant.media.IMediaCodec
    public boolean isRunning() {
        return this.mState == 3;
    }

    public void pause() {
        int i = this.mState;
        if (i == 3 || i == 4 || i == 5) {
            this.mState = 4;
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException();
        if (!callErrorHandler(illegalStateException)) {
            throw illegalStateException;
        }
    }

    @Override // com.serenegiant.media.IMediaCodec, com.serenegiant.media.Encoder
    public void prepare() throws Exception {
        MediaExtractor mediaExtractor = this.mMediaExtractor;
        if (mediaExtractor == null) {
            IllegalStateException illegalStateException = new IllegalStateException("DataSource not set yet");
            if (!callErrorHandler(illegalStateException)) {
                throw illegalStateException;
            }
            return;
        }
        if (this.mState != 1) {
            IllegalStateException illegalStateException2 = new IllegalStateException("already prepared");
            if (!callErrorHandler(illegalStateException2)) {
                throw illegalStateException2;
            }
            return;
        }
        try {
            int iHandlePrepare = handlePrepare(mediaExtractor);
            this.mTrackIndex = iHandlePrepare;
            if (iHandlePrepare < 0) {
                throw new IOException("track not found");
            }
            this.mMediaExtractor.selectTrack(iHandlePrepare);
            MediaFormat trackFormat = this.mMediaExtractor.getTrackFormat(this.mTrackIndex);
            this.mDuration = trackFormat.getLong("durationUs");
            this.mMediaCodec = createCodec(this.mMediaExtractor, this.mTrackIndex, trackFormat);
            if (this.mTrackIndex < 0 || this.mMediaCodec == null) {
                return;
            }
            this.mState = 2;
            callOnPrepared();
        } catch (Exception e2) {
            MediaExtractor mediaExtractor2 = this.mMediaExtractor;
            if (mediaExtractor2 != null) {
                mediaExtractor2.release();
                this.mMediaExtractor = null;
            }
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }

    @Override // com.serenegiant.media.IMediaCodec, com.serenegiant.media.Encoder
    public void release() throws IOException {
        if (this.mState != 0) {
            stop();
            this.mState = 0;
            callOnRelease();
        }
        internal_release();
    }

    public void restart() {
        if (this.mState == 5) {
            synchronized (this.mSync) {
                this.mMediaExtractor.unselectTrack(this.mTrackIndex);
                this.mMediaExtractor.selectTrack(this.mTrackIndex);
                this.mState = 3;
                this.mSync.notifyAll();
            }
        }
    }

    public void seek(long j) {
        this.mRequestTime = j;
    }

    public void setCallback(IMediaCodecCallback iMediaCodecCallback) {
        this.mCallback = iMediaCodecCallback;
    }

    public void setDataSource(String str) throws IOException {
        release();
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            this.mMediaMetadataRetriever = mediaMetadataRetriever;
            mediaMetadataRetriever.setDataSource(str);
            updateMovieInfo(this.mMediaMetadataRetriever);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mMediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(str);
            this.mState = 1;
        } catch (IOException e2) {
            internal_release();
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }

    @Override // com.serenegiant.media.IMediaCodec, com.serenegiant.media.Encoder
    public void start() {
        boolean z;
        int i = this.mState;
        if (i == 2) {
            z = true;
        } else {
            if (i == 3) {
                return;
            }
            if (i != 4) {
                throw new IllegalStateException("invalid state:" + this.mState);
            }
            z = false;
        }
        this.mState = 3;
        if (z) {
            this.presentationTimeUs = -1L;
            this.mBufferInfo = new MediaCodec.BufferInfo();
            this.mInputBuffers = this.mMediaCodec.getInputBuffers();
            this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
            new Thread(this.mPlaybackTask, this.TAG).start();
        }
    }

    @Override // com.serenegiant.media.IMediaCodec
    public void stop() {
        synchronized (this.mSync) {
            this.mIsRunning = false;
            if (this.mState >= 3) {
                this.mSync.notifyAll();
                try {
                    this.mSync.wait(50L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    protected void updateMovieInfo(MediaMetadataRetriever mediaMetadataRetriever) {
        this.mBitRate = 0;
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(20);
        if (TextUtils.isEmpty(strExtractMetadata)) {
            return;
        }
        this.mBitRate = Integer.parseInt(strExtractMetadata);
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException {
        release();
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            this.mMediaMetadataRetriever = mediaMetadataRetriever;
            mediaMetadataRetriever.setDataSource(str, map);
            updateMovieInfo(this.mMediaMetadataRetriever);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mMediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(str, map);
            this.mState = 1;
        } catch (IOException e2) {
            internal_release();
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        release();
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            this.mMediaMetadataRetriever = mediaMetadataRetriever;
            mediaMetadataRetriever.setDataSource(fileDescriptor);
            updateMovieInfo(this.mMediaMetadataRetriever);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mMediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(fileDescriptor);
            this.mState = 1;
        } catch (IOException e2) {
            internal_release();
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IOException {
        release();
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            this.mMediaMetadataRetriever = mediaMetadataRetriever;
            mediaMetadataRetriever.setDataSource(fileDescriptor, j, j2);
            updateMovieInfo(this.mMediaMetadataRetriever);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mMediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(fileDescriptor, j, j2);
            this.mState = 1;
        } catch (IOException e2) {
            internal_release();
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        release();
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            this.mMediaMetadataRetriever = mediaMetadataRetriever;
            mediaMetadataRetriever.setDataSource(context, uri);
            updateMovieInfo(this.mMediaMetadataRetriever);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mMediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(context, uri, map);
            this.mState = 1;
        } catch (IOException e2) {
            internal_release();
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }

    public void setDataSource(Context context, Uri uri) throws IOException {
        release();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        this.mMediaMetadataRetriever = mediaMetadataRetriever;
        try {
            mediaMetadataRetriever.setDataSource(context, uri);
            updateMovieInfo(this.mMediaMetadataRetriever);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mMediaExtractor = mediaExtractor;
            mediaExtractor.setDataSource(context, uri, (Map<String, String>) null);
            this.mState = 1;
        } catch (IOException e2) {
            release();
            if (!callErrorHandler(e2)) {
                throw e2;
            }
        }
    }
}
