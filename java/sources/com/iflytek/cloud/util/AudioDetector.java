package com.iflytek.cloud.util;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.b.a;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.a.a.b;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AudioDetector {
    public static final int DEF_BOS = 2000;
    public static final String DEF_ENGINE_TYPE = "fixfront";
    public static final int DEF_EOS = 700;
    public static final int DEF_RATE = 16000;
    public static final String EARLY_START = "early_start";
    public static final int MAX_BUF_LEN = 32768;
    public static final String REDUCE_FLOW = "vad_reduce_flow";
    public static final String RESET_SENTENCE = "reset_sentence";
    public static final String RES_PATH = "vad_res_path";
    public static final String SUB_TIMEOUT = "sub_timeout";
    public static final String THRESHOLD = "threshold";
    public static final String TYPE_FIXFRONT = "fixfront";
    public static final String TYPE_META = "meta";
    public static final String VAD_ENGINE = "vad_engine";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static AudioDetector f12441a;
    protected static Object b = new Object();

    public static class DetectorResult {
        public static final int STATUS_BOS = 3;
        public static final int STATUS_EOS = 2;
        public static final int STATUS_OK = 0;
        public static final int STATUS_START = 1;
        public static final int STATUS_TIMEOUT = 4;
        public static final int SUB_END = 2;
        public static final int SUB_OK = 0;
        public static final int SUB_START = 1;
        public static final int SUB_STARTEND = 3;
        public byte[] buffer = null;
        public int offset = 0;
        public int length = 0;
        public int status = 0;
        public int sub = 0;
        public final LinkedHashMap<Integer, Integer> subs = new LinkedHashMap<>();
        public int volume = 0;
        public boolean voice = false;
        public int quality = 0;
        public int start = 0;
        public int end = 0;
        public int error = 0;
        public float confidence = 1.0f;
    }

    protected AudioDetector(Context context, String str) {
    }

    private static AudioDetector a(Context context, String str) {
        a aVar = new a();
        aVar.c(str);
        String strA = aVar.a(SpeechConstant.LIB_NAME);
        if (TextUtils.isEmpty(strA) || a(strA)) {
            String strA2 = aVar.a(VAD_ENGINE, "fixfront");
            if ("fixfront".equalsIgnoreCase(strA2)) {
                return new com.iflytek.cloud.util.a.a.a(context, str);
            }
            if (TYPE_META.equalsIgnoreCase(strA2)) {
                return new b(context, str);
            }
            DebugLog.LogE("detector factory unmatched engine type: " + strA2);
        } else {
            DebugLog.LogE("detector factory load library failed: " + strA);
        }
        return null;
    }

    public static AudioDetector createDetector(Context context, String str) {
        DebugLog.LogD("createDetector enter, context: " + context + ", param: " + str);
        synchronized (b) {
            if (f12441a == null) {
                f12441a = a(context, str);
            }
        }
        DebugLog.LogD("createDetector leave");
        return f12441a;
    }

    public static AudioDetector getDetector() {
        synchronized (b) {
            DebugLog.LogD("getDetector enter");
        }
        return f12441a;
    }

    public abstract boolean destroy();

    public abstract DetectorResult detect(byte[] bArr, int i, int i2, boolean z);

    public abstract void reset();

    public abstract void setParameter(String str, String str2);

    private static boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                System.loadLibrary(str);
            } catch (Throwable th) {
                DebugLog.LogE("Load library failed.");
                th.printStackTrace();
                return false;
            }
        }
        return true;
    }
}
