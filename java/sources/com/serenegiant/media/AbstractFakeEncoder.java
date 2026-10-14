package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.serenegiant.utils.BufferHelper;
import com.serenegiant.utils.BuildCheck;
import com.serenegiant.utils.Time;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(17)
public abstract class AbstractFakeEncoder implements Encoder {

    @SuppressLint({"InlinedApi"})
    public static final int BUFFER_FLAG_KEY_FRAME;
    private static final int DEFAULT_FRAME_SZ = 1024;
    private static final int DEFAULT_MAX_POOL_SZ = 8;
    private static final int DEFAULT_MAX_QUEUE_SZ = 6;
    private static final long MAX_WAIT_FRAME_MS = 100;
    private static final String TAG = "AbstractFakeEncoder";
    private final int FRAME_SZ;
    private final int MAX_POOL_SZ;
    private final String MIME_TYPE;
    private int cnt;
    private final MediaCodec.BufferInfo mBufferInfo;
    private final Runnable mDrainTask;
    private Thread mDrainThread;
    private final LinkedBlockingQueue<MediaData> mFrameQueue;
    private volatile boolean mIsCapturing;
    private boolean mIsEOS;
    private final EncoderListener mListener;
    private final List<MediaData> mPool;
    private IRecorder mRecorder;
    private volatile boolean mRecorderStarted;
    private volatile boolean mRequestStop;
    private final Object mSync;
    private int mTrackIndex;
    private volatile boolean mWaitingKeyFrame;
    private long prevInputPTSUs;
    private long prevOutputPTSUs;

    static {
        BuildCheck.isLollipop();
        BUFFER_FLAG_KEY_FRAME = 1;
    }

    public AbstractFakeEncoder(String str, IRecorder iRecorder, EncoderListener encoderListener) {
        this(str, iRecorder, encoderListener, 1024, 8, 6);
    }

    private void internalRelease() {
        this.mIsEOS = true;
        if (this.mIsCapturing) {
            this.mIsCapturing = false;
            try {
                this.mListener.onStopEncode(this);
            } catch (Exception e2) {
                Log.e(TAG, "failed onStopped", e2);
            }
        }
        if (this.mRecorderStarted) {
            this.mRecorderStarted = false;
            IRecorder iRecorder = this.mRecorder;
            if (iRecorder != null) {
                try {
                    iRecorder.stop(this);
                } catch (Exception e3) {
                    Log.e(TAG, "failed stopping muxer", e3);
                }
            }
        }
        try {
            this.mListener.onDestroy(this);
        } catch (Exception e4) {
            Log.e(TAG, "destroy:", e4);
        }
        this.mRecorder = null;
        clearFrames();
    }

    protected void callOnError(Exception exc) {
        try {
            this.mListener.onError(exc);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    protected void callOnStartEncode(Surface surface, int i, boolean z) {
        try {
            this.mListener.onStartEncode(this, surface, i, z);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    protected void clearFrames() {
        synchronized (this.mPool) {
            this.mPool.clear();
        }
        this.mFrameQueue.clear();
        this.cnt = 0;
    }

    protected abstract MediaFormat createOutputFormat(String str, byte[] bArr, int i, int i2, int i3, int i4);

    @Override // com.serenegiant.media.Encoder
    public void encode(ByteBuffer byteBuffer) {
        throw new UnsupportedOperationException("can not call encode");
    }

    protected void finalize() throws Throwable {
        release();
        super.finalize();
    }

    @Override // com.serenegiant.media.Encoder
    public void frameAvailableSoon() {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                this.mSync.notifyAll();
            }
        }
    }

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

    protected void handleFrame(MediaData mediaData) {
        IRecorder iRecorder = this.mRecorder;
        if (iRecorder == null) {
            Log.w(TAG, "muxer is unexpectedly null");
            return;
        }
        this.mBufferInfo.set(0, mediaData.size, mediaData.presentationTimeUs, mediaData.flags);
        int i = this.mBufferInfo.flags;
        int i2 = BUFFER_FLAG_KEY_FRAME;
        boolean z = (i & i2) == i2;
        if (!this.mRecorderStarted && (z || (this.mBufferInfo.flags & 2) != 0)) {
            byte[] bArr = new byte[this.mBufferInfo.size];
            ByteBuffer byteBufferDuplicate = mediaData.mBuffer.duplicate();
            byteBufferDuplicate.clear();
            byteBufferDuplicate.get(bArr, 0, this.mBufferInfo.size);
            int iFindAnnexB = BufferHelper.findAnnexB(bArr, 0);
            int iFindAnnexB2 = BufferHelper.findAnnexB(bArr, iFindAnnexB + 2);
            try {
                if (!startRecorder(iRecorder, createOutputFormat(this.MIME_TYPE, bArr, this.mBufferInfo.size, iFindAnnexB, iFindAnnexB2, BufferHelper.findAnnexB(bArr, iFindAnnexB2 + 2)))) {
                    Log.w(TAG, "handleFrame:failed to start recorder");
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
        if ((bufferInfo.flags & 2) != 0) {
            bufferInfo.size = 0;
        }
        if (this.mRecorderStarted && this.mBufferInfo.size != 0 && (z || !this.mWaitingKeyFrame)) {
            this.mWaitingKeyFrame = false;
            try {
                MediaCodec.BufferInfo bufferInfo2 = this.mBufferInfo;
                bufferInfo2.presentationTimeUs = getNextOutputPTSUs(bufferInfo2.presentationTimeUs);
                iRecorder.writeSampleData(this.mTrackIndex, mediaData.mBuffer, this.mBufferInfo);
            } catch (TimeoutException unused2) {
                iRecorder.stopRecording();
            } catch (Exception unused3) {
                iRecorder.stopRecording();
            }
        }
        if ((this.mBufferInfo.flags & 4) != 0) {
            stopRecorder(iRecorder);
        }
    }

    protected void initPool() {
        this.mFrameQueue.clear();
        synchronized (this.mPool) {
            this.mPool.clear();
            for (int i = 0; i < this.MAX_POOL_SZ; i++) {
                this.mPool.add(new MediaData(this.FRAME_SZ));
            }
        }
    }

    @Override // com.serenegiant.media.Encoder
    public boolean isCapturing() {
        return this.mIsCapturing;
    }

    public boolean isRecorderStarted() {
        return this.mRecorderStarted;
    }

    protected MediaData obtain(int i) {
        MediaData mediaData;
        synchronized (this.mPool) {
            if (this.mPool.isEmpty()) {
                this.cnt++;
                mediaData = new MediaData(this.FRAME_SZ);
            } else {
                List<MediaData> list = this.mPool;
                MediaData mediaDataRemove = list.remove(list.size() - 1);
                mediaDataRemove.resize(i);
                mediaData = mediaDataRemove;
            }
        }
        return mediaData;
    }

    protected boolean offer(MediaData mediaData) {
        boolean zOffer = this.mFrameQueue.offer(mediaData);
        if (zOffer) {
            return zOffer;
        }
        MediaData mediaDataPoll = this.mFrameQueue.poll();
        boolean zOffer2 = this.mFrameQueue.offer(mediaData);
        if (mediaDataPoll != null) {
            recycle(mediaDataPoll);
        }
        return zOffer2;
    }

    @Override // com.serenegiant.media.Encoder
    public void prepare() throws Exception {
        this.mTrackIndex = -1;
        this.mRecorderStarted = false;
        this.mWaitingKeyFrame = true;
        this.mIsCapturing = true;
        this.mIsEOS = false;
        this.mRequestStop = false;
        callOnStartEncode(null, -1, false);
    }

    public boolean queueFrame(ByteBuffer byteBuffer, int i, int i2, long j, int i3) throws IllegalStateException {
        if (!this.mIsCapturing) {
            throw new IllegalStateException();
        }
        if (this.mRequestStop) {
            return false;
        }
        MediaData mediaDataObtain = obtain(i2);
        mediaDataObtain.set(byteBuffer, i, i2, j, i3);
        return offer(mediaDataObtain);
    }

    protected void recycle(MediaData mediaData) {
        synchronized (this.mPool) {
            if (this.mPool.size() < this.MAX_POOL_SZ) {
                this.mPool.add(mediaData);
            } else {
                this.cnt--;
            }
        }
    }

    @Override // com.serenegiant.media.Encoder
    public synchronized void release() {
        try {
            Thread thread = this.mDrainThread;
            if (thread != null) {
                thread.interrupt();
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        this.mDrainThread = null;
        if (this.mRecorder != null) {
            internalRelease();
        }
    }

    @Override // com.serenegiant.media.Encoder
    public void signalEndOfInputStream() {
        MediaData mediaDataObtain = obtain(0);
        mediaDataObtain.set(null, 0, 0, getInputPTSUs(), 4);
        offer(mediaDataObtain);
    }

    @Override // com.serenegiant.media.Encoder
    public void start() {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                initPool();
                Thread thread = new Thread(this.mDrainTask, getClass().getSimpleName());
                this.mDrainThread = thread;
                thread.start();
                try {
                    this.mSync.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    protected boolean startRecorder(IRecorder iRecorder, MediaFormat mediaFormat) {
        int iAddTrack = iRecorder.addTrack(this, mediaFormat);
        this.mTrackIndex = iAddTrack;
        if (iAddTrack >= 0) {
            this.mRecorderStarted = true;
            if (!iRecorder.start(this)) {
                Log.e(TAG, "failed to start muxer mTrackIndex=" + this.mTrackIndex);
            }
        } else {
            Log.e(TAG, "failed to addTrack: mTrackIndex=" + this.mTrackIndex);
            iRecorder.removeEncoder(this);
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
            signalEndOfInputStream();
            this.mSync.notifyAll();
        }
    }

    protected void stopRecorder(IRecorder iRecorder) {
        if (this.mRecorder != null) {
            internalRelease();
        }
    }

    protected MediaData waitFrame(long j) {
        try {
            return this.mFrameQueue.poll(j, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public AbstractFakeEncoder(String str, IRecorder iRecorder, EncoderListener encoderListener, int i) {
        this(str, iRecorder, encoderListener, i, 8, 6);
    }

    @Override // com.serenegiant.media.Encoder
    public void encode(ByteBuffer byteBuffer, int i, long j) {
        throw new UnsupportedOperationException("can not call encode");
    }

    public AbstractFakeEncoder(String str, IRecorder iRecorder, EncoderListener encoderListener, int i, int i2, int i3) {
        this.mSync = new Object();
        this.mPool = new ArrayList();
        this.mBufferInfo = new MediaCodec.BufferInfo();
        this.cnt = 0;
        this.mDrainTask = new Runnable() { // from class: com.serenegiant.media.AbstractFakeEncoder.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AbstractFakeEncoder.this.mSync) {
                    AbstractFakeEncoder.this.mRequestStop = false;
                    AbstractFakeEncoder.this.mSync.notify();
                }
                while (AbstractFakeEncoder.this.mIsCapturing) {
                    MediaData mediaDataWaitFrame = AbstractFakeEncoder.this.waitFrame(AbstractFakeEncoder.MAX_WAIT_FRAME_MS);
                    if (mediaDataWaitFrame != null) {
                        try {
                            if (AbstractFakeEncoder.this.mIsCapturing) {
                                AbstractFakeEncoder.this.handleFrame(mediaDataWaitFrame);
                            }
                            AbstractFakeEncoder.this.recycle(mediaDataWaitFrame);
                        } catch (Throwable th) {
                            AbstractFakeEncoder.this.recycle(mediaDataWaitFrame);
                            throw th;
                        }
                    }
                }
                synchronized (AbstractFakeEncoder.this.mSync) {
                    AbstractFakeEncoder.this.mRequestStop = true;
                    AbstractFakeEncoder.this.mIsCapturing = false;
                }
                AbstractFakeEncoder.this.mDrainThread = null;
            }
        };
        this.prevInputPTSUs = -1L;
        this.prevOutputPTSUs = -1L;
        this.MIME_TYPE = str;
        this.FRAME_SZ = i;
        this.MAX_POOL_SZ = i2;
        this.mRecorder = iRecorder;
        this.mListener = encoderListener;
        this.mFrameQueue = new LinkedBlockingQueue<>(i3);
        iRecorder.addEncoder(this);
    }
}
