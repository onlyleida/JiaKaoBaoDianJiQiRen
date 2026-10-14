package com.serenegiant.media;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Process;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public abstract class MediaReaper implements Runnable {
    private static final boolean DEBUG = false;
    public static final int REAPER_AUDIO = 1;
    public static final int REAPER_VIDEO = 0;
    private static final String TAG = MediaReaper.class.getSimpleName();
    public static final int TIMEOUT_USEC = 10000;
    private MediaCodec.BufferInfo mBufferInfo;
    private volatile boolean mIsEOS;
    private volatile boolean mIsRunning;
    private final ReaperListener mListener;
    private final int mReaperType;
    private volatile boolean mRecorderStarted;
    private int mRequestDrain;
    private boolean mRequestStop;
    private final Object mSync;
    private final WeakReference<MediaCodec> mWeakEncoder;
    private long prevOutputPTSUs;

    public static class AudioReaper extends MediaReaper {
        private static final String MIME_TYPE = "audio/mp4a-latm";
        private final int mChannelCount;
        private final int mSampleRate;

        public AudioReaper(MediaCodec mediaCodec, ReaperListener reaperListener, int i, int i2) {
            super(1, mediaCodec, reaperListener);
            this.mSampleRate = i;
            this.mChannelCount = i2;
        }

        @Override // com.serenegiant.media.MediaReaper
        protected MediaFormat createOutputFormat(byte[] bArr, int i, int i2, int i3, int i4) {
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", this.mSampleRate, this.mChannelCount);
            ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
            byteBufferOrder.put(bArr, 0, i);
            byteBufferOrder.flip();
            mediaFormatCreateAudioFormat.setByteBuffer("csd-0", byteBufferOrder);
            return mediaFormatCreateAudioFormat;
        }
    }

    public interface ReaperListener {
        void onError(MediaReaper mediaReaper, Exception exc);

        void onOutputFormatChanged(MediaReaper mediaReaper, MediaFormat mediaFormat);

        void onStop(MediaReaper mediaReaper);

        void writeSampleData(MediaReaper mediaReaper, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);
    }

    public static class VideoReaper extends MediaReaper {
        public static final String MIME_AVC = "video/avc";
        private final int mHeight;
        private final int mWidth;

        public VideoReaper(MediaCodec mediaCodec, ReaperListener reaperListener, int i, int i2) {
            super(0, mediaCodec, reaperListener);
            this.mWidth = i;
            this.mHeight = i2;
        }

        @Override // com.serenegiant.media.MediaReaper
        protected MediaFormat createOutputFormat(byte[] bArr, int i, int i2, int i3, int i4) {
            if (i2 < 0) {
                throw new RuntimeException("unexpected csd data came.");
            }
            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", this.mWidth, this.mHeight);
            int i5 = i3 - i2;
            ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i5).order(ByteOrder.nativeOrder());
            byteBufferOrder.put(bArr, i2, i5);
            byteBufferOrder.flip();
            mediaFormatCreateVideoFormat.setByteBuffer("csd-0", byteBufferOrder);
            if (i3 > i2) {
                int i6 = i4 > i3 ? i4 - i3 : i - i3;
                ByteBuffer byteBufferOrder2 = ByteBuffer.allocateDirect(i6).order(ByteOrder.nativeOrder());
                byteBufferOrder2.put(bArr, i3, i6);
                byteBufferOrder2.flip();
                mediaFormatCreateVideoFormat.setByteBuffer("csd-1", byteBufferOrder2);
            }
            return mediaFormatCreateVideoFormat;
        }
    }

    public MediaReaper(int i, MediaCodec mediaCodec, ReaperListener reaperListener) {
        Object obj = new Object();
        this.mSync = obj;
        this.prevOutputPTSUs = -1L;
        this.mWeakEncoder = new WeakReference<>(mediaCodec);
        this.mListener = reaperListener;
        this.mReaperType = i;
        this.mBufferInfo = new MediaCodec.BufferInfo();
        synchronized (obj) {
            new Thread(this, getClass().getSimpleName()).start();
            try {
                obj.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    private void callOnError(Exception exc) {
        try {
            this.mListener.onError(this, exc);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    private boolean callOnFormatChanged(MediaFormat mediaFormat) {
        try {
            this.mListener.onOutputFormatChanged(this, mediaFormat);
            this.mRecorderStarted = true;
            return true;
        } catch (Exception e2) {
            callOnError(e2);
            return false;
        }
    }

    private void callOnStop() {
        try {
            this.mListener.onStop(this);
        } catch (Exception e2) {
            callOnError(e2);
        }
    }

    private final void drain() {
        MediaCodec mediaCodec = this.mWeakEncoder.get();
        if (mediaCodec == null) {
            return;
        }
        try {
            ByteBuffer[] outputBuffers = mediaCodec.getOutputBuffers();
            int i = 0;
            while (this.mIsRunning) {
                int iDequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(this.mBufferInfo, 10000L);
                if (iDequeueOutputBuffer == -1) {
                    if (!this.mIsEOS && (i = i + 1) > 5) {
                        return;
                    }
                } else if (iDequeueOutputBuffer == -3) {
                    outputBuffers = mediaCodec.getOutputBuffers();
                } else if (iDequeueOutputBuffer == -2) {
                    if (this.mRecorderStarted) {
                        throw new RuntimeException("format changed twice");
                    }
                    if (!callOnFormatChanged(mediaCodec.getOutputFormat())) {
                        return;
                    }
                } else if (iDequeueOutputBuffer < 0) {
                    continue;
                } else {
                    ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                    if (byteBuffer == null) {
                        throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                    }
                    if ((this.mBufferInfo.flags & 2) != 0) {
                        if (!this.mRecorderStarted) {
                            byte[] bArr = new byte[this.mBufferInfo.size];
                            byteBuffer.position(0);
                            MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                            byteBuffer.get(bArr, bufferInfo.offset, bufferInfo.size);
                            byteBuffer.position(0);
                            int iFindStartMarker = MediaCodecHelper.findStartMarker(bArr, 0);
                            int iFindStartMarker2 = MediaCodecHelper.findStartMarker(bArr, iFindStartMarker + 2);
                            if (!callOnFormatChanged(createOutputFormat(bArr, this.mBufferInfo.size, iFindStartMarker, iFindStartMarker2, MediaCodecHelper.findStartMarker(bArr, iFindStartMarker2 + 2)))) {
                                return;
                            }
                        }
                        this.mBufferInfo.size = 0;
                    }
                    if (this.mBufferInfo.size != 0) {
                        if (!this.mRecorderStarted) {
                            throw new RuntimeException("drain:muxer hasn't started");
                        }
                        try {
                            MediaCodec.BufferInfo bufferInfo2 = this.mBufferInfo;
                            bufferInfo2.presentationTimeUs = getNextOutputPTSUs(bufferInfo2.presentationTimeUs);
                            this.mListener.writeSampleData(this, byteBuffer, this.mBufferInfo);
                        } catch (TimeoutException e2) {
                            callOnError(e2);
                        } catch (Exception e3) {
                            callOnError(e3);
                        }
                        i = 0;
                    }
                    mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    if ((this.mBufferInfo.flags & 4) != 0) {
                        callOnStop();
                        return;
                    }
                }
            }
        } catch (IllegalStateException unused) {
        }
    }

    protected abstract MediaFormat createOutputFormat(byte[] bArr, int i, int i2, int i3, int i4);

    public void frameAvailableSoon() {
        synchronized (this.mSync) {
            if (this.mIsRunning && !this.mRequestStop) {
                this.mRequestDrain++;
                this.mSync.notifyAll();
            }
        }
    }

    protected long getNextOutputPTSUs(long j) {
        long j2 = this.prevOutputPTSUs;
        if (j <= j2) {
            j = 9643 + j2;
        }
        this.prevOutputPTSUs = j;
        return j;
    }

    public int reaperType() {
        return this.mReaperType;
    }

    public void release() {
        if (this.mIsRunning && !this.mRequestStop) {
            this.mRequestStop = true;
        }
        synchronized (this.mSync) {
            this.mSync.notifyAll();
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        boolean z2;
        Process.setThreadPriority(-4);
        synchronized (this.mSync) {
            this.mIsRunning = true;
            this.mRequestStop = false;
            this.mRequestDrain = 0;
            this.mSync.notify();
        }
        while (this.mIsRunning) {
            synchronized (this.mSync) {
                z = this.mRequestStop;
                int i = this.mRequestDrain;
                z2 = i > 0;
                if (z2) {
                    this.mRequestDrain = i - 1;
                }
            }
            if (z) {
                drain();
                this.mIsEOS = true;
                release();
                break;
            } else if (z2) {
                try {
                    drain();
                } catch (IllegalStateException unused) {
                } catch (Exception e2) {
                    Log.w(TAG, e2);
                }
            } else {
                synchronized (this.mSync) {
                    try {
                        try {
                            this.mSync.wait(50L);
                        } catch (InterruptedException unused2) {
                            synchronized (this.mSync) {
                                this.mRequestStop = true;
                                this.mIsRunning = false;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        synchronized (this.mSync) {
            this.mRequestStop = true;
            this.mIsRunning = false;
        }
    }
}
