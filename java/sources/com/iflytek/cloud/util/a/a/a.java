package com.iflytek.cloud.util.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.AudioDetector;
import com.iflytek.msc.VAD;
import com.mobile.auth.gatewayauth.Constant;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a extends AudioDetector {
    private static final Map<String, Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, Integer> f12444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.iflytek.cloud.b.a f12445e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f12446f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AudioDetector.DetectorResult f12447g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private VAD.VadData f12448h;
    private byte[] i;
    private byte[] j;
    private boolean k;
    private int l;
    private long m;
    private long n;

    static {
        HashMap map = new HashMap();
        c = map;
        HashMap map2 = new HashMap();
        f12444d = map2;
        map.put(SpeechConstant.VAD_BOS, 0);
        map.put(SpeechConstant.VAD_EOS, 1);
        map.put(AudioDetector.SUB_TIMEOUT, 3);
        map.put(AudioDetector.EARLY_START, 4);
        map2.put(SpeechConstant.VAD_BOS, 2000);
        map2.put(SpeechConstant.VAD_EOS, 700);
        map2.put(AudioDetector.SUB_TIMEOUT, Integer.valueOf(Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT));
        map2.put(AudioDetector.EARLY_START, 1);
    }

    public a(Context context, String str) {
        super(context, str);
        this.f12445e = new com.iflytek.cloud.b.a();
        this.f12446f = 0L;
        this.f12447g = new AudioDetector.DetectorResult();
        this.f12448h = new VAD.VadData();
        this.i = new byte[32768];
        this.j = new byte[32784];
        this.k = true;
        this.l = 2;
        this.m = -1L;
        this.n = 0L;
        DebugLog.LogD("AudioDetector constructor enter, context: " + context + ", param: " + str);
        this.f12445e.c(str);
        try {
            this.f12446f = VAD.Initialize(this.f12445e.a(SpeechConstant.SAMPLE_RATE, 16000));
            DebugLog.LogD("VAD Initialize ret: " + this.f12446f);
        } catch (Throwable th) {
            DebugLog.LogE("AudioDetector constructor exception");
            DebugLog.LogE(th);
        }
        this.f12448h.wavData = this.j;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002e  */
    private void a(int i) {
        if (i != 0) {
            switch (i) {
                case 5:
                    this.f12447g.sub = 1;
                    break;
                case 6:
                    this.f12447g.sub = 2;
                    break;
                case 7:
                    this.f12447g.sub = 3;
                    break;
                case 8:
                    this.f12447g.status = 2;
                    break;
                case 9:
                    AudioDetector.DetectorResult detectorResult = this.f12447g;
                    detectorResult.sub = 3;
                    detectorResult.status = 2;
                    break;
                case 10:
                    this.f12447g.status = 3;
                    break;
                case 11:
                    this.f12447g.error = 0;
                    break;
                default:
                    this.f12447g.error = i;
                    break;
            }
        } else {
            this.f12447g.error = 0;
        }
        if (this.k) {
            AudioDetector.DetectorResult detectorResult2 = this.f12447g;
            if (detectorResult2.sub != 0) {
                this.k = false;
                if (detectorResult2.status == 0) {
                    detectorResult2.status = 1;
                }
            }
        }
        if (this.f12447g.status == 0 && a()) {
            this.f12447g.status = 4;
        }
    }

    private void b() {
        AudioDetector.DetectorResult detectorResult = this.f12447g;
        detectorResult.buffer = null;
        detectorResult.end = 0;
        detectorResult.error = 0;
        detectorResult.length = 0;
        detectorResult.offset = 0;
        detectorResult.quality = 0;
        detectorResult.start = 0;
        detectorResult.status = 0;
        detectorResult.sub = 0;
        detectorResult.voice = false;
        detectorResult.volume = 0;
        VAD.VadData vadData = this.f12448h;
        vadData.audioQuality = 0;
        vadData.endByte = 0;
        vadData.endRemainFrameNum = 0;
        vadData.firstOutByte = 0;
        vadData.inSpeech = 0;
        vadData.startByte = 0;
        vadData.startRemainFrameNum = 0;
        vadData.status = 0;
        vadData.volumeLevel = 0;
        vadData.waitPauseOrEnd = 0;
        vadData.waitStart = 0;
        vadData.wavData = this.j;
        vadData.wavDataSize = 0;
    }

    private void c() {
        AudioDetector.DetectorResult detectorResult = this.f12447g;
        VAD.VadData vadData = this.f12448h;
        detectorResult.buffer = vadData.wavData;
        detectorResult.end = vadData.endByte;
        detectorResult.length = vadData.wavDataSize;
        detectorResult.offset = 0;
        detectorResult.quality = vadData.audioQuality;
        detectorResult.start = vadData.startByte;
        detectorResult.voice = 1 == vadData.inSpeech;
        detectorResult.volume = vadData.volumeLevel;
    }

    @Override // com.iflytek.cloud.util.AudioDetector
    public boolean destroy() {
        boolean z;
        DebugLog.LogD("destroy enter");
        synchronized (AudioDetector.b) {
            long j = this.f12446f;
            if (0 != j) {
                try {
                    VAD.Uninitialize(j);
                    DebugLog.LogD("VAD Uninitialize");
                    this.f12446f = 0L;
                    z = true;
                } catch (Throwable th) {
                    DebugLog.LogE("destroy exception");
                    DebugLog.LogE(th);
                    z = false;
                }
            } else {
                z = true;
            }
            throw th;
        }
        AudioDetector.f12441a = null;
        DebugLog.LogD("destroy leave");
        return z;
    }

    @Override // com.iflytek.cloud.util.AudioDetector
    public AudioDetector.DetectorResult detect(byte[] bArr, int i, int i2, boolean z) {
        synchronized (AudioDetector.b) {
            DebugLog.LogI("detect enter, buffer: " + bArr + ", offset: " + i + ", length: " + i2 + ", isLast: " + z);
            try {
                try {
                    b();
                    long j = this.f12446f;
                    if (0 == j) {
                        DebugLog.LogE("detect error: handle is invalid!");
                        this.f12447g.error = 21003;
                    } else if (bArr != null && i2 > 0 && 32768 >= i2 && i >= 0 && bArr.length - i >= i2) {
                        System.arraycopy(bArr, i, this.i, 0, i2);
                        DebugLog.LogI("buffer length: " + i2);
                        int iCalcVolumLevel = VAD.CalcVolumLevel(this.f12446f, this.i, i2, this.f12448h);
                        DebugLog.LogI("VAD CalcVolumLevel ret: " + iCalcVolumLevel);
                        this.f12447g.error = iCalcVolumLevel;
                        if (iCalcVolumLevel == 0) {
                            int iAppendData = VAD.AppendData(this.f12446f, this.i, i2);
                            DebugLog.LogI("VAD AppendData ret: " + iAppendData);
                            if (!this.k) {
                                this.n += (long) i2;
                            }
                            a(iAppendData);
                            if (this.f12447g.error == 0) {
                                int iFetchData = VAD.FetchData(this.f12446f, this.f12448h);
                                DebugLog.LogI("VAD FetchData ret: " + iFetchData);
                                a(iFetchData);
                                AudioDetector.DetectorResult detectorResult = this.f12447g;
                                if (detectorResult.error == 0) {
                                    int i3 = detectorResult.status;
                                    if (2 == i3 || 3 == i3 || z) {
                                        int iEndAudioData = VAD.EndAudioData(this.f12446f);
                                        DebugLog.LogD("VAD EndAudioData ret: " + iEndAudioData);
                                        a(iEndAudioData);
                                        if (this.f12447g.error == 0) {
                                            int iGetLastSpeechPos = VAD.GetLastSpeechPos(this.f12446f, this.f12448h);
                                            DebugLog.LogD("VAD GetLastSpeechPos ret: " + iGetLastSpeechPos);
                                            this.f12447g.error = iGetLastSpeechPos;
                                        }
                                    }
                                    if (this.f12447g.error == 0) {
                                        c();
                                    }
                                }
                            }
                        }
                    } else if (z) {
                        int iEndAudioData2 = VAD.EndAudioData(j);
                        DebugLog.LogD("VAD EndAudioData ret: " + iEndAudioData2);
                        a(iEndAudioData2);
                        AudioDetector.DetectorResult detectorResult2 = this.f12447g;
                        if (detectorResult2.error == 0) {
                            detectorResult2.error = VAD.GetLastSpeechPos(this.f12446f, this.f12448h);
                            DebugLog.LogD("VAD GetLastSpeechPos ret: " + this.f12447g.error);
                            if (this.f12447g.error == 0) {
                                c();
                            }
                        }
                    } else {
                        this.f12447g.error = ErrorCode.ERROR_INVALID_PARAM;
                    }
                } catch (Throwable th) {
                    DebugLog.LogE("detect exception");
                    DebugLog.LogE(th);
                    b();
                    this.f12447g.error = ErrorCode.ERROR_UNKNOWN;
                }
            } catch (UnsatisfiedLinkError e2) {
                DebugLog.LogE("detect exception");
                DebugLog.LogE(e2);
                b();
                this.f12447g.error = ErrorCode.ERROR_UNSATISFIED_LINK;
            }
        }
        DebugLog.LogD("detect leave");
        return this.f12447g;
    }

    @Override // com.iflytek.cloud.util.AudioDetector
    public void reset() {
        DebugLog.LogD("reset enter");
        synchronized (AudioDetector.b) {
            long j = this.f12446f;
            if (0 != j) {
                try {
                    VAD.Reset(j);
                    DebugLog.LogD("VAD Reset");
                    this.k = true;
                    this.n = 0L;
                } catch (Throwable th) {
                    DebugLog.LogE("reset exception");
                    DebugLog.LogE(th);
                }
            }
        }
        DebugLog.LogD("reset leave");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0086 A[Catch: all -> 0x0113, TRY_LEAVE, TryCatch #2 {all -> 0x0113, blocks: (B:4:0x001f, B:6:0x0025, B:8:0x002d, B:10:0x0033, B:12:0x003e, B:11:0x0039, B:13:0x0086, B:16:0x0090, B:19:0x0096, B:21:0x00b0, B:22:0x00dd, B:23:0x00e0), top: B:35:0x001f, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x008e  */
    /* JADX WARN: Code duplicated, block: B:21:0x00b0 A[Catch: all -> 0x0113, TryCatch #2 {all -> 0x0113, blocks: (B:4:0x001f, B:6:0x0025, B:8:0x002d, B:10:0x0033, B:12:0x003e, B:11:0x0039, B:13:0x0086, B:16:0x0090, B:19:0x0096, B:21:0x00b0, B:22:0x00dd, B:23:0x00e0), top: B:35:0x001f, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x00dd A[Catch: all -> 0x0113, TryCatch #2 {all -> 0x0113, blocks: (B:4:0x001f, B:6:0x0025, B:8:0x002d, B:10:0x0033, B:12:0x003e, B:11:0x0039, B:13:0x0086, B:16:0x0090, B:19:0x0096, B:21:0x00b0, B:22:0x00dd, B:23:0x00e0), top: B:35:0x001f, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00e0 A[Catch: all -> 0x0113, TRY_LEAVE, TryCatch #2 {all -> 0x0113, blocks: (B:4:0x001f, B:6:0x0025, B:8:0x002d, B:10:0x0033, B:12:0x003e, B:11:0x0039, B:13:0x0086, B:16:0x0090, B:19:0x0096, B:21:0x00b0, B:22:0x00dd, B:23:0x00e0), top: B:35:0x001f, outer: #1 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x00b0, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x00e0, please report this as an issue */
    @Override // com.iflytek.cloud.util.AudioDetector
    public void setParameter(String str, String str2) {
        long j;
        DebugLog.LogD("setParameter enter, key: " + str + ", value: " + str2);
        synchronized (AudioDetector.b) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    Map<String, Integer> map = c;
                    if (map.containsKey(str)) {
                        if (TextUtils.isEmpty(str2)) {
                            this.f12445e.e(str);
                        } else {
                            this.f12445e.b(str, str2);
                        }
                        int iA = this.f12445e.a(str, f12444d.get(str).intValue());
                        int iIntValue = map.get(str).intValue();
                        DebugLog.LogD("VAD SetParameter key=" + iIntValue + ", value=" + iA + ", ret: " + VAD.SetParam(this.f12446f, iIntValue, iA));
                    } else if (SpeechConstant.KEY_SPEECH_TIMEOUT.equalsIgnoreCase(str)) {
                        try {
                            j = Long.parseLong(str2);
                        } catch (NumberFormatException unused) {
                            j = -1;
                        }
                        DebugLog.LogD("SetParameter speech timeout value:" + j);
                        if (0 < j) {
                            this.m = (((long) (this.f12445e.a(SpeechConstant.SAMPLE_RATE, 16000) * this.l)) * j) / 1000;
                            DebugLog.LogD("SetParameter BytesOfSpeechTimeout: " + this.m);
                        } else {
                            this.m = -1L;
                        }
                    } else {
                        int i = Integer.parseInt(str);
                        int i2 = Integer.parseInt(str2);
                        DebugLog.LogD("VAD SetParameter key=" + i + ", value=" + i2 + ", ret: " + VAD.SetParam(this.f12446f, i, i2));
                    }
                } else if (SpeechConstant.KEY_SPEECH_TIMEOUT.equalsIgnoreCase(str)) {
                    j = Long.parseLong(str2);
                    DebugLog.LogD("SetParameter speech timeout value:" + j);
                    if (0 < j) {
                        this.m = (((long) (this.f12445e.a(SpeechConstant.SAMPLE_RATE, 16000) * this.l)) * j) / 1000;
                        DebugLog.LogD("SetParameter BytesOfSpeechTimeout: " + this.m);
                    } else {
                        this.m = -1L;
                    }
                } else {
                    int i3 = Integer.parseInt(str);
                    int i4 = Integer.parseInt(str2);
                    DebugLog.LogD("VAD SetParameter key=" + i3 + ", value=" + i4 + ", ret: " + VAD.SetParam(this.f12446f, i3, i4));
                }
            } catch (Throwable th) {
                DebugLog.LogE("setParameter exception");
                DebugLog.LogE(th);
            }
        }
        DebugLog.LogD("setParameter leave.");
    }

    private boolean a() {
        long j = this.m;
        return 0 < j && j <= this.n;
    }
}
