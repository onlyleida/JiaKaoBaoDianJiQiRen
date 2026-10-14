package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Process;
import android.util.Log;
import com.serenegiant.utils.BufferHelper;
import com.serenegiant.utils.Time;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public abstract class AbstractEncoder implements Encoder {
    private static final String TAG = "AbstractEncoder";
    public static final int TIMEOUT_USEC = 10000;
    protected final String MIME_TYPE;
    private MediaCodec.BufferInfo mBufferInfo;
    protected volatile boolean mIsCapturing;
    protected volatile boolean mIsEOS;
    private final EncoderListener mListener;
    protected MediaCodec mMediaCodec;
    private IRecorder mRecorder;
    protected volatile boolean mRecorderStarted;
    private volatile int mRequestDrain;
    protected volatile boolean mRequestStop;
    protected int mTrackIndex;
    protected final Object mSync = new Object();
    private final Runnable mDrainTask = new Runnable() { // from class: com.serenegiant.media.AbstractEncoder.1
        /* JADX WARN: Code duplicated, block: B:26:0x0056  */
        /* JADX WARN: Code duplicated, block: B:27:0x0058  */
        /* JADX WARN: Code duplicated, block: B:29:0x005b A[Catch: all -> 0x00bf, TryCatch #10 {, blocks: (B:24:0x0049, B:29:0x005b, B:30:0x0060), top: B:89:0x0049 }] */
        /* JADX WARN: Code duplicated, block: B:36:0x0078 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:71:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:73:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:82:0x0063 A[EDGE_INSN: B:82:0x0063->B:32:0x0063 BREAK  A[LOOP:1: B:22:0x0044->B:94:0x0044], EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:84:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:89:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:93:0x0091 A[SYNTHETIC] */
        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            boolean z2;
            boolean z3;
            Process.setThreadPriority(-4);
            synchronized (AbstractEncoder.this.mSync) {
                AbstractEncoder.this.mRequestStop = false;
                AbstractEncoder.this.mRequestDrain = 0;
                AbstractEncoder.this.mSync.notify();
            }
            boolean z4 = false;
            while (!AbstractEncoder.this.mIsCapturing && !z4) {
                synchronized (AbstractEncoder.this.mSync) {
                    try {
                        try {
                            AbstractEncoder.this.mSync.wait(10L);
                            z3 = AbstractEncoder.this.mRequestStop;
                            AbstractEncoder.this.mRequestDrain = 0;
                        } catch (InterruptedException unused) {
                            while (true) {
                                synchronized (AbstractEncoder.this.mSync) {
                                    z = AbstractEncoder.this.mRequestStop;
                                    if (AbstractEncoder.this.mRequestDrain > 0) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        AbstractEncoder.access$010(AbstractEncoder.this);
                                    }
                                    if (z) {
                                        try {
                                            break;
                                        } catch (Exception unused2) {
                                        }
                                    } else if (z2) {
                                        try {
                                            AbstractEncoder.this.drain();
                                        } catch (Exception e2) {
                                            if (!AbstractEncoder.this.mRequestStop) {
                                                AbstractEncoder.this.callOnError(e2);
                                            }
                                            AbstractEncoder.this.mRequestStop = true;
                                        }
                                    } else {
                                        synchronized (AbstractEncoder.this.mSync) {
                                            try {
                                                try {
                                                    AbstractEncoder.this.mSync.wait(30L);
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            } catch (InterruptedException unused3) {
                                                synchronized (AbstractEncoder.this.mSync) {
                                                    AbstractEncoder.this.mRequestStop = true;
                                                    AbstractEncoder.this.mIsCapturing = false;
                                                    AbstractEncoder.this.mSync.notifyAll();
                                                }
                                            }
                                        }
                                    }
                                    synchronized (AbstractEncoder.this.mSync) {
                                        AbstractEncoder.this.mRequestStop = true;
                                        AbstractEncoder.this.mIsCapturing = false;
                                        AbstractEncoder.this.mSync.notifyAll();
                                    }
                                }
                            }
                            AbstractEncoder.this.drain();
                            AbstractEncoder.this.signalEndOfInputStream();
                            AbstractEncoder.this.drain();
                            AbstractEncoder.this.release();
                            synchronized (AbstractEncoder.this.mSync) {
                                AbstractEncoder.this.mRequestStop = true;
                                AbstractEncoder.this.mIsCapturing = false;
                                AbstractEncoder.this.mSync.notifyAll();
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                z4 = z3;
            }
            try {
                while (true) {
                    synchronized (AbstractEncoder.this.mSync) {
                        z = AbstractEncoder.this.mRequestStop;
                        if (AbstractEncoder.this.mRequestDrain > 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            AbstractEncoder.access$010(AbstractEncoder.this);
                        }
                    }
                    if (z) {
                        break;
                        break;
                    } else if (z2) {
                        AbstractEncoder.this.drain();
                    } else {
                        synchronized (AbstractEncoder.this.mSync) {
                            AbstractEncoder.this.mSync.wait(30L);
                        }
                    }
                    synchronized (AbstractEncoder.this.mSync) {
                        AbstractEncoder.this.mRequestStop = true;
                        AbstractEncoder.this.mIsCapturing = false;
                        AbstractEncoder.this.mSync.notifyAll();
                    }
                }
                AbstractEncoder.this.drain();
            } catch (Exception unused4) {
            }
            AbstractEncoder.this.drain();
            try {
                AbstractEncoder.this.signalEndOfInputStream();
            } catch (Exception unused5) {
            }
            AbstractEncoder.this.release();
            synchronized (AbstractEncoder.this.mSync) {
                AbstractEncoder.this.mRequestStop = true;
                AbstractEncoder.this.mIsCapturing = false;
                AbstractEncoder.this.mSync.notifyAll();
            }
        }
    };
    private long prevOutputPTSUs = -1;
    private long prevInputPTSUs = -1;

    public AbstractEncoder(String str, IRecorder iRecorder, EncoderListener encoderListener) {
        Objects.requireNonNull(encoderListener, "EncodeListener is null");
        Objects.requireNonNull(iRecorder, "IMuxer is null");
        this.MIME_TYPE = str;
        this.mRecorder = iRecorder;
        this.mListener = encoderListener;
        iRecorder.addEncoder(this);
        this.mBufferInfo = new MediaCodec.BufferInfo();
    }

    static /* synthetic */ int access$010(AbstractEncoder abstractEncoder) {
        int i = abstractEncoder.mRequestDrain;
        abstractEncoder.mRequestDrain = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drain() {
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            return;
        }
        try {
            ByteBuffer[] outputBuffers = mediaCodec.getOutputBuffers();
            IRecorder iRecorder = this.mRecorder;
            if (iRecorder == null) {
                return;
            }
            int i = 0;
            while (this.mIsCapturing) {
                int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(this.mBufferInfo, 10000L);
                if (iDequeueOutputBuffer == -1) {
                    if (!this.mIsEOS && (i = i + 1) > 5) {
                        return;
                    }
                } else if (iDequeueOutputBuffer == -3) {
                    outputBuffers = this.mMediaCodec.getOutputBuffers();
                } else if (iDequeueOutputBuffer == -2) {
                    if (this.mRecorderStarted) {
                        throw new RuntimeException("format changed twice");
                    }
                    if (!startRecorder(iRecorder, this.mMediaCodec.getOutputFormat())) {
                        return;
                    }
                } else if (iDequeueOutputBuffer >= 0) {
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
                            byte[] bArr2 = BufferHelper.ANNEXB_START_MARK;
                            int iByteComp = BufferHelper.byteComp(bArr, 0, bArr2, bArr2.length);
                            int iByteComp2 = BufferHelper.byteComp(bArr, iByteComp + 2, bArr2, bArr2.length);
                            if (!startRecorder(iRecorder, createOutputFormat(bArr, this.mBufferInfo.size, iByteComp, iByteComp2, BufferHelper.byteComp(bArr, iByteComp2 + 2, bArr2, bArr2.length)))) {
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
                            iRecorder.writeSampleData(this.mTrackIndex, byteBuffer, this.mBufferInfo);
                        } catch (TimeoutException unused) {
                            iRecorder.stopRecording();
                        } catch (Exception unused2) {
                            iRecorder.stopRecording();
                        }
                        i = 0;
                    }
                    this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    if ((this.mBufferInfo.flags & 4) != 0) {
                        stopRecorder(iRecorder);
                        return;
                    }
                } else {
                    continue;
                }
            }
        } catch (IllegalStateException unused3) {
        }
    }

    protected void callOnError(Exception exc) {
        try {
            this.mListener.onError(exc);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    protected abstract MediaFormat createOutputFormat(byte[] bArr, int i, int i2, int i3, int i4);

    @Override // com.serenegiant.media.Encoder
    public void encode(ByteBuffer byteBuffer) {
    }

    @Override // com.serenegiant.media.Encoder
    public void encode(ByteBuffer byteBuffer, int i, long j) {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                MediaCodec mediaCodec = this.mMediaCodec;
                if (mediaCodec == null) {
                    return;
                }
                ByteBuffer[] inputBuffers = mediaCodec.getInputBuffers();
                while (this.mIsCapturing) {
                    int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(10000L);
                    if (iDequeueInputBuffer >= 0) {
                        ByteBuffer byteBuffer2 = inputBuffers[iDequeueInputBuffer];
                        byteBuffer2.clear();
                        if (byteBuffer != null && i > 0) {
                            byteBuffer.clear();
                            byteBuffer.position(i);
                            byteBuffer.flip();
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
                    if (iDequeueInputBuffer == -1) {
                        frameAvailableSoon();
                    }
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        this.mRecorder = null;
        release();
        super.finalize();
    }

    @Override // com.serenegiant.media.Encoder
    public void frameAvailableSoon() {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                this.mRequestDrain++;
                this.mSync.notifyAll();
            }
        }
    }

    public int getCaptureFormat() {
        return -1;
    }

    @SuppressLint({"NewApi"})
    protected long getInputPTSUs() {
        long jNanoTime = Time.nanoTime() / 1000;
        long j = this.prevInputPTSUs;
        if (jNanoTime <= j) {
            jNanoTime = 9643 + j;
        }
        this.prevInputPTSUs = jNanoTime;
        return jNanoTime;
    }

    protected long getNextOutputPTSUs(long j) {
        long j2 = this.prevOutputPTSUs;
        if (j <= j2) {
            j = 9643 + j2;
        }
        this.prevOutputPTSUs = j;
        return j;
    }

    @Override // com.serenegiant.media.Encoder
    public String getOutputPath() {
        IRecorder iRecorder = this.mRecorder;
        if (iRecorder != null) {
            return iRecorder.getOutputPath();
        }
        return null;
    }

    public IRecorder getRecorder() {
        return this.mRecorder;
    }

    protected abstract boolean internalPrepare() throws Exception;

    @Override // com.serenegiant.media.Encoder
    public boolean isCapturing() {
        boolean z;
        synchronized (this.mSync) {
            z = this.mIsCapturing;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.serenegiant.media.Encoder
    public final void prepare() throws Exception {
        try {
            this.mListener.onStartEncode(this, this instanceof ISurfaceEncoder ? ((ISurfaceEncoder) this).getInputSurface() : null, getCaptureFormat(), internalPrepare());
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        synchronized (this.mSync) {
            new Thread(this.mDrainTask, getClass().getSimpleName()).start();
            try {
                this.mSync.wait(1000L);
            } catch (InterruptedException unused) {
            }
        }
    }

    @Override // com.serenegiant.media.Encoder
    public void release() {
        if (this.mIsCapturing) {
            try {
                this.mListener.onStopEncode(this);
            } catch (Exception unused) {
            }
        }
        this.mIsCapturing = false;
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec != null) {
            try {
                mediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            } catch (Exception unused2) {
            }
        }
        if (this.mRecorderStarted) {
            this.mRecorderStarted = false;
            IRecorder iRecorder = this.mRecorder;
            if (iRecorder != null) {
                try {
                    iRecorder.stop(this);
                } catch (Exception unused3) {
                }
            }
        }
        try {
            this.mListener.onDestroy(this);
        } catch (Exception unused4) {
        }
        this.mBufferInfo = null;
        this.mRecorder = null;
    }

    @Override // com.serenegiant.media.Encoder
    public void signalEndOfInputStream() {
        encode(null, 0, getInputPTSUs());
    }

    @Override // com.serenegiant.media.Encoder
    public void start() {
        synchronized (this.mSync) {
            this.mIsCapturing = true;
            this.mRequestStop = false;
            this.mRequestDrain = 0;
        }
    }

    protected boolean startRecorder(IRecorder iRecorder, MediaFormat mediaFormat) {
        if (iRecorder.getState() != 3) {
            for (int i = 0; i < 10 && iRecorder.getState() != 3; i++) {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused) {
                }
            }
        }
        if (iRecorder.getState() == 3) {
            int iAddTrack = iRecorder.addTrack(this, mediaFormat);
            this.mTrackIndex = iAddTrack;
            if (iAddTrack >= 0) {
                this.mRecorderStarted = true;
                iRecorder.start(this);
            } else {
                iRecorder.removeEncoder(this);
            }
        }
        return iRecorder.isStarted();
    }

    @Override // com.serenegiant.media.Encoder
    public void stop() {
        synchronized (this.mSync) {
            if (this.mRequestStop) {
                return;
            }
            this.mRequestStop = true;
            this.mSync.notifyAll();
        }
    }

    protected void stopRecorder(IRecorder iRecorder) {
        this.mIsCapturing = false;
        this.mRecorderStarted = false;
    }
}
