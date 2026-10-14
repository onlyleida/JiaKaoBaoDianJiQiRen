package com.iflytek.cloud.record;

import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class a extends PcmRecorder {
    private int m;
    private boolean n;
    private int o;
    private final short p;
    private PcmRecorder.PcmRecordListener q;
    private String r;

    public a(int i, int i2, int i3, String str) {
        super(i, i2, i3);
        this.m = 0;
        this.n = false;
        this.p = (short) 16;
        this.q = null;
        this.o = i;
        this.r = str;
    }

    private void b() {
        PcmRecorder.PcmRecordListener pcmRecordListener;
        if (this.r != null && new File(this.r).exists() && (pcmRecordListener = this.q) != null) {
            pcmRecordListener.onRecordReleased();
            this.q = null;
        }
        DebugLog.LogD("release record over");
    }

    @Override // com.iflytek.cloud.record.PcmRecorder
    protected void a(short s, int i, int i2) throws SpeechError {
        this.m = Math.min(((((i * 100) / 1000) * s) * 16) / 8, 2560);
        if (this.r == null || !new File(this.r).exists()) {
            throw new SpeechError(ErrorCode.ERROR_AUDIO_RECORD);
        }
    }

    @Override // com.iflytek.cloud.record.PcmRecorder
    protected void finalize() throws Throwable {
        b();
        super.finalize();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder, java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            a((short) 1, this.o, 0);
            PcmRecorder.PcmRecordListener pcmRecordListener = this.q;
            if (pcmRecordListener != null) {
                pcmRecordListener.onRecordStarted(true);
            }
            FileInputStream fileInputStream = new FileInputStream(new File(this.r));
            byte[] bArr = new byte[this.m];
            while (!this.n) {
                int i = fileInputStream.read(bArr);
                if (i < 0) {
                    this.n = true;
                    break;
                }
                PcmRecorder.PcmRecordListener pcmRecordListener2 = this.q;
                if (pcmRecordListener2 != null) {
                    pcmRecordListener2.onRecordBuffer(bArr, 0, i);
                }
                Thread.sleep(5L);
            }
            fileInputStream.close();
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            PcmRecorder.PcmRecordListener pcmRecordListener3 = this.q;
            if (pcmRecordListener3 != null) {
                pcmRecordListener3.onError(new SpeechError(ErrorCode.ERROR_AUDIO_RECORD));
            }
        }
        b();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder
    public void startRecording(PcmRecorder.PcmRecordListener pcmRecordListener) throws SpeechError {
        this.q = pcmRecordListener;
        setPriority(10);
        start();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder
    public void stopRecord(boolean z) {
        this.n = true;
    }
}
