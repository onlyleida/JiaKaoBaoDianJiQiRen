package com.serenegiant.media;

import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;
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
        public AudioThread() {
            super("AudioThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(-16);
            AudioEncoderBuffered audioEncoderBuffered = AudioEncoderBuffered.this;
            int audioBufferSize = AudioSampler.getAudioBufferSize(audioEncoderBuffered.mChannelCount, audioEncoderBuffered.mSampleRate, 1024, 25);
            AudioEncoderBuffered audioEncoderBuffered2 = AudioEncoderBuffered.this;
            AudioRecord audioRecordCreateAudioRecord = IAudioSampler.createAudioRecord(audioEncoderBuffered2.mAudioSource, audioEncoderBuffered2.mSampleRate, audioEncoderBuffered2.mChannelCount, 2, audioBufferSize);
            if (audioRecordCreateAudioRecord != null) {
                try {
                    if (AudioEncoderBuffered.this.mIsCapturing) {
                        audioRecordCreateAudioRecord.startRecording();
                        loop0: while (true) {
                            int i = 0;
                            while (true) {
                                try {
                                    if (!AudioEncoderBuffered.this.mIsCapturing || AudioEncoderBuffered.this.mRequestStop || AudioEncoderBuffered.this.mIsEOS) {
                                        break loop0;
                                        break loop0;
                                        break loop0;
                                    }
                                    MediaData mediaDataObtain = AudioEncoderBuffered.this.obtain();
                                    ByteBuffer byteBuffer = mediaDataObtain.mBuffer;
                                    byteBuffer.clear();
                                    try {
                                        int i2 = audioRecordCreateAudioRecord.read(byteBuffer, 1024);
                                        if (i2 > 0) {
                                            mediaDataObtain.presentationTimeUs = AudioEncoderBuffered.this.getInputPTSUs();
                                            mediaDataObtain.size = i2;
                                            byteBuffer.position(i2);
                                            byteBuffer.flip();
                                            AudioEncoderBuffered.this.mAudioQueue.offer(mediaDataObtain);
                                            break;
                                        }
                                        if (i2 == 0) {
                                            AudioEncoderBuffered.this.recycle(mediaDataObtain);
                                            break;
                                        }
                                        if (i2 == -1) {
                                            if (i == 0) {
                                                Log.e(AudioEncoderBuffered.TAG, "Read error ERROR");
                                            }
                                        } else if (i2 == -2) {
                                            if (i == 0) {
                                                Log.e(AudioEncoderBuffered.TAG, "Read error ERROR_BAD_VALUE");
                                            }
                                        } else if (i2 == -3) {
                                            if (i == 0) {
                                                Log.e(AudioEncoderBuffered.TAG, "Read error ERROR_INVALID_OPERATION");
                                            }
                                        } else if (i2 == -6) {
                                            Log.e(AudioEncoderBuffered.TAG, "Read error ERROR_DEAD_OBJECT");
                                            AudioEncoderBuffered.this.recycle(mediaDataObtain);
                                            break loop0;
                                        } else if (i2 < 0 && i == 0) {
                                            Log.e(AudioEncoderBuffered.TAG, "Read returned unknown err " + i2);
                                        }
                                        i++;
                                        AudioEncoderBuffered.this.recycle(mediaDataObtain);
                                        if (i > 10) {
                                            break loop0;
                                        }
                                    } catch (Exception unused) {
                                    }
                                } catch (Throwable th) {
                                    audioRecordCreateAudioRecord.stop();
                                    throw th;
                                }
                            }
                        }
                        audioRecordCreateAudioRecord.stop();
                    }
                } catch (Exception unused2) {
                } catch (Throwable th2) {
                    audioRecordCreateAudioRecord.release();
                    throw th2;
                }
                audioRecordCreateAudioRecord.release();
            }
        }
    }

    private final class DequeueThread extends Thread {
        public DequeueThread() {
            super("DequeueThread");
        }

        /* JADX WARN: Code duplicated, block: B:22:0x004a  */
        /* JADX WARN: Code duplicated, block: B:29:0x007a  */
        /* JADX WARN: Code duplicated, block: B:38:0x0088 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
        
            r2 = r8.this$0.mAudioQueue.poll(30, java.util.concurrent.TimeUnit.MILLISECONDS);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
        
            if (r2 == null) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
        
            r3 = r2.size;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
        
            if (r3 <= 0) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        
            r8.this$0.encode(r2.mBuffer, r3, r2.presentationTimeUs);
            r8.this$0.frameAvailableSoon();
            r1 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        
            r8.this$0.recycle(r2);
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r8 = this;
                r0 = 0
                r1 = 0
            L2:
                com.serenegiant.media.AudioEncoderBuffered r2 = com.serenegiant.media.AudioEncoderBuffered.this
                java.lang.Object r2 = r2.mSync
                monitor-enter(r2)
                com.serenegiant.media.AudioEncoderBuffered r3 = com.serenegiant.media.AudioEncoderBuffered.this     // Catch: java.lang.Throwable -> L89
                boolean r3 = r3.mIsCapturing     // Catch: java.lang.Throwable -> L89
                if (r3 == 0) goto L47
                com.serenegiant.media.AudioEncoderBuffered r3 = com.serenegiant.media.AudioEncoderBuffered.this     // Catch: java.lang.Throwable -> L89
                boolean r3 = r3.mRequestStop     // Catch: java.lang.Throwable -> L89
                if (r3 != 0) goto L47
                com.serenegiant.media.AudioEncoderBuffered r3 = com.serenegiant.media.AudioEncoderBuffered.this     // Catch: java.lang.Throwable -> L89
                boolean r3 = r3.mIsEOS     // Catch: java.lang.Throwable -> L89
                if (r3 == 0) goto L1a
                goto L47
            L1a:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
                com.serenegiant.media.AudioEncoderBuffered r2 = com.serenegiant.media.AudioEncoderBuffered.this     // Catch: java.lang.InterruptedException -> L45
                java.util.concurrent.LinkedBlockingQueue<com.serenegiant.media.MediaData> r2 = r2.mAudioQueue     // Catch: java.lang.InterruptedException -> L45
                r3 = 30
                java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.InterruptedException -> L45
                java.lang.Object r2 = r2.poll(r3, r5)     // Catch: java.lang.InterruptedException -> L45
                com.serenegiant.media.MediaData r2 = (com.serenegiant.media.MediaData) r2     // Catch: java.lang.InterruptedException -> L45
                if (r2 == 0) goto L2
                int r3 = r2.size
                if (r3 <= 0) goto L3f
                com.serenegiant.media.AudioEncoderBuffered r4 = com.serenegiant.media.AudioEncoderBuffered.this
                java.nio.ByteBuffer r5 = r2.mBuffer
                long r6 = r2.presentationTimeUs
                r4.encode(r5, r3, r6)
                com.serenegiant.media.AudioEncoderBuffered r3 = com.serenegiant.media.AudioEncoderBuffered.this
                r3.frameAvailableSoon()
                int r1 = r1 + 1
            L3f:
                com.serenegiant.media.AudioEncoderBuffered r3 = com.serenegiant.media.AudioEncoderBuffered.this
                r3.recycle(r2)
                goto L2
            L45:
                goto L48
            L47:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
            L48:
                if (r1 != 0) goto L88
                com.serenegiant.media.AudioEncoderBuffered r1 = com.serenegiant.media.AudioEncoderBuffered.this
                int r1 = r1.mBufferSize
                java.nio.ByteBuffer r1 = java.nio.ByteBuffer.allocateDirect(r1)
                java.nio.ByteOrder r2 = java.nio.ByteOrder.nativeOrder()
                java.nio.ByteBuffer r1 = r1.order(r2)
            L5a:
                com.serenegiant.media.AudioEncoderBuffered r2 = com.serenegiant.media.AudioEncoderBuffered.this
                boolean r2 = r2.mIsCapturing
                if (r2 == 0) goto L88
                r2 = 5
                if (r0 >= r2) goto L88
                r2 = 1024(0x400, float:1.435E-42)
                r1.position(r2)
                r1.flip()
                com.serenegiant.media.AudioEncoderBuffered r3 = com.serenegiant.media.AudioEncoderBuffered.this
                long r4 = r3.getInputPTSUs()
                r3.encode(r1, r2, r4)
                com.serenegiant.media.AudioEncoderBuffered r2 = com.serenegiant.media.AudioEncoderBuffered.this
                r2.frameAvailableSoon()
                monitor-enter(r8)
                r2 = 50
                r8.wait(r2)     // Catch: java.lang.Throwable -> L80 java.lang.InterruptedException -> L82
                goto L82
            L80:
                r0 = move-exception
                goto L86
            L82:
                monitor-exit(r8)     // Catch: java.lang.Throwable -> L80
                int r0 = r0 + 1
                goto L5a
            L86:
                monitor-exit(r8)     // Catch: java.lang.Throwable -> L80
                throw r0
            L88:
                return
            L89:
                r0 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.serenegiant.media.AudioEncoderBuffered.DequeueThread.run():void");
        }
    }

    public AudioEncoderBuffered(IRecorder iRecorder, EncoderListener encoderListener, int i, int i2) {
        super(iRecorder, encoderListener, i, i2);
        this.MAX_POOL_SIZE = 100;
        this.MAX_QUEUE_SIZE = 100;
        this.mAudioThread = null;
        this.mDequeueThread = null;
        this.mBufferSize = 1024;
        this.mPool = new LinkedBlockingQueue<>(100);
        this.mAudioQueue = new LinkedBlockingQueue<>(100);
        this.mBufferNum = 0;
        if (i < 0 || i > 7) {
            throw new IllegalArgumentException("invalid audio source:" + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaData obtain() {
        MediaData mediaData;
        try {
            mediaData = this.mPool.poll(20L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            mediaData = null;
        }
        if (mediaData == null && this.mBufferNum < 100) {
            mediaData = new MediaData(this.mBufferSize);
            this.mBufferNum++;
        }
        if (mediaData != null) {
            mediaData.size = 0;
        }
        return mediaData;
    }

    protected void recycle(MediaData mediaData) {
        this.mPool.offer(mediaData);
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void start() {
        super.start();
        if (this.mAudioThread == null) {
            AudioThread audioThread = new AudioThread();
            this.mAudioThread = audioThread;
            audioThread.start();
            DequeueThread dequeueThread = new DequeueThread();
            this.mDequeueThread = dequeueThread;
            dequeueThread.start();
        }
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void stop() {
        this.mAudioThread = null;
        this.mDequeueThread = null;
        super.stop();
    }
}
