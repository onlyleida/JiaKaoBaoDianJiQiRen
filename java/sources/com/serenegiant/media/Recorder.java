package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.Surface;
import androidx.documentfile.a.a;
import com.serenegiant.utils.BuildCheck;
import com.serenegiant.utils.UriHelper;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Recorder implements IRecorder {
    public static final long CHECK_INTERVAL = 45000;
    private static final String TAG = "Recorder";
    protected Encoder mAudioEncoder;
    private volatile boolean mAudioStarted;
    private final IRecorder.RecorderCallback mCallback;
    private volatile int mEncoderCount;
    private EosHandler mEosHandler;
    protected IMuxer mMuxer;
    private volatile boolean mReleased;
    protected long mStartTime;
    private volatile int mStartedCount;
    private int mState;
    protected Encoder mVideoEncoder;
    private volatile boolean mVideoStarted;

    private static final class EosHandler extends Handler {
        private static final int MSG_CHECK_FREESPACE = 5;
        private static final int MSG_SEND_EOS = 8;
        private static final int MSG_SEND_QUIT = 9;
        private final EosThread mThread;

        private static final class EosThread extends Thread {
            private EosHandler mHandler;
            private boolean mIsReady;
            private final Object mSync;
            private final WeakReference<Recorder> mWeakRecorder;

            public EosThread(Recorder recorder) {
                super("EosThread");
                this.mSync = new Object();
                this.mIsReady = false;
                this.mWeakRecorder = new WeakReference<>(recorder);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean check(Recorder recorder) {
                return recorder.check();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final EosHandler getHandler() {
                synchronized (this.mSync) {
                    while (!this.mIsReady) {
                        try {
                            this.mSync.wait(300L);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
                return this.mHandler;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Looper.prepare();
                synchronized (this.mSync) {
                    this.mHandler = new EosHandler(this);
                    this.mIsReady = true;
                    this.mSync.notify();
                }
                Looper.loop();
                synchronized (this.mSync) {
                    this.mIsReady = false;
                    this.mHandler = null;
                }
            }
        }

        public static final EosHandler createHandler(Recorder recorder) {
            EosThread eosThread = new EosThread(recorder);
            eosThread.start();
            return eosThread.getHandler();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Recorder recorder = (Recorder) this.mThread.mWeakRecorder.get();
            if (recorder == null) {
                try {
                    Looper.myLooper().quit();
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            int i = message.what;
            if (i == 5) {
                if (this.mThread.check(recorder)) {
                    recorder.stopRecording();
                    return;
                } else {
                    sendEmptyMessageDelayed(5, Recorder.CHECK_INTERVAL);
                    return;
                }
            }
            if (i == 8) {
                recorder.stopRecording();
            } else if (i != 9) {
                super.handleMessage(message);
            } else {
                try {
                    Looper.myLooper().quit();
                } catch (Exception unused2) {
                }
            }
        }

        public final void setDuration(long j) {
            removeMessages(8);
            if (j > 0) {
                sendEmptyMessageDelayed(8, j);
            }
        }

        public final void startCheckFreeSpace() {
            removeMessages(5);
            sendEmptyMessageDelayed(5, Recorder.CHECK_INTERVAL);
        }

        public final void terminate() {
            removeMessages(8);
            removeMessages(5);
            sendEmptyMessage(9);
        }

        private EosHandler(EosThread eosThread) {
            this.mThread = eosThread;
        }
    }

    public Recorder(IRecorder.RecorderCallback recorderCallback) {
        this.mCallback = recorderCallback;
        synchronized (this) {
            this.mState = 0;
        }
    }

    protected static IMuxer createMuxer(String str) throws IOException {
        return VideoConfig.sUseMediaMuxer ? new MediaMuxerWrapper(str, 0) : new VideoMuxer(str);
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized void addEncoder(Encoder encoder) {
        int i;
        synchronized (this) {
            if (this.mReleased) {
                throw new IllegalStateException("already released");
            }
            i = 1;
            if (this.mState > 1) {
                throw new IllegalStateException("addEncoder already prepared/started");
            }
        }
        if (encoder instanceof IAudioEncoder) {
            if (this.mAudioEncoder != null) {
                throw new IllegalArgumentException("Audio encoder already added.");
            }
            this.mAudioEncoder = encoder;
        }
        if (encoder instanceof IVideoEncoder) {
            if (this.mVideoEncoder != null) {
                throw new IllegalArgumentException("Video encoder already added.");
            }
            this.mVideoEncoder = encoder;
        }
        int i2 = this.mVideoEncoder != null ? 1 : 0;
        if (this.mAudioEncoder == null) {
            i = 0;
        }
        this.mEncoderCount = i2 + i;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized int addTrack(Encoder encoder, MediaFormat mediaFormat) {
        int iAddTrack;
        try {
            if (this.mReleased) {
                throw new IllegalStateException("already released");
            }
            if (this.mState != 3) {
                throw new IllegalStateException("muxer not ready:state=" + this.mState);
            }
            iAddTrack = this.mMuxer.addTrack(mediaFormat);
        } catch (Exception e2) {
            Log.w(TAG, "addTrack:", e2);
            removeEncoder(encoder);
            iAddTrack = -1;
        }
        return iAddTrack;
    }

    protected void callOnError(Exception exc) {
        IRecorder.RecorderCallback recorderCallback;
        if (this.mReleased || (recorderCallback = this.mCallback) == null) {
            return;
        }
        try {
            recorderCallback.onError(exc);
        } catch (Exception unused) {
            Log.e(TAG, "onError:", exc);
        }
    }

    protected void callOnPrepared() {
        IRecorder.RecorderCallback recorderCallback = this.mCallback;
        if (recorderCallback != null) {
            try {
                recorderCallback.onPrepared(this);
            } catch (Exception e2) {
                Log.e(TAG, "onPrepared:", e2);
            }
        }
    }

    protected void callOnStarted() {
        IRecorder.RecorderCallback recorderCallback = this.mCallback;
        if (recorderCallback != null) {
            try {
                recorderCallback.onStarted(this);
            } catch (Exception e2) {
                Log.e(TAG, "onStarted:", e2);
            }
        }
    }

    protected void callOnStopped() {
        IRecorder.RecorderCallback recorderCallback = this.mCallback;
        if (recorderCallback != null) {
            try {
                recorderCallback.onStopped(this);
            } catch (Exception e2) {
                Log.e(TAG, "onStopped:", e2);
            }
        }
    }

    protected abstract boolean check();

    @Override // com.serenegiant.media.IRecorder
    public void frameAvailableSoon() {
        Encoder encoder = this.mVideoEncoder;
        if (encoder != null) {
            encoder.frameAvailableSoon();
        }
    }

    @Override // com.serenegiant.media.IRecorder
    public Encoder getAudioEncoder() {
        return this.mAudioEncoder;
    }

    @Override // com.serenegiant.media.IRecorder
    public Surface getInputSurface() {
        Encoder encoder = this.mVideoEncoder;
        if (encoder instanceof ISurfaceEncoder) {
            return ((ISurfaceEncoder) encoder).getInputSurface();
        }
        return null;
    }

    @Override // com.serenegiant.media.IRecorder
    public IMuxer getMuxer() {
        return this.mMuxer;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized int getState() {
        return this.mState;
    }

    @Override // com.serenegiant.media.IRecorder
    public Encoder getVideoEncoder() {
        return this.mVideoEncoder;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized boolean isReady() {
        int i;
        return !this.mReleased && ((i = this.mState) == 4 || i == 2);
    }

    public boolean isReleased() {
        return this.mReleased;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized boolean isStarted() {
        return !this.mReleased && this.mState == 4;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized boolean isStopped() {
        return this.mState <= 1;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized boolean isStopping() {
        return this.mState == 5;
    }

    @Override // com.serenegiant.media.IRecorder
    public void prepare() {
        synchronized (this) {
            if (this.mReleased) {
                throw new IllegalStateException("already released");
            }
            if (this.mState != 1) {
                throw new IllegalStateException("prepare:state=" + this.mState);
            }
        }
        try {
            Encoder encoder = this.mVideoEncoder;
            if (encoder != null) {
                encoder.prepare();
            }
            Encoder encoder2 = this.mAudioEncoder;
            if (encoder2 != null) {
                encoder2.prepare();
            }
            synchronized (this) {
                this.mState = 2;
            }
            callOnPrepared();
        } catch (Exception e2) {
            callOnError(e2);
        }
    }

    @Override // com.serenegiant.media.IRecorder
    public void release() {
        if (!this.mReleased) {
            this.mReleased = true;
            Encoder encoder = this.mAudioEncoder;
            if (encoder != null) {
                encoder.release();
            }
            Encoder encoder2 = this.mVideoEncoder;
            if (encoder2 != null) {
                encoder2.release();
            }
            IMuxer iMuxer = this.mMuxer;
            if (iMuxer != null) {
                iMuxer.release();
            }
        }
        this.mAudioEncoder = null;
        this.mVideoEncoder = null;
        this.mMuxer = null;
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized void removeEncoder(Encoder encoder) {
        if (encoder instanceof IVideoEncoder) {
            this.mVideoEncoder = null;
            this.mVideoStarted = false;
        }
        if (encoder instanceof AudioEncoder) {
            this.mAudioEncoder = null;
            this.mAudioStarted = false;
        }
        this.mEncoderCount = (this.mVideoEncoder != null ? 1 : 0) + (this.mAudioEncoder != null ? 1 : 0);
    }

    @Override // com.serenegiant.media.IRecorder
    public void setMuxer(IMuxer iMuxer) {
        if (this.mReleased) {
            return;
        }
        this.mMuxer = iMuxer;
        this.mStartedCount = 0;
        this.mEncoderCount = 0;
        synchronized (this) {
            this.mState = 1;
        }
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized boolean start(Encoder encoder) {
        if (this.mReleased) {
            throw new IllegalStateException("already released");
        }
        if (this.mState != 3) {
            throw new IllegalStateException("muxer has not prepared:state=");
        }
        if (encoder.equals(this.mVideoEncoder)) {
            this.mVideoStarted = true;
        } else if (encoder.equals(this.mAudioEncoder)) {
            this.mAudioStarted = true;
        }
        this.mStartedCount++;
        while (this.mState == 3 && this.mEncoderCount > 0) {
            if ((this.mVideoEncoder == null || this.mVideoStarted) && (this.mAudioEncoder == null || this.mAudioStarted)) {
                this.mMuxer.start();
                this.mState = 4;
                notifyAll();
                callOnStarted();
                EosHandler eosHandler = this.mEosHandler;
                if (eosHandler == null) {
                    break;
                }
                eosHandler.setDuration(VideoConfig.maxDuration);
                break;
            }
            try {
                wait(100L);
            } catch (InterruptedException unused) {
            }
        }
        return this.mState == 4;
    }

    @Override // com.serenegiant.media.IRecorder
    public void startRecording() throws IllegalStateException {
        synchronized (this) {
            if (this.mReleased) {
                throw new IllegalStateException("already released");
            }
            if (this.mState != 2) {
                throw new IllegalStateException("start:not prepared");
            }
            this.mState = 3;
        }
        this.mStartTime = System.currentTimeMillis();
        Encoder encoder = this.mVideoEncoder;
        if (encoder != null) {
            encoder.start();
        }
        Encoder encoder2 = this.mAudioEncoder;
        if (encoder2 != null) {
            encoder2.start();
        }
        if (this.mEosHandler == null) {
            this.mEosHandler = EosHandler.createHandler(this);
        }
        this.mEosHandler.startCheckFreeSpace();
    }

    @Override // com.serenegiant.media.IRecorder
    public synchronized void stop(Encoder encoder) {
        if (encoder.equals(this.mVideoEncoder)) {
            if (this.mVideoStarted) {
                this.mVideoStarted = false;
                this.mStartedCount--;
            }
        } else if (encoder.equals(this.mAudioEncoder) && this.mAudioStarted) {
            this.mAudioStarted = false;
            this.mStartedCount--;
        }
        if (this.mEncoderCount > 0 && this.mStartedCount <= 0) {
            if (this.mState == 5) {
                this.mMuxer.stop();
            }
            this.mState = 1;
            this.mVideoEncoder = null;
            this.mAudioEncoder = null;
        }
    }

    @Override // com.serenegiant.media.IRecorder
    public void stopRecording() {
        EosHandler eosHandler = this.mEosHandler;
        if (eosHandler != null) {
            eosHandler.terminate();
            this.mEosHandler = null;
        }
        synchronized (this) {
            int i = this.mState;
            if (i != 0 && i != 1 && i != 5) {
                this.mState = 5;
                Encoder encoder = this.mAudioEncoder;
                if (encoder != null) {
                    encoder.stop();
                }
                Encoder encoder2 = this.mVideoEncoder;
                if (encoder2 != null) {
                    encoder2.stop();
                }
                callOnStopped();
            }
        }
    }

    @Override // com.serenegiant.media.IRecorder
    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        try {
            if (this.mReleased || this.mStartedCount <= 0) {
                return;
            }
            this.mMuxer.writeSampleData(i, byteBuffer, bufferInfo);
        } catch (Exception e2) {
            callOnError(e2);
        }
    }

    @SuppressLint({"NewApi"})
    protected static IMuxer createMuxer(int i) throws IOException {
        if (VideoConfig.sUseMediaMuxer) {
            if (BuildCheck.isOreo()) {
                return new MediaMuxerWrapper(ParcelFileDescriptor.fromFd(i).getFileDescriptor(), 0);
            }
            throw new RuntimeException("createMuxer from fd does not support now");
        }
        return new VideoMuxer(i);
    }

    @SuppressLint({"NewApi"})
    protected static IMuxer createMuxer(Context context, a aVar) throws IOException {
        MediaMuxerWrapper mediaMuxerWrapper;
        if (!VideoConfig.sUseMediaMuxer) {
            mediaMuxerWrapper = null;
        } else if (BuildCheck.isOreo()) {
            mediaMuxerWrapper = new MediaMuxerWrapper(context.getContentResolver().openFileDescriptor(aVar.g(), "rw").getFileDescriptor(), 0);
        } else {
            String path = UriHelper.getPath(context, aVar.g());
            if (new File(UriHelper.getPath(context, aVar.g())).canWrite()) {
                mediaMuxerWrapper = new MediaMuxerWrapper(path, 0);
            } else {
                Log.w(TAG, "cant't write to the file, try to use VideoMuxer instead");
                mediaMuxerWrapper = null;
            }
        }
        return mediaMuxerWrapper == null ? new VideoMuxer(context.getContentResolver().openFileDescriptor(aVar.g(), "rw").getFd()) : mediaMuxerWrapper;
    }
}
