package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.util.Log;
import com.serenegiant.utils.Time;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public abstract class MediaEncoder implements IMediaCodec {
    private static final boolean DEBUG = false;
    private final String TAG = getClass().getSimpleName();
    private MediaCodec.BufferInfo mBufferInfo;
    private final IMediaCodecCallback mCallback;
    private final Runnable mEncodeTask;
    protected final boolean mIsAudio;
    protected volatile boolean mIsCapturing;
    protected boolean mIsEOS;
    protected boolean mIsPrepared;
    protected MediaCodec mMediaCodec;
    protected boolean mMuxerStarted;
    private int mRequestDrain;
    protected volatile boolean mRequestStop;
    protected final Object mSync;
    protected int mTrackIndex;
    protected final WeakReference<AbstractRecorder> mWeakMuxer;
    private long prevOutputPTSUs;

    public MediaEncoder(boolean z, AbstractRecorder abstractRecorder, IMediaCodecCallback iMediaCodecCallback) {
        Object obj = new Object();
        this.mSync = obj;
        Runnable runnable = new Runnable() { // from class: com.serenegiant.media.MediaEncoder.1
            /* JADX WARN: Code duplicated, block: B:48:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            public void run() {
                synchronized (MediaEncoder.this.mSync) {
                    MediaEncoder.this.mRequestStop = false;
                    MediaEncoder.this.mRequestDrain = 0;
                    MediaEncoder.this.mSync.notify();
                    try {
                        MediaEncoder.this.mSync.wait();
                        MediaEncoder.this.callOnStart();
                    } catch (InterruptedException unused) {
                    }
                }
                while (true) {
                    synchronized (MediaEncoder.this.mSync) {
                        boolean z2 = MediaEncoder.this.mRequestStop;
                        boolean z3 = MediaEncoder.this.mRequestDrain > 0;
                        if (z3) {
                            MediaEncoder.access$010(MediaEncoder.this);
                        }
                        if (!z3 && !z2) {
                            try {
                                MediaEncoder.this.mSync.wait();
                            } catch (InterruptedException unused2) {
                                MediaEncoder.this.release();
                                synchronized (MediaEncoder.this.mSync) {
                                    MediaEncoder.this.mRequestStop = true;
                                    MediaEncoder.this.mIsCapturing = false;
                                }
                            }
                        } else if (z2) {
                            break;
                        } else if (z3) {
                            MediaEncoder.this.drain();
                        }
                    }
                }
                MediaEncoder.this.callOnStop();
                MediaEncoder.this.drain();
                MediaEncoder.this.signalEndOfInputStream();
                MediaEncoder.this.drain();
                MediaEncoder.this.release();
                synchronized (MediaEncoder.this.mSync) {
                    MediaEncoder.this.mRequestStop = true;
                    MediaEncoder.this.mIsCapturing = false;
                }
            }
        };
        this.mEncodeTask = runnable;
        this.prevOutputPTSUs = 0L;
        Objects.requireNonNull(iMediaCodecCallback, "MediaEncoderListener is null");
        Objects.requireNonNull(abstractRecorder, "MediaMuxerWrapper is null");
        this.mIsAudio = z;
        this.mWeakMuxer = new WeakReference<>(abstractRecorder);
        abstractRecorder.addEncoder(this);
        this.mCallback = iMediaCodecCallback;
        synchronized (obj) {
            this.mBufferInfo = new MediaCodec.BufferInfo();
            new Thread(runnable, getClass().getSimpleName()).start();
            try {
                obj.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    static /* synthetic */ int access$010(MediaEncoder mediaEncoder) {
        int i = mediaEncoder.mRequestDrain;
        mediaEncoder.mRequestDrain = i - 1;
        return i;
    }

    protected boolean callErrorHandler(Exception exc) {
        IMediaCodecCallback iMediaCodecCallback = this.mCallback;
        return iMediaCodecCallback != null && iMediaCodecCallback.onError(this, exc);
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

    protected void drain() {
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            return;
        }
        ByteBuffer[] outputBuffers = mediaCodec.getOutputBuffers();
        AbstractRecorder abstractRecorder = this.mWeakMuxer.get();
        if (abstractRecorder == null) {
            Log.w(this.TAG, "muxer is unexpectedly null");
            return;
        }
        int i = 0;
        while (this.mIsCapturing) {
            try {
                int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(this.mBufferInfo, 10000L);
                if (iDequeueOutputBuffer == -1) {
                    if (!this.mIsEOS && (i = i + 1) > 5) {
                        return;
                    }
                } else if (iDequeueOutputBuffer == -3) {
                    outputBuffers = this.mMediaCodec.getOutputBuffers();
                } else if (iDequeueOutputBuffer == -2) {
                    if (this.mMuxerStarted) {
                        RuntimeException runtimeException = new RuntimeException("format changed twice");
                        if (!callErrorHandler(runtimeException)) {
                            throw runtimeException;
                        }
                    }
                    this.mTrackIndex = abstractRecorder.addTrack(this.mMediaCodec.getOutputFormat());
                    this.mMuxerStarted = true;
                    if (abstractRecorder.start()) {
                        continue;
                    } else {
                        synchronized (abstractRecorder) {
                            while (!abstractRecorder.isStarted() && this.mIsCapturing) {
                                try {
                                    abstractRecorder.wait(100L);
                                } catch (InterruptedException unused) {
                                    return;
                                }
                            }
                        }
                    }
                } else if (iDequeueOutputBuffer >= 0) {
                    ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                    if (byteBuffer == null) {
                        RuntimeException runtimeException2 = new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                        if (!callErrorHandler(runtimeException2)) {
                            throw runtimeException2;
                        }
                    }
                    MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                    if ((bufferInfo.flags & 2) != 0) {
                        bufferInfo.size = 0;
                    }
                    if (bufferInfo.size != 0) {
                        if (!this.mMuxerStarted) {
                            throw new RuntimeException("drain:muxer hasn't started");
                        }
                        bufferInfo.presentationTimeUs = getPTSUs();
                        abstractRecorder.writeSampleData(this.mTrackIndex, byteBuffer, this.mBufferInfo);
                        this.prevOutputPTSUs = this.mBufferInfo.presentationTimeUs;
                        i = 0;
                    }
                    this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    if ((this.mBufferInfo.flags & 4) != 0) {
                        this.mIsCapturing = false;
                        return;
                    }
                }
            } catch (Exception e2) {
                callErrorHandler(e2);
                return;
            }
        }
    }

    public void encode(ByteBuffer byteBuffer) {
        encode(byteBuffer, byteBuffer.capacity(), getPTSUs());
    }

    public void frameAvailableSoon() {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                this.mRequestDrain++;
                this.mSync.notifyAll();
            }
        }
    }

    public String getOutputPath() {
        AbstractRecorder abstractRecorder = this.mWeakMuxer.get();
        if (abstractRecorder != null) {
            return abstractRecorder.getOutputPath();
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    protected long getPTSUs() {
        long jNanoTime = Time.nanoTime() / 1000;
        long j = this.prevOutputPTSUs;
        return jNanoTime < j ? jNanoTime + (j - jNanoTime) : jNanoTime;
    }

    public boolean isAudio() {
        return this.mIsAudio;
    }

    public boolean isCapturing() {
        return this.mIsCapturing;
    }

    @Override // com.serenegiant.media.IMediaCodec
    public boolean isPrepared() {
        return this.mIsPrepared;
    }

    @Override // com.serenegiant.media.IMediaCodec
    public boolean isRunning() {
        return this.mIsCapturing;
    }

    @Override // com.serenegiant.media.IMediaCodec, com.serenegiant.media.Encoder
    public void release() {
        AbstractRecorder abstractRecorder;
        this.mIsCapturing = false;
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec != null) {
            try {
                mediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            } catch (Exception e2) {
                if (!callErrorHandler(e2)) {
                    Log.e(this.TAG, "failed releasing MediaCodec", e2);
                }
            }
        }
        if (this.mMuxerStarted && (abstractRecorder = this.mWeakMuxer.get()) != null) {
            try {
                abstractRecorder.stop();
            } catch (Exception e3) {
                if (!callErrorHandler(e3)) {
                    Log.e(this.TAG, "failed stopping muxer", e3);
                }
            }
        }
        this.mBufferInfo = null;
        callOnRelease();
    }

    public void signalEndOfInputStream() {
        encode(null, 0, getPTSUs());
    }

    @Override // com.serenegiant.media.IMediaCodec, com.serenegiant.media.Encoder
    public void start() {
        synchronized (this.mSync) {
            this.mIsCapturing = true;
            this.mRequestStop = false;
            this.mSync.notifyAll();
        }
    }

    @Override // com.serenegiant.media.IMediaCodec
    public void stop() {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                this.mRequestStop = true;
                this.mSync.notifyAll();
            }
        }
    }

    public void encode(ByteBuffer byteBuffer, int i, long j) {
        MediaCodec mediaCodec;
        if (!this.mIsCapturing || this.mRequestStop || (mediaCodec = this.mMediaCodec) == null) {
            return;
        }
        ByteBuffer[] inputBuffers = mediaCodec.getInputBuffers();
        while (this.mIsCapturing) {
            int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(10000L);
            if (iDequeueInputBuffer >= 0) {
                ByteBuffer byteBuffer2 = inputBuffers[iDequeueInputBuffer];
                byteBuffer2.clear();
                if (byteBuffer != null) {
                    byteBuffer2.put(byteBuffer);
                }
                if (i > 0) {
                    this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, i, j, 0);
                    return;
                } else {
                    this.mIsEOS = true;
                    this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, j, 4);
                    return;
                }
            }
        }
    }
}
