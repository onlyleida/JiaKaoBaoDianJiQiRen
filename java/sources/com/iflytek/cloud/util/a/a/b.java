package com.iflytek.cloud.util.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.msc.util.d;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.AudioDetector;
import com.iflytek.msc.MetaVAD;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class b extends AudioDetector {
    private static final Map<String, String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, String> f12449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.iflytek.cloud.b.a f12450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AudioDetector.DetectorResult f12451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MetaVAD.Instance f12452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f12453h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private long n;
    private long o;

    static {
        HashMap map = new HashMap();
        c = map;
        HashMap map2 = new HashMap();
        f12449d = map2;
        map.put(SpeechConstant.VAD_BOS, "vad_starttimeout");
        map.put(SpeechConstant.VAD_EOS, "vad_endtimeout");
        map.put(AudioDetector.THRESHOLD, "vad_threshold");
        map2.put(SpeechConstant.VAD_BOS, String.valueOf(2000));
        map2.put(SpeechConstant.VAD_EOS, String.valueOf(700));
        map2.put(AudioDetector.THRESHOLD, String.valueOf(0.6f));
    }

    public b(Context context, String str) {
        super(context, str);
        this.f12450e = new com.iflytek.cloud.b.a();
        this.f12451f = new AudioDetector.DetectorResult();
        this.f12452g = new MetaVAD.Instance();
        this.f12453h = "gb2312";
        this.i = false;
        this.j = true;
        this.k = 0;
        this.l = 0;
        this.m = 2;
        this.n = -1L;
        this.o = 0L;
        DebugLog.LogD("Meta VAD AudioDetector constructor enter, context: " + context + ", param: " + str);
        this.f12450e.c(str);
        try {
            this.f12453h = this.f12450e.a(SpeechConstant.TEXT_ENCODING, this.f12453h);
            String strA = this.f12450e.a("extra");
            byte[] bArrA = strA != null ? d.a(strA, this.f12453h) : null;
            DebugLog.LogD("MetaVAD.VADInitialize begin.");
            int iVADInitialize = MetaVAD.VADInitialize(bArrA);
            if (iVADInitialize == 0) {
                this.f12452g.rate = this.f12450e.a(SpeechConstant.SAMPLE_RATE, 16000);
                String strA2 = this.f12450e.a(AudioDetector.RES_PATH);
                byte[] bArrA2 = strA2 != null ? d.a(strA2, this.f12453h) : null;
                DebugLog.LogD("MetaVAD.VADLoadResource begin.");
                iVADInitialize = MetaVAD.VADLoadResource(this.f12452g.rate, bArrA2);
                if (iVADInitialize == 0) {
                    DebugLog.LogD("MetaVAD.VADCreateSession begin.");
                    iVADInitialize = MetaVAD.VADCreateSession(this.f12452g);
                }
            }
            if (iVADInitialize != 0) {
                DebugLog.LogE("MetaVAD Native error " + iVADInitialize);
            }
        } catch (Throwable th) {
            DebugLog.LogE("Meta VAD AudioDetector constructor exception:");
            DebugLog.LogE(th);
        }
        DebugLog.LogD("Meta VAD AudioDetector constructor leave");
    }

    private void a(int i) {
        switch (i) {
            case 0:
            case 6:
                this.f12451f.error = 0;
                this.f12452g.seg = 0;
                break;
            case 1:
            case 2:
                this.f12451f.sub = 1;
                break;
            case 3:
                this.f12451f.sub = 2;
                break;
            case 4:
                this.f12451f.status = this.i ? 2 : 3;
                break;
            case 5:
                this.f12451f.sub = 3;
                break;
            default:
                this.f12451f.error = i;
                break;
        }
        if (!this.i) {
            AudioDetector.DetectorResult detectorResult = this.f12451f;
            if (detectorResult.sub != 0) {
                this.i = true;
                if (detectorResult.status == 0) {
                    detectorResult.status = 1;
                }
            }
        }
        if (this.f12451f.status == 0 && a()) {
            this.f12451f.status = 4;
        }
    }

    private void b() {
        AudioDetector.DetectorResult detectorResult = this.f12451f;
        detectorResult.buffer = null;
        detectorResult.end = 0;
        detectorResult.error = 0;
        detectorResult.length = 0;
        detectorResult.offset = 0;
        detectorResult.quality = 0;
        detectorResult.start = 0;
        detectorResult.status = 0;
        detectorResult.sub = 0;
        detectorResult.subs.clear();
        AudioDetector.DetectorResult detectorResult2 = this.f12451f;
        detectorResult2.voice = false;
        detectorResult2.volume = 0;
        detectorResult2.confidence = 1.0f;
        MetaVAD.Instance instance = this.f12452g;
        if (instance != null) {
            instance.a();
        }
        this.k = 0;
    }

    private void c() {
        MetaVAD.Instance instance = this.f12452g;
        if (instance.seg != 0) {
            Integer numPut = this.f12451f.subs.put(Integer.valueOf(instance.begin), Integer.valueOf(this.f12452g.end));
            if (numPut != null) {
                DebugLog.LogE("update result error: repeat sub begin: " + numPut);
                int i = this.k + 1;
                this.k = i;
                if (10 <= i) {
                    this.f12451f.error = 10100;
                    DebugLog.LogE("update result error: repeat sub reach max count.");
                }
            }
            AudioDetector.DetectorResult detectorResult = this.f12451f;
            detectorResult.sub = 3;
            MetaVAD.Instance instance2 = this.f12452g;
            int i2 = instance2.seg;
            if (1 == i2 || (this.j && 3 == i2)) {
                int i3 = instance2.begin;
                detectorResult.start = i3;
                this.l = i3;
            }
            if (3 == i2) {
                detectorResult.end = instance2.end;
                detectorResult.start = this.l;
                detectorResult.confidence = MetaVAD.VADGetSentConfidence(instance2);
            }
            this.j = false;
        }
        AudioDetector.DetectorResult detectorResult2 = this.f12451f;
        detectorResult2.quality = 0;
        detectorResult2.voice = false;
        detectorResult2.volume = this.f12452g.volume * 4;
    }

    @Override // com.iflytek.cloud.util.AudioDetector
    public boolean destroy() {
        boolean z;
        int iVADUninitialize;
        DebugLog.LogD("destroy enter");
        synchronized (AudioDetector.b) {
            z = true;
            try {
                MetaVAD.Instance instance = this.f12452g;
                if (instance != null) {
                    if (0 != instance.handle) {
                        DebugLog.LogD("destroy MetaVAD.VADDestroySession begin");
                        iVADUninitialize = MetaVAD.VADDestroySession(this.f12452g);
                        DebugLog.LogD("destroy MetaVAD.VADDestroySession ret=" + iVADUninitialize);
                    } else {
                        iVADUninitialize = 0;
                    }
                    if (iVADUninitialize == 0) {
                        this.f12452g.handle = 0L;
                        DebugLog.LogD("destroy MetaVAD.VADDelResource begin");
                        DebugLog.LogD("destroy MetaVAD.VADDelResource ret=" + MetaVAD.VADDelResource(this.f12452g.rate));
                        DebugLog.LogD("destroy MetaVAD.VADUninitialize begin");
                        iVADUninitialize = MetaVAD.VADUninitialize();
                        DebugLog.LogD("destroy MetaVAD.VADUninitialize ret=" + iVADUninitialize);
                    }
                    if (iVADUninitialize != 0) {
                        z = false;
                    }
                    if (z) {
                        this.f12452g = null;
                        AudioDetector.f12441a = null;
                    }
                }
            } catch (Throwable th) {
                DebugLog.LogE("destroy exception:");
                DebugLog.LogE(th);
                z = false;
            }
        }
        DebugLog.LogD("destroy leave: " + z);
        return z;
    }

    @Override // com.iflytek.cloud.util.AudioDetector
    public AudioDetector.DetectorResult detect(byte[] bArr, int i, int i2, boolean z) {
        DebugLog.LogI("detect enter, buffer: " + bArr + ", offset: " + i + ", length: " + i2 + ", isLast: " + z);
        synchronized (AudioDetector.b) {
            try {
                try {
                    b();
                    MetaVAD.Instance instance = this.f12452g;
                    if (instance == null || 0 == instance.handle) {
                        DebugLog.LogE("detect error: vad instance null, or handle is invalid!");
                        this.f12451f.error = 21003;
                    } else if (bArr != null && i2 > 0 && 32768 >= i2 && i >= 0 && bArr.length - i >= i2) {
                        DebugLog.LogI("detect buffer length: " + i2);
                    } else if (!z) {
                        this.f12451f.error = ErrorCode.ERROR_INVALID_PARAM;
                    }
                    if (this.f12451f.error == 0) {
                        int iVADAppendPCM = MetaVAD.VADAppendPCM(this.f12452g, bArr, i, i2, z ? 1 : 0);
                        DebugLog.LogI("MetaVAD VADAppendPCM ret: " + iVADAppendPCM);
                        if (this.i) {
                            this.o += (long) i2;
                        }
                        a(iVADAppendPCM);
                        if (this.f12451f.error == 0) {
                            int iVADGetSeg = 5;
                            while (5 == iVADGetSeg) {
                                iVADGetSeg = MetaVAD.VADGetSeg(this.f12452g);
                                DebugLog.LogI("MetaVAD VADGetSeg ret: " + iVADGetSeg + ", seg status: " + this.f12452g.seg + ", seg begin: " + this.f12452g.begin + ", seg end: " + this.f12452g.end);
                                a(iVADGetSeg);
                                if (this.f12451f.error == 0) {
                                    c();
                                    AudioDetector.DetectorResult detectorResult = this.f12451f;
                                    detectorResult.buffer = bArr;
                                    detectorResult.length = i2;
                                    detectorResult.offset = i;
                                }
                                if (3 == this.f12452g.seg || this.f12451f.error != 0) {
                                    DebugLog.LogD("detect get last seg or error.");
                                    break;
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    DebugLog.LogE("detect exception");
                    DebugLog.LogE(th);
                    b();
                    this.f12451f.error = ErrorCode.ERROR_UNKNOWN;
                }
            } catch (UnsatisfiedLinkError e2) {
                DebugLog.LogE("detect exception");
                DebugLog.LogE(e2);
                b();
                this.f12451f.error = ErrorCode.ERROR_UNSATISFIED_LINK;
            }
        }
        DebugLog.LogI("detect leave");
        return this.f12451f;
    }

    @Override // com.iflytek.cloud.util.AudioDetector
    public void reset() {
        DebugLog.LogD("reset enter");
        synchronized (AudioDetector.b) {
            MetaVAD.Instance instance = this.f12452g;
            if (instance == null || 0 == instance.handle) {
                DebugLog.LogE("setParameter error: vad instance is null, or invalid handle.");
            } else {
                try {
                    DebugLog.LogD("reset MetaVAD.VADResetSession begin");
                    DebugLog.LogD("reset MetaVAD.VADResetSession return " + MetaVAD.VADResetSession(this.f12452g));
                    this.f12452g.a();
                    this.j = true;
                    this.i = false;
                    this.o = 0L;
                    this.l = 0;
                } catch (Throwable th) {
                    DebugLog.LogE("reset exception:");
                    DebugLog.LogE(th);
                }
            }
        }
        DebugLog.LogD("reset leave");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00ba A[Catch: all -> 0x014d, TryCatch #2 {all -> 0x014d, blocks: (B:9:0x002b, B:11:0x0033, B:12:0x004f, B:14:0x0055, B:16:0x005d, B:18:0x0063, B:20:0x006e, B:19:0x0069, B:21:0x00ba, B:23:0x00c0, B:26:0x00ca, B:30:0x00d4, B:32:0x00ec, B:33:0x0113, B:29:0x00d0, B:34:0x0116), top: B:49:0x002b, outer: #0, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00c0 A[Catch: all -> 0x014d, TRY_LEAVE, TryCatch #2 {all -> 0x014d, blocks: (B:9:0x002b, B:11:0x0033, B:12:0x004f, B:14:0x0055, B:16:0x005d, B:18:0x0063, B:20:0x006e, B:19:0x0069, B:21:0x00ba, B:23:0x00c0, B:26:0x00ca, B:30:0x00d4, B:32:0x00ec, B:33:0x0113, B:29:0x00d0, B:34:0x0116), top: B:49:0x002b, outer: #0, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ec A[Catch: all -> 0x014d, TryCatch #2 {all -> 0x014d, blocks: (B:9:0x002b, B:11:0x0033, B:12:0x004f, B:14:0x0055, B:16:0x005d, B:18:0x0063, B:20:0x006e, B:19:0x0069, B:21:0x00ba, B:23:0x00c0, B:26:0x00ca, B:30:0x00d4, B:32:0x00ec, B:33:0x0113, B:29:0x00d0, B:34:0x0116), top: B:49:0x002b, outer: #0, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0113 A[Catch: all -> 0x014d, TryCatch #2 {all -> 0x014d, blocks: (B:9:0x002b, B:11:0x0033, B:12:0x004f, B:14:0x0055, B:16:0x005d, B:18:0x0063, B:20:0x006e, B:19:0x0069, B:21:0x00ba, B:23:0x00c0, B:26:0x00ca, B:30:0x00d4, B:32:0x00ec, B:33:0x0113, B:29:0x00d0, B:34:0x0116), top: B:49:0x002b, outer: #0, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0116 A[Catch: all -> 0x014d, TRY_LEAVE, TryCatch #2 {all -> 0x014d, blocks: (B:9:0x002b, B:11:0x0033, B:12:0x004f, B:14:0x0055, B:16:0x005d, B:18:0x0063, B:20:0x006e, B:19:0x0069, B:21:0x00ba, B:23:0x00c0, B:26:0x00ca, B:30:0x00d4, B:32:0x00ec, B:33:0x0113, B:29:0x00d0, B:34:0x0116), top: B:49:0x002b, outer: #0, inners: #1 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00ec, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x0116, please report this as an issue */
    @Override // com.iflytek.cloud.util.AudioDetector
    public void setParameter(String str, String str2) {
        long j;
        DebugLog.LogD("setParameter enter, key: " + str + ", value: " + str2);
        synchronized (AudioDetector.b) {
            MetaVAD.Instance instance = this.f12452g;
            if (instance == null || 0 == instance.handle) {
                DebugLog.LogE("setParameter error: vad instance is null, or invalid handle.");
            } else {
                try {
                    if (!AudioDetector.RESET_SENTENCE.equalsIgnoreCase(str)) {
                        if (!TextUtils.isEmpty(str)) {
                            Map<String, String> map = c;
                            if (map.containsKey(str)) {
                                if (TextUtils.isEmpty(str2)) {
                                    this.f12450e.e(str);
                                } else {
                                    this.f12450e.b(str, str2);
                                }
                                String strA = this.f12450e.a(str, f12449d.get(str));
                                String str3 = map.get(str);
                                DebugLog.LogD("VAD SetParameter key=" + str3 + ", value=" + strA + ", ret: " + MetaVAD.VADSetParam(this.f12452g, d.a(str3, this.f12453h), d.a(strA, this.f12453h)));
                            } else if (!TextUtils.isEmpty(str)) {
                                if (SpeechConstant.KEY_SPEECH_TIMEOUT.equalsIgnoreCase(str)) {
                                    try {
                                        j = Long.parseLong(str2);
                                    } catch (NumberFormatException e2) {
                                        DebugLog.LogE(e2);
                                        j = -1;
                                    }
                                    DebugLog.LogD("SetParameter speech timeout value:" + j);
                                    if (0 < j) {
                                        this.n = (((long) (this.f12452g.rate * this.m)) * j) / 1000;
                                        DebugLog.LogD("SetParameter BytesOfSpeechTimeout: " + this.n);
                                    } else {
                                        this.n = -1L;
                                    }
                                } else {
                                    DebugLog.LogD("VAD SetParameter name=" + str + ", value=" + str2 + ", ret: " + MetaVAD.VADSetParam(this.f12452g, d.a(str, this.f12453h), d.a(str2, this.f12453h)));
                                }
                            }
                        } else if (!TextUtils.isEmpty(str)) {
                            if (SpeechConstant.KEY_SPEECH_TIMEOUT.equalsIgnoreCase(str)) {
                                j = Long.parseLong(str2);
                                DebugLog.LogD("SetParameter speech timeout value:" + j);
                                if (0 < j) {
                                    this.n = (((long) (this.f12452g.rate * this.m)) * j) / 1000;
                                    DebugLog.LogD("SetParameter BytesOfSpeechTimeout: " + this.n);
                                } else {
                                    this.n = -1L;
                                }
                            } else {
                                DebugLog.LogD("VAD SetParameter name=" + str + ", value=" + str2 + ", ret: " + MetaVAD.VADSetParam(this.f12452g, d.a(str, this.f12453h), d.a(str2, this.f12453h)));
                            }
                        }
                        throw th;
                    }
                    DebugLog.LogD("VAD VADResetSentence ret: " + MetaVAD.VADResetSentence(this.f12452g));
                } catch (Throwable th) {
                    DebugLog.LogE("setParameter exception");
                    DebugLog.LogE(th);
                }
            }
        }
        DebugLog.LogD("setParameter leave.");
    }

    private boolean a() {
        long j = this.n;
        return 0 < j && j <= this.o;
    }
}
