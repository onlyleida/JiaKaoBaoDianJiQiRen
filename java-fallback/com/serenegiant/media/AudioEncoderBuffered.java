package com.serenegiant.media;

import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class AudioEncoderBuffered extends AbstractAudioEncoder {
    private static final String TAG = "AudioEncoderBuffered";
    private final int MAX_POOL_SIZE;
    private final int MAX_QUEUE_SIZE;
    protected final LinkedBlockingQueue<MediaData> mAudioQueue;
    private AudioThread mAudioThread;
    private int mBufferNum;
    protected int mBufferSize;
    private DequeueThread mDequeueThread;
    protected final LinkedBlockingQueue<MediaData> mPool;

    private final class AudioThread extends Thread {
        final /* synthetic */ AudioEncoderBuffered this$0;

        public AudioThread(AudioEncoderBuffered r1) {
            this.this$0 = r1;
            super("AudioThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(-16);
            AudioEncoderBuffered r0 = this.this$0;
            int r1 = AudioSampler.getAudioBufferSize(r0.mChannelCount, r0.mSampleRate, 1024, 25);
            AudioEncoderBuffered r2 = this.this$0;
            AudioRecord r3 = IAudioSampler.createAudioRecord(r2.mAudioSource, r2.mSampleRate, r2.mChannelCount, 2, r1);
            if (r3 == null) goto L70;
        L47:
            th = move-exception;
            r3.release();
            throw th;
        L5:
            if (this.this$0.mIsCapturing == false) goto L50;
            r3.startRecording();     // Catch: Throwable -> L47 Exception -> L53
        L8:
            int r4 = 0;
        L56:
        L44:
            th = move-exception;
            r3.stop();     // Catch: Throwable -> L47 Exception -> L53
            throw th;     // Catch: Throwable -> L47 Exception -> L53
        L10:
            if (this.this$0.mIsCapturing == false) goto L43;
            if (this.this$0.mRequestStop == true) goto L43;
            if (this.this$0.mIsEOS == true) goto L43;
            MediaData r5 = AudioEncoderBuffered.access$000(this.this$0);     // Catch: Throwable -> L44
            ByteBuffer r6 = r5.mBuffer;     // Catch: Throwable -> L44
            r6.clear();     // Catch: Throwable -> L44
            int r7 = r3.read(r6, 1024);     // Catch: Exception -> L52 Throwable -> L44
            if (r7 > 0) goto L19;
            if (r7 == 0) goto L21;
            if (r7 != (-1)) goto L27;
            if (r4 != 0) goto L40;
            Log.e(AudioEncoderBuffered.access$100(), "Read error ERROR");     // Catch: Throwable -> L44
        L40:
            r4 = r4 + 1;     // Catch: Throwable -> L44
            this.this$0.recycle(r5);     // Catch: Throwable -> L44
            if (r4 <= 10) goto L56;
        L27:
            if (r7 != (-2)) goto L31;
            if (r4 != 0) goto L40;
            Log.e(AudioEncoderBuffered.access$100(), "Read error ERROR_BAD_VALUE");     // Catch: Throwable -> L44
            goto L40
        L31:
            if (r7 != (-3)) goto L35;
            if (r4 != 0) goto L40;
            Log.e(AudioEncoderBuffered.access$100(), "Read error ERROR_INVALID_OPERATION");     // Catch: Throwable -> L44
            goto L40
        L35:
            if (r7 == (-6)) goto L36;
            if (r7 >= 0) goto L40;
            if (r4 != 0) goto L40;
            Log.e(AudioEncoderBuffered.access$100(), "Read returned unknown err " + r7);     // Catch: Throwable -> L44
            goto L40
        L36:
            Log.e(AudioEncoderBuffered.access$100(), "Read error ERROR_DEAD_OBJECT");     // Catch: Throwable -> L44
            this.this$0.recycle(r5);     // Catch: Throwable -> L44
            goto L50
        L21:
            this.this$0.recycle(r5);     // Catch: Throwable -> L44
            goto L8
        L19:
            r5.presentationTimeUs = this.this$0.getInputPTSUs();     // Catch: Throwable -> L44
            r5.size = r7;     // Catch: Throwable -> L44
            r6.position(r7);     // Catch: Throwable -> L44
            r6.flip();     // Catch: Throwable -> L44
            this.this$0.mAudioQueue.offer(r5);     // Catch: Throwable -> L44
        L43:
            r3.stop();     // Catch: Throwable -> L47 Exception -> L53
        L50:
            r3.release();
            return;
        }
    }

    private final class DequeueThread extends Thread {
        final /* synthetic */ AudioEncoderBuffered this$0;

        public DequeueThread(AudioEncoderBuffered r1) {
            this.this$0 = r1;
            super("DequeueThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            int r0 = 0;
            int r1 = 0;
        L3:
            Object r2 = this.this$0.mSync;
            monitor-enter(r2);
        L39:
            th = move-exception;
            throw th;
        L6:
            if (this.this$0.mIsCapturing == false) goto L20;
            if (this.this$0.mRequestStop == true) goto L20;
            if (this.this$0.mIsEOS == true) goto L20;
            monitor-exit(r2);     // Catch: Throwable -> L39
            MediaData r3 = this.this$0.mAudioQueue.poll(30, TimeUnit.MILLISECONDS);     // Catch: InterruptedException -> L19
            if (r3 == null) goto L3;
            int r4 = r3.size;
            if (r4 <= 0) goto L18;
            this.this$0.encode(r3.mBuffer, r4, r3.presentationTimeUs);
            this.this$0.frameAvailableSoon();
            r1 = r1 + 1;
        L18:
            this.this$0.recycle(r3);
        L21:
            if (r1 != 0) goto L38;
            ByteBuffer r5 = ByteBuffer.allocateDirect(this.this$0.mBufferSize).order(ByteOrder.nativeOrder());
        L24:
            if (this.this$0.mIsCapturing == false) goto L58;
            if (r0 >= 5) goto L59;
            r5.position(1024);
            r5.flip();
            AudioEncoderBuffered r6 = this.this$0;
            r6.encode(r5, 1024, r6.getInputPTSUs());
            this.this$0.frameAvailableSoon();
            monitor-enter(this);
            wait(50);     // Catch: Throwable -> L32 InterruptedException -> L42
        L32:
            th = move-exception;
            throw th;
        L34:
            monitor-exit(this);     // Catch: Throwable -> L32
            r0 = r0 + 1;     // Catch: Throwable -> L32
            goto L24
        L59:
            return;
        L58:
            return;
        L38:
            return;
        L20:
            monitor-exit(r2);     // Catch: Throwable -> L39
            goto L21
        }
    }

    static {
    }

    public AudioEncoderBuffered(IRecorder r1, EncoderListener r2, int r3, int r4) {
        super(r1, r2, r3, r4);
        this.MAX_POOL_SIZE = 100;
        this.MAX_QUEUE_SIZE = 100;
        this.mAudioThread = null;
        this.mDequeueThread = null;
        this.mBufferSize = 1024;
        this.mPool = new LinkedBlockingQueue(100);
        this.mAudioQueue = new LinkedBlockingQueue(100);
        this.mBufferNum = 0;
        if (r3 < 0) goto L8;
        if (r3 > 7) goto L8;
        return;
    L8:
        throw new IllegalArgumentException("invalid audio source:" + r3);
    }

    static /* synthetic */ MediaData access$000(AudioEncoderBuffered r0) {
        return r0.obtain();
    }

    static /* synthetic */ String access$100() {
        return TAG;
    }

    private MediaData obtain() {
        MediaData r0 = this.mPool.poll(20, TimeUnit.MILLISECONDS);     // Catch: InterruptedException -> L4
    L5:
        if (r0 == null) goto L7;
    L9:
        if (r0 == null) goto L11;
        r0.size = 0;
    L11:
        return r0;
    L7:
        if (this.mBufferNum >= 100) goto L9;
        r0 = new MediaData(this.mBufferSize);
        this.mBufferNum++;
    L4:
        r0 = null;
        goto L5
    }

    protected void recycle(MediaData r2) {
        this.mPool.offer(r2);
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void start() {
        super.start();
        if (this.mAudioThread != null) goto L6;
        AudioThread r0 = new AudioThread(this);
        this.mAudioThread = r0;
        r0.start();
        DequeueThread r1 = new DequeueThread(this);
        this.mDequeueThread = r1;
        r1.start();
        return;
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void stop() {
        this.mAudioThread = null;
        this.mDequeueThread = null;
        super.stop();
    }
}
