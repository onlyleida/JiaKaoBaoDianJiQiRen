package com.iflytek.cloud.a.e;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.IdentityListener;
import com.iflytek.cloud.IdentityResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.c;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f12246a = b.class.getSimpleName();
    public static int b = 0;
    public static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f12247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected volatile IdentityListener f12248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f12249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f12250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f12251h;
    protected a i;
    private c j;
    protected String k;
    protected com.iflytek.cloud.a.f.c l;
    private HashMap<String, com.iflytek.cloud.b.a> m;
    private HashMap<String, StringBuffer> n;
    private HashMap<String, Boolean> o;
    private String p;
    private int q;
    long r;

    public b(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.f12247d = true;
        this.f12248e = null;
        this.f12249f = false;
        this.f12250g = false;
        this.f12251h = false;
        this.i = new a();
        this.k = null;
        this.l = new com.iflytek.cloud.a.f.c();
        this.m = null;
        this.n = null;
        this.p = null;
        this.q = 0;
        this.r = 0L;
        this.j = new c();
        this.f12251h = false;
        this.m = new HashMap<>();
        this.n = new HashMap<>();
        this.o = new HashMap<>();
        setParams(aVar);
    }

    private void notifyResult(boolean z, byte[] bArr) throws SpeechError, UnsupportedEncodingException {
        this.mStatusBegin = SystemClock.elapsedRealtime();
        if (bArr == null || bArr.length <= 0) {
            throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
        }
        String strReplace = new String(bArr, "utf-8").replace("\"return\"", "\"ret\"");
        this.k = strReplace;
        if (this.f12248e != null && isRunning()) {
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
            this.f12248e.onEvent(20001, 0, 0, bundle);
            IdentityResult identityResult = new IdentityResult(strReplace);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            this.f12248e.onResult(identityResult, z);
        }
        DebugLog.LogD("msc result time:" + System.currentTimeMillis());
        if (z) {
            exit(null);
        }
    }

    public c a() {
        return this.j;
    }

    public void b() {
        if (com.iflytek.cloud.a.f.a.b.recording == getStatus()) {
            DebugLog.LogD("mfv msc vadEndCall");
            if (this.f12248e != null) {
                this.f12248e.onEvent(SpeechEvent.EVENT_VAD_EOS, 0, 0, null);
            }
            a(SpeechConstant.ENG_IVP, false);
        }
    }

    public void callbackVolume(byte[] bArr, int i) {
        if (this.f12248e == null || !isRunning()) {
            return;
        }
        this.f12248e.onEvent(SpeechEvent.EVENT_VOLUME, i, 0, null);
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        if (z && isRunning() && this.f12248e != null) {
            DebugLog.LogD("cancel");
            this.f12248e.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        if (getStatus() == com.iflytek.cloud.a.f.a.b.recording) {
            this.f12251h = true;
        }
        super.cancel(z);
    }

    void errCb(char[] cArr, int i, byte[] bArr) {
        DebugLog.LogD(f12246a, "clientSessionID:" + new String(cArr) + "errorcode:" + i);
        Bundle bundle = new Bundle();
        bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
        this.f12248e.onEvent(20001, 0, 0, bundle);
        exit(new SpeechError(i));
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.i.getClientID();
    }

    public com.iflytek.cloud.a.f.c getPerfLog() {
        return this.l;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        if (TextUtils.isEmpty(this.p)) {
            this.p = this.i.getSessionID();
        }
        return this.p;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("onSessionEnd");
        b = this.i.getIntValue(com.iflytek.cloud.a.f.a.TAG_UPFLOW);
        c = this.i.getIntValue(com.iflytek.cloud.a.f.a.TAG_DOWNFLOW);
        getSessionID();
        if (this.k == null && speechError == null && getParam().a(SpeechConstant.ASR_NOMATCH_ERROR, true)) {
            speechError = new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
        }
        if (speechError != null) {
            this.l.a("app_ret", speechError.getErrorCode(), false);
        } else {
            this.l.a("app_ret", 0L, false);
        }
        this.l.a("rec_ustop", this.f12251h ? "1" : "0", false);
        this.i.setParam("sessinfo", this.l.a());
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel) {
            this.i.sessionEnd("user abort");
        } else if (speechError != null) {
            this.i.sessionEnd("error" + speechError.getErrorCode());
        } else {
            this.i.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.f12248e != null) {
            if (!this.mUserCancel && speechError != null) {
                this.f12248e.onError(speechError);
            }
            this.f12248e.onEvent(SpeechEvent.EVENT_SESSION_END, 0, 0, null);
        }
        this.f12248e = null;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Exception {
        super.onMsgProcess(message);
        int i = message.what;
        if (i == 0) {
            proc_Msg_Start();
            return;
        }
        if (i == 1) {
            proc_Msg_Session_Begin();
            return;
        }
        if (i == 2) {
            proc_Msg_Record_Data(message);
            return;
        }
        if (i == 3) {
            a(message);
            return;
        }
        if (i == 4) {
            proc_Msg_Result(message);
        } else if (i == 7) {
            proc_Msg_Netperf();
        } else {
            if (i != 9) {
                return;
            }
            b();
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onParseParam() {
        this.mSpeechTimeOut = getParam().a(SpeechConstant.KEY_SPEECH_TIMEOUT, this.mSpeechTimeOut);
        DebugLog.LogD("mSpeechTimeOut=" + this.mSpeechTimeOut);
        super.onParseParam();
    }

    public void proc_Msg_Netperf() {
        if (isRunning()) {
            int intValue = this.i.getIntValue(com.iflytek.cloud.a.f.a.TAG_NETPERF);
            if (this.f12248e != null) {
                this.f12248e.onEvent(10001, intValue, 0, null);
            }
            sendMsg(7, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 100);
        }
    }

    protected void proc_Msg_Record_Data(Message message) throws Exception {
        HashMap map = (HashMap) message.obj;
        byte[] bArr = (byte[]) map.get("data");
        String str = (String) map.get("ssub");
        com.iflytek.cloud.b.a aVar = this.m.get(str);
        StringBuffer stringBuffer = this.n.get(str);
        String strA = aVar.a(SpeechConstant.MFV_DATA_PATH);
        if (!TextUtils.isEmpty(strA) && bArr != null) {
            this.j.a(strA, bArr);
        }
        Boolean bool = this.o.get(str);
        if (bool == null) {
            bool = Boolean.TRUE;
        }
        if (SpeechConstant.ENG_IVP.equals(str) && this.f12247d) {
            a(stringBuffer, bArr, bool.booleanValue(), true);
        } else {
            a(stringBuffer, bArr, bool.booleanValue(), false);
        }
        if (bool.booleanValue()) {
            this.o.put(str, Boolean.FALSE);
        }
    }

    void proc_Msg_Result(Message message) throws InterruptedException, SpeechError, UnsupportedEncodingException {
        int i = message.arg1;
        byte[] bArr = (byte[]) message.obj;
        if (i == 0) {
            if (!this.f12250g) {
                this.f12250g = true;
                this.l.a("app_frs");
            }
            notifyResult(false, bArr);
            return;
        }
        if (i != 5) {
            return;
        }
        if (!this.f12250g) {
            this.f12250g = true;
            this.l.a("app_frs");
        }
        this.l.a("app_lrs");
        notifyResult(true, bArr);
    }

    protected void proc_Msg_Session_Begin() throws Exception {
        if (getParam().a(SpeechConstant.NET_CHECK, true)) {
            j.a(this.mContext);
        }
        com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);
        this.l.a("app_ssb");
        int iSessionBegin = this.i.sessionBegin(this.mContext, null, this);
        if (iSessionBegin == 0 && this.i.mClientID != null) {
            if (isRunning()) {
                MSC.QMFVRegisterNotify(this.i.mClientID, "rsltCb", "stusCb", "errCb", this);
                setStatus(com.iflytek.cloud.a.f.a.b.recording);
                if (getParam().a(SpeechConstant.ASR_NET_PERF, false)) {
                    sendMsg(7, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    return;
                }
                return;
            }
            return;
        }
        int i = this.q + 1;
        this.q = i;
        if (i > 40) {
            throw new SpeechError(iSessionBegin);
        }
        if (isRunning()) {
            Thread.sleep(15L);
            sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
        }
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("[mfv]start connecting");
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
    }

    void rsltCb(char[] cArr, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            DebugLog.LogD(f12246a, "rsltCb:" + i2 + "result:" + new String(bArr));
        } else {
            DebugLog.LogI(f12246a, "rsltCb:" + i2 + "result:null");
        }
        Message messageObtainMessage = obtainMessage(4, i2, 0, bArr);
        if (hasMessages(4)) {
            sendMsg(messageObtainMessage, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 0);
        } else {
            sendMsg(messageObtainMessage, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void start() {
        this.l.a(getParam());
        super.start();
    }

    void stusCb(char[] cArr, int i, int i2, byte[] bArr, int i3) {
        DebugLog.LogD(f12246a, "stusCb:" + i2 + ",type:" + i);
        if (i == 0 && 3 == i2) {
            b();
        }
        if (1 == i) {
            String[] strArrSplit = getParam().a(SpeechConstant.MFV_SCENES, "").split("\\|");
            if (strArrSplit == null || strArrSplit.length >= 2) {
                try {
                    String str = new String(bArr, "utf-8");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("sub", str);
                    jSONObject.put("sret", i2);
                    jSONObject.put(SpeechUtility.TAG_RESOURCE_RET, i2);
                    jSONObject.put("sst", this.m.get(str).a("sst"));
                    if (this.f12248e != null) {
                        this.f12248e.onResult(new IdentityResult(jSONObject.toString()), true);
                    }
                } catch (UnsupportedEncodingException e2) {
                    DebugLog.LogE(e2);
                } catch (JSONException e3) {
                    DebugLog.LogE(e3);
                }
            }
        }
    }

    public synchronized void a(IdentityListener identityListener) {
        this.f12248e = identityListener;
        DebugLog.LogD("startWorking called");
        start();
    }

    public synchronized boolean a(String str, boolean z) {
        DebugLog.LogD("stopRecognize, current status is :" + getStatus() + " usercancel : " + z);
        this.l.a("app_stop");
        this.f12251h = z;
        sendMsg(obtainMessage(3, str));
        return true;
    }

    private void a(Message message) throws InterruptedException, SpeechError, IOException {
        DebugLog.LogD("recording stop");
        this.l.a("app_lau");
        this.o.put((String) message.obj, Boolean.TRUE);
        this.i.a((String) message.obj);
        updateTimeoutMsg();
    }

    protected void a(StringBuffer stringBuffer, byte[] bArr, boolean z, boolean z2) throws SpeechError {
        this.i.a(stringBuffer, bArr, bArr == null ? 0 : bArr.length, z);
        if (z2) {
            int audioVolume = this.i.getAudioVolume();
            DebugLog.LogI("QISRAudioWrite volume:" + audioVolume);
            callbackVolume(bArr, audioVolume);
        }
    }

    public void a(String str, String str2, byte[] bArr, int i, int i2) {
        if (!this.m.containsKey(str)) {
            com.iflytek.cloud.b.a aVar = new com.iflytek.cloud.b.a();
            aVar.c(str2);
            aVar.a("sst", getParam().a("sst"), false);
            aVar.a("mver", AliLiveInfoUtils.ALIVC_CONAN_VERSION, false);
            aVar.b("ssub", str);
            this.f12247d = aVar.a(SpeechConstant.VAD_ENABLE, true);
            this.m.put(str, aVar);
            this.n.put(str, new StringBuffer(aVar.toString()));
        }
        if (isRunning()) {
            if (!this.f12249f) {
                this.f12249f = true;
                this.l.a("rec_start");
            }
            HashMap map = new HashMap();
            map.put("ssub", str);
            byte[] bArr2 = null;
            if (bArr != null) {
                bArr2 = new byte[i2];
                System.arraycopy(bArr, i, bArr2, 0, i2);
            }
            map.put("data", bArr2);
            sendMsg(obtainMessage(2, map));
        }
    }
}
