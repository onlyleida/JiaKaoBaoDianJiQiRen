package com.iflytek.cloud.a.h;

import android.content.Context;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a extends com.iflytek.cloud.a.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12272a;
    public static int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f12273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f12274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<byte[]> f12275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12277h;
    private boolean i;
    private boolean j;
    private int k;
    private final JSONObject l;
    private JSONArray m;
    private int n;
    private int o;
    private String p;
    private int q;

    public a(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.c = "";
        this.f12273d = null;
        this.f12274e = null;
        this.f12275f = null;
        this.f12276g = 0;
        this.f12277h = 0;
        this.i = false;
        this.j = false;
        this.k = 0;
        this.l = new JSONObject();
        this.m = null;
        this.n = -1;
        this.o = 100;
        this.p = null;
        this.q = 0;
        this.f12273d = new d();
        this.f12275f = new ArrayList<>();
        setParams(aVar);
    }

    public void a(String str, b bVar) {
        this.c = str;
        this.f12274e = bVar;
        if (str == null || TextUtils.isEmpty(str)) {
            exit(new SpeechError(ErrorCode.ERROR_EMPTY_UTTERANCE));
            return;
        }
        this.i = getParam().a(SpeechConstant.TTS_SPELL_INFO, false);
        this.j = getParam().a("audio_info", this.j);
        start();
    }

    protected void b() throws Exception {
        com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);
        int iSessionBegin = this.f12273d.sessionBegin(this.mContext, null, this);
        if (iSessionBegin != 0) {
            int i = this.q + 1;
            this.q = i;
            if (i > 40) {
                throw new SpeechError(iSessionBegin);
            }
            if (isRunning()) {
                sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 15);
                return;
            }
            return;
        }
        byte[] bytes = this.c.getBytes(getTextEncoding());
        if (!"unicode".equals(getTextEncoding())) {
            this.f12273d.a(bytes);
        } else if (Build.VERSION.SDK_INT >= 27) {
            byte[] bArr = new byte[bytes.length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            for (int i2 = 0; i2 < bytes.length / 2; i2++) {
                int i3 = i2 * 2;
                int i4 = i3 + 1;
                bArr[i4] = bytes[i3];
                bArr[i3] = bytes[i4];
            }
            this.f12273d.a(bArr);
        } else {
            byte[] bArr2 = new byte[bytes.length - 2];
            System.arraycopy(bytes, 2, bArr2, 0, bytes.length - 2);
            this.f12273d.a(bArr2);
        }
        setStatus(com.iflytek.cloud.a.f.a.b.waitresult);
        sendMsg(5);
        updateTimeoutMsg();
    }

    protected void c() throws Exception {
        int i;
        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
        if (this.f12273d.d()) {
            DebugLog.LogD("tts msc get last audio");
            if (this.f12274e != null) {
                if (this.j) {
                    this.l.put("audio_len", this.k);
                }
                JSONArray jSONArray = this.m;
                if (jSONArray != null) {
                    this.l.put("spell_info", jSONArray);
                    this.m = null;
                }
                this.f12274e.a(this.f12275f, this.o, this.f12277h, this.c.length() - 1, this.l.length() > 0 ? this.l.toString() : null);
            }
            exit(null);
            return;
        }
        byte[] bArrA = this.f12273d.a();
        getSessionID();
        if (bArrA == null || this.f12274e == null) {
            sendMsg(5, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 10);
            return;
        }
        this.k += bArrA.length;
        int iB = Build.VERSION.SDK_INT >= 27 ? (this.f12273d.b() / 2) - 2 : (this.f12273d.b() / 2) - 1;
        if (iB < 0) {
            DebugLog.LogD("get audio index value error: " + iB);
            iB = 0;
        }
        if (this.i) {
            String strC = this.f12273d.c();
            if (!TextUtils.isEmpty(strC)) {
                if (this.m == null) {
                    this.m = new JSONArray();
                }
                this.m.put(strC);
            }
        }
        if (this.n < 0 && (i = this.f12276g) != 0 && iB != i && this.f12275f.size() > 0) {
            DebugLog.LogI("tts msc get audio beg=" + this.f12277h + ", end=" + this.f12276g);
            a();
        }
        updateTimeoutMsg();
        this.f12276g = iB;
        this.f12275f.add(bArrA);
        if (this.n >= 0) {
            a();
        }
        sendMsg(5, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 0);
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        b bVar;
        if (z && isRunning() && (bVar = this.f12274e) != null) {
            bVar.onCompleted(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        super.cancel(z);
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.f12273d.getClientID();
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        if (TextUtils.isEmpty(this.p)) {
            this.p = this.f12273d.getSessionID();
        }
        return this.p;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getTextEncoding() {
        return getParam().a(SpeechConstant.TEXT_ENCODING, "unicode");
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        f12272a = this.f12273d.getIntValue(com.iflytek.cloud.a.f.a.TAG_UPFLOW);
        b = this.f12273d.getIntValue(com.iflytek.cloud.a.f.a.TAG_DOWNFLOW);
        getSessionID();
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.f12274e == null) {
            this.f12273d.sessionEnd("user abort");
        } else if (speechError != null) {
            this.f12273d.sessionEnd("error" + speechError.getErrorCode());
            DebugLog.LogD("QTts Error Code = " + speechError.getErrorCode());
        } else {
            this.f12273d.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.f12274e != null) {
            if (this.mUserCancel) {
                DebugLog.LogD("MscSynthesizer#onCancel");
            } else {
                DebugLog.LogD("MscSynthesizer#onEnd");
                this.f12274e.onCompleted(speechError);
            }
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Exception {
        int i = message.what;
        if (i == 0) {
            proc_Msg_Start();
        } else if (i == 1) {
            b();
        } else {
            if (i != 5) {
                return;
            }
            c();
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onParseParam() {
        this.n = getParam().a(SpeechConstant.TTS_BUFFER_TIME, this.n);
        this.o = getParam().a("tts_proc_scale", this.o);
        super.onParseParam();
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("tts msg start:" + System.currentTimeMillis());
        String strA = getParam().a(SpeechConstant.ENGINE_TYPE);
        boolean zA = getParam().a(SpeechConstant.NET_CHECK, true);
        if ((SpeechConstant.TYPE_CLOUD.equals(strA) || SpeechConstant.TYPE_DISTRIBUTED.equals(strA)) && zA) {
            j.a(this.mContext);
        }
        sendMsg(1);
    }

    private void a() throws JSONException, SpeechError {
        int i = this.o;
        int iMin = Math.min(i - 1, (this.f12276g * i) / this.c.length());
        if (this.j) {
            this.l.put("audio_len", this.k);
        }
        JSONArray jSONArray = this.m;
        if (jSONArray != null) {
            this.l.put("spell_info", jSONArray);
            this.m = null;
        }
        this.f12274e.a(this.f12275f, iMin, this.f12277h, this.f12276g, this.l.length() > 0 ? this.l.toString() : null);
        this.f12275f = new ArrayList<>();
        this.f12277h = Math.min(this.f12276g + 1, this.c.length() - 1);
    }
}
