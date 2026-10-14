package com.iflytek.cloud.a.a;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.EvaluatorListener;
import com.iflytek.cloud.EvaluatorResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.a.f.c;
import com.iflytek.cloud.msc.util.d;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.a implements PcmRecorder.PcmRecordListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f12157a = Boolean.FALSE;
    private volatile EvaluatorListener b;
    long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f12158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.iflytek.cloud.a.a.a f12159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected PcmRecorder f12160f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected c f12161g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f12162h;
    protected byte[] i;
    protected String j;
    protected String k;
    private ConcurrentLinkedQueue<byte[]> l;
    private ConcurrentLinkedQueue<byte[]> m;
    private ArrayList<String> n;
    private boolean o;
    private com.iflytek.cloud.a.f.b.a p;
    private String q;
    private boolean r;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12163a;

        static {
            int[] iArr = new int[com.iflytek.cloud.a.f.b.a.values().length];
            f12163a = iArr;
            try {
                iArr[com.iflytek.cloud.a.f.b.a.noResult.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12163a[com.iflytek.cloud.a.f.b.a.hasResult.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12163a[com.iflytek.cloud.a.f.b.a.resultOver.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.b = null;
        this.c = 0L;
        this.f12158d = 1;
        this.f12159e = new com.iflytek.cloud.a.a.a();
        this.f12160f = null;
        this.f12161g = new c();
        this.f12162h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = false;
        this.p = com.iflytek.cloud.a.f.b.a.noResult;
        this.q = null;
        this.r = false;
        this.m = new ConcurrentLinkedQueue<>();
        this.l = new ConcurrentLinkedQueue<>();
        this.n = new ArrayList<>();
        this.o = false;
        setParams(aVar);
    }

    private void b() throws SpeechError, UnsupportedEncodingException {
        com.iflytek.cloud.a.f.b.a aVarA = this.f12159e.a();
        this.p = aVarA;
        int i = a.f12163a[aVarA.ordinal()];
        if (i == 2) {
            b(false);
        } else {
            if (i != 3) {
                return;
            }
            b(true);
        }
    }

    private void callbackVolume(byte[] bArr, int i) {
        if (this.b == null || !isRunning()) {
            return;
        }
        this.b.onVolumeChanged(i, bArr);
    }

    private void proc_Msg_Record_Stoped() throws InterruptedException, SpeechError, IOException {
        DebugLog.LogD("--->onStoped: in");
        if (!isRunning()) {
            releaseRecord();
        }
        this.f12159e.pushEndFlag();
        updateTimeoutMsg();
        DebugLog.LogD("--->onStoped: out");
    }

    private void releaseRecord() {
        PcmRecorder pcmRecorder = this.f12160f;
        if (pcmRecorder != null) {
            pcmRecorder.stopRecord(getParam().a("record_force_stop", false));
            this.f12160f = null;
            if (this.r) {
                stopBluetooth();
            }
        }
    }

    public synchronized void a(String str, String str2, EvaluatorListener evaluatorListener) {
        f12157a = Boolean.FALSE;
        this.j = str;
        this.f12162h = str2;
        this.k = getParam().a(SpeechConstant.ISE_USER_MODEL_ID);
        this.b = evaluatorListener;
        DebugLog.LogD("[ise]startListening called 01");
        start();
    }

    public synchronized boolean c(boolean z) {
        if (getStatus() != com.iflytek.cloud.a.f.a.b.recording) {
            DebugLog.LogD("stopRecognize fail  status is :" + getStatus());
            return false;
        }
        PcmRecorder pcmRecorder = this.f12160f;
        if (pcmRecorder != null) {
            pcmRecorder.stopRecord(getParam().a("record_force_stop", false));
        }
        this.o = z;
        sendMsg(3);
        return true;
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        if (z && isRunning() && this.b != null) {
            this.b.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        releaseRecord();
        super.cancel(z);
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.f12159e.getClientID();
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        if (TextUtils.isEmpty(this.q)) {
            this.q = this.f12159e.getSessionID();
        }
        return this.q;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getTextEncoding() {
        return getParam().a(SpeechConstant.TEXT_ENCODING, "gb2312");
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("--->onEnd: in");
        releaseRecord();
        getSessionID();
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel) {
            this.f12159e.sessionEnd("user abort");
        } else if (speechError != null) {
            this.f12159e.sessionEnd("error" + speechError.getErrorCode());
        } else {
            this.f12159e.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.b != null && !this.mUserCancel) {
            DebugLog.LogD("VerifyListener#onEnd");
            if (speechError != null) {
                Bundle bundle = new Bundle();
                bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
                this.b.onEvent(20001, 0, 0, bundle);
                this.b.onError(speechError);
            }
        }
        this.b = null;
        DebugLog.LogD("--->onEnd: out");
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onError(SpeechError speechError) {
        exit(speechError);
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Exception {
        super.onMsgProcess(message);
        int i = message.what;
        if (i == 9) {
            DebugLog.LogD("--->on timeout vad");
            c();
            return;
        }
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
        } else if (i == 3) {
            proc_Msg_Record_Stoped();
        } else {
            if (i != 4) {
                return;
            }
            proc_Msg_Result(message);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onParseParam() {
        this.mSpeechTimeOut = getParam().a(SpeechConstant.KEY_SPEECH_TIMEOUT, -1);
        DebugLog.LogD("mSpeechTimeOut=" + this.mSpeechTimeOut);
        if ("utf-8".equals(getParam().a(SpeechConstant.TEXT_ENCODING)) && Locale.CHINA.toString().equalsIgnoreCase(getParam().a(SpeechConstant.LANGUAGE))) {
            getParam().a(SpeechConstant.TEXT_BOM, "1", false);
        } else {
            getParam().a(SpeechConstant.TEXT_BOM, "0", false);
        }
        super.onParseParam();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordBuffer(byte[] bArr, int i, int i2) {
        if (com.iflytek.cloud.a.f.a.b.recording != getStatus()) {
            DebugLog.LogE("onRecordBuffer statuts not recording");
        } else if (i2 > 0) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            sendMsg(obtainMessage(2, bArr2));
        }
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordReleased() {
        PcmRecorder pcmRecorder = this.f12160f;
        if (pcmRecorder == null || !(pcmRecorder instanceof com.iflytek.cloud.record.a)) {
            return;
        }
        c(true);
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordStarted(boolean z) {
    }

    protected void proc_Msg_Record_Data(Message message) throws Exception {
        DebugLog.LogD("proc_Msg_Record_Data");
        byte[] bArr = (byte[]) message.obj;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        if (!TextUtils.isEmpty(getParam().a(SpeechConstant.ISE_AUDIO_PATH))) {
            this.l.add(bArr);
        }
        a(bArr, true);
    }

    void proc_Msg_Result(Message message) throws InterruptedException, SpeechError, UnsupportedEncodingException {
        b();
        com.iflytek.cloud.a.f.b.a aVar = com.iflytek.cloud.a.f.b.a.noResult;
        com.iflytek.cloud.a.f.b.a aVar2 = this.p;
        if (aVar == aVar2) {
            sendMsg(4, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 20);
        } else if (com.iflytek.cloud.a.f.b.a.hasResult == aVar2) {
            sendMsg(4);
        }
    }

    protected void proc_Msg_Session_Begin() throws Exception {
        byte[] bArrB;
        if (this.f12159e.mClientID == null) {
            com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);
            this.f12159e.sessionBegin(this.mContext, this.k, this);
        }
        if (f12157a.booleanValue()) {
            bArrB = "1".equals(getParam().a(SpeechConstant.TEXT_BOM)) ? d.b(this.i) : this.i;
        } else {
            bArrB = "1".equals(getParam().a(SpeechConstant.TEXT_BOM)) ? d.b(this.j) : this.j.getBytes("gb2312");
        }
        this.f12159e.a(bArrB, TextUtils.isEmpty(this.f12162h) ? null : this.f12162h.getBytes("gb2312"));
        setStatus(com.iflytek.cloud.a.f.a.b.recording);
        sendMsg(4, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 20);
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("--->onStart: in");
        if (getParam().a(SpeechConstant.NET_CHECK, true)) {
            j.a(this.mContext);
        }
        int iA = getParam().a("record_read_rate", 40);
        int iA2 = getParam().a(SpeechConstant.AUDIO_SOURCE, 1);
        this.f12158d = iA2;
        if (iA2 != -1 && isRunning()) {
            DebugLog.LogD("[ise]start  record");
            if (this.f12158d == -2) {
                this.f12160f = new com.iflytek.cloud.record.a(getSampleRate(), iA, this.f12158d, getParam().a(SpeechConstant.ISE_SOURCE_PATH));
            } else {
                boolean zA = getParam().a(SpeechConstant.BLUETOOTH, this.r);
                this.r = zA;
                if (zA) {
                    startBluetooth();
                }
                this.f12160f = new PcmRecorder(getSampleRate(), iA, this.f12158d);
            }
            this.f12160f.startRecording(this);
        }
        if (getStatus() != com.iflytek.cloud.a.f.a.b.exiting && this.b != null) {
            this.b.onBeginOfSpeech();
        }
        removeMessages(9);
        int i = this.mSpeechTimeOut;
        if (-1 != i) {
            sendMsg(9, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, i);
        }
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
        DebugLog.LogD("--->onStart: out");
    }

    private void b(boolean z) throws SpeechError, UnsupportedEncodingException {
        this.mStatusBegin = SystemClock.elapsedRealtime();
        if (this.f12159e.getResultData() != null && this.f12159e.getResultData().length > 0) {
            this.n.add(new String(this.f12159e.getResultData(), "utf-8"));
        }
        a(z);
    }

    private void c() {
        if (com.iflytek.cloud.a.f.a.b.recording == getStatus()) {
            DebugLog.LogD("Ise Msc vadEndCall");
            c(false);
            if (this.b != null) {
                this.b.onEndOfSpeech();
            }
        }
    }

    public synchronized void a(byte[] bArr, String str, EvaluatorListener evaluatorListener) {
        f12157a = Boolean.TRUE;
        this.i = bArr;
        this.f12162h = str;
        this.k = getParam().a(SpeechConstant.ISE_USER_MODEL_ID);
        this.b = evaluatorListener;
        DebugLog.LogD("[ise]startListening called 02");
        start();
    }

    public void a(boolean z) throws SpeechError, UnsupportedEncodingException {
        DebugLog.LogD("msc result time:" + System.currentTimeMillis());
        String strA = getParam().a("rse", "gb2312");
        System.out.println("notifyEngineResult encoding=" + strA);
        EvaluatorResult evaluatorResult = new EvaluatorResult(new String(this.f12159e.getResultData(), strA));
        if (this.b != null) {
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
            this.b.onEvent(20001, 0, 0, bundle);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            this.b.onResult(evaluatorResult, z);
        }
        if (z) {
            exit(null);
        }
    }

    private void a(byte[] bArr, boolean z) throws SpeechError {
        this.f12159e.pushAudioData(bArr, bArr.length);
        if (z) {
            if (this.f12159e.getEpStatus() == 3) {
                c();
            } else {
                callbackVolume(bArr, this.f12159e.getAudioVolume());
            }
        }
    }

    public ConcurrentLinkedQueue<byte[]> a() {
        while (true) {
            byte[] bArrPoll = this.m.poll();
            if (bArrPoll != null) {
                this.l.add(bArrPoll);
            } else {
                return this.l;
            }
        }
    }
}
