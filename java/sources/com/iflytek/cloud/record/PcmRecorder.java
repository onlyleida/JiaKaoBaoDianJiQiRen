package com.iflytek.cloud.record;

import android.media.AudioRecord;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class PcmRecorder extends Thread {
    public static final int RATE16K = 16000;
    public static final int READ_INTERVAL40MS = 40;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final short f12385a;
    private byte[] b;
    private AudioRecord c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PcmRecordListener f12386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PcmRecordListener f12387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f12388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f12389g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f12390h;
    private int i;
    private int j;
    private int k;
    private int l;

    public interface PcmRecordListener {
        void onError(SpeechError speechError);

        void onRecordBuffer(byte[] bArr, int i, int i2);

        void onRecordReleased();

        void onRecordStarted(boolean z);
    }

    public PcmRecorder(int i, int i2) {
        this(i, i2, 1);
    }

    private void b() {
        synchronized (this) {
            try {
                if (this.c != null) {
                    DebugLog.LogD("release record begin");
                    this.c.release();
                    this.c = null;
                    PcmRecordListener pcmRecordListener = this.f12387e;
                    if (pcmRecordListener != null) {
                        pcmRecordListener.onRecordReleased();
                        this.f12387e = null;
                    }
                    DebugLog.LogD("release record over");
                }
            } catch (Exception e2) {
                DebugLog.LogE(e2.toString());
            }
        }
    }

    protected void a(short s, int i, int i2) throws SpeechError {
        if (this.c != null) {
            DebugLog.LogD("[initRecord] recoder release first");
            b();
        }
        int i3 = (i2 * i) / 1000;
        int i4 = (((i3 * 4) * 16) * s) / 8;
        int i5 = s == 1 ? 2 : 3;
        int minBufferSize = AudioRecord.getMinBufferSize(i, i5, 2);
        if (i4 < minBufferSize) {
            i4 = minBufferSize;
        }
        this.c = new AudioRecord(this.l, i, i5, 2, i4);
        this.b = new byte[((s * i3) * 16) / 8];
        DebugLog.LogD("\nSampleRate:" + i + "\nChannel:" + i5 + "\nFormat:2\nFramePeriod:" + i3 + "\nBufferSize:" + i4 + "\nMinBufferSize:" + minBufferSize + "\nActualBufferSize:" + this.b.length + "\n");
        if (this.c.getState() == 1) {
            return;
        }
        DebugLog.LogD("create AudioRecord error");
        throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
    }

    protected void finalize() throws Throwable {
        DebugLog.LogD("[finalize] release recoder");
        b();
        super.finalize();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            boolean z = true;
            if (!this.f12388f) {
                try {
                    a((short) 1, this.i, this.j);
                } catch (Exception unused) {
                    Thread.sleep(40L);
                    throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
                }
            }
            int i = 0;
            while (!this.f12388f) {
                try {
                    this.c.startRecording();
                    if (this.c.getRecordingState() == 3) {
                        break;
                    }
                    DebugLog.LogE("recorder state is not recoding");
                    throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
                } catch (Exception unused2) {
                    i++;
                    if (i >= 10) {
                        DebugLog.LogE("recoder start failed");
                        throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
                    }
                    Thread.sleep(40L);
                }
            }
            PcmRecordListener pcmRecordListener = this.f12386d;
            if (pcmRecordListener != null) {
                pcmRecordListener.onRecordStarted(true);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (!this.f12388f) {
                int iA = a();
                if (z) {
                    this.f12389g += (double) iA;
                    double d2 = this.f12390h;
                    byte[] bArr = this.b;
                    this.f12390h = d2 + a(bArr, bArr.length);
                    if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                        if (this.f12389g == 0.0d || this.f12390h == 0.0d) {
                            DebugLog.LogE("cannot get record permission, get invalid audio data.");
                            throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
                        }
                        z = false;
                    }
                }
                if (this.b.length > iA) {
                    DebugLog.LogI("current record read size is less than buffer size: " + iA);
                    Thread.sleep((long) this.k);
                }
            }
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            PcmRecordListener pcmRecordListener2 = this.f12386d;
            if (pcmRecordListener2 != null) {
                pcmRecordListener2.onError(new SpeechError(ErrorCode.ERROR_AUDIO_RECORD));
            }
        }
        b();
    }

    public void startRecording(PcmRecordListener pcmRecordListener) throws SpeechError {
        this.f12386d = pcmRecordListener;
        setPriority(10);
        start();
    }

    public void stopRecord(boolean z) {
        this.f12388f = true;
        if (this.f12387e == null) {
            this.f12387e = this.f12386d;
        }
        this.f12386d = null;
        if (z) {
            synchronized (this) {
                try {
                    DebugLog.LogD("stopRecord...release");
                    AudioRecord audioRecord = this.c;
                    if (audioRecord != null) {
                        if (3 == audioRecord.getRecordingState() && 1 == this.c.getState()) {
                            DebugLog.LogD("stopRecord releaseRecording ing...");
                            this.c.release();
                            DebugLog.LogD("stopRecord releaseRecording end...");
                            this.c = null;
                        }
                        PcmRecordListener pcmRecordListener = this.f12387e;
                        if (pcmRecordListener != null) {
                            pcmRecordListener.onRecordReleased();
                            this.f12387e = null;
                        }
                    }
                } catch (Exception e2) {
                    DebugLog.LogE(e2.toString());
                }
            }
        }
        DebugLog.LogD("stop record");
    }

    public PcmRecorder(int i, int i2, int i3) {
        this.f12385a = (short) 16;
        this.b = null;
        this.c = null;
        this.f12386d = null;
        this.f12387e = null;
        this.f12388f = false;
        this.f12389g = 0.0d;
        this.f12390h = 0.0d;
        this.i = 16000;
        this.j = 40;
        this.k = 40;
        this.l = i3;
        this.i = i;
        this.j = i2;
        if (i2 < 40 || i2 > 100) {
            this.j = 40;
        }
        this.k = 10;
    }

    private int a() throws SpeechError {
        PcmRecordListener pcmRecordListener;
        AudioRecord audioRecord = this.c;
        if (audioRecord == null || this.f12386d == null) {
            return 0;
        }
        byte[] bArr = this.b;
        int i = audioRecord.read(bArr, 0, bArr.length);
        if (i > 0 && (pcmRecordListener = this.f12386d) != null) {
            pcmRecordListener.onRecordBuffer(this.b, 0, i);
        } else if (i < 0) {
            DebugLog.LogE("Record read data error: " + i);
            throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
        }
        return i;
    }

    private double a(byte[] bArr, int i) {
        double dPow = 0.0d;
        if (bArr == null || i <= 0) {
            return 0.0d;
        }
        double d2 = 0.0d;
        for (byte b : bArr) {
            d2 += (double) b;
        }
        double length = d2 / ((double) bArr.length);
        for (byte b2 : bArr) {
            dPow += Math.pow(((double) b2) - length, 2.0d);
        }
        return Math.sqrt(dPow / ((double) (bArr.length - 1)));
    }
}
