package com.iflytek.cloud.a.c;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.VerifierListener;
import com.iflytek.cloud.VerifierResult;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.a implements PcmRecorder.PcmRecordListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile VerifierListener f12177a;
    protected long b;
    protected boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected c f12178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected PcmRecorder f12179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f12180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f12181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected VerifierResult f12182h;
    protected ConcurrentLinkedQueue<byte[]> i;
    protected int j;
    private long k;
    private int l;
    private String m;
    private boolean n;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12183a;

        static {
            int[] iArr = new int[com.iflytek.cloud.a.f.b.a.values().length];
            f12183a = iArr;
            try {
                iArr[com.iflytek.cloud.a.f.b.a.noResult.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12183a[com.iflytek.cloud.a.f.b.a.hasResult.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.f12177a = null;
        this.b = 0L;
        this.c = true;
        this.f12178d = new c();
        this.f12179e = null;
        this.f12180f = "train";
        this.f12181g = "";
        this.f12182h = null;
        this.i = null;
        this.j = 1;
        this.k = 0L;
        this.l = 0;
        this.m = null;
        this.n = false;
        this.i = new ConcurrentLinkedQueue<>();
        setParams(aVar);
    }

    private boolean b() {
        return "train".equalsIgnoreCase(getParam().a("sst"));
    }

    private void c() throws SpeechError, UnsupportedEncodingException {
        this.mStatusBegin = SystemClock.elapsedRealtime();
        this.f12182h = new VerifierResult(new String(this.f12178d.getResultData(), "utf-8"));
        if (this.f12177a != null) {
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
            this.f12177a.onEvent(20001, 0, 0, bundle);
        }
        if (this.f12180f.equals("train")) {
            VerifierResult verifierResult = this.f12182h;
            if (verifierResult.ret == 0 && verifierResult.suc < verifierResult.rgn) {
                if (this.f12177a != null) {
                    com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
                    this.f12177a.onResult(this.f12182h);
                }
                sendMsg(0);
                return;
            }
        }
        if (this.f12177a != null) {
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            this.f12177a.onResult(this.f12182h);
        }
        exit(null);
    }

    private void d() throws SpeechError, UnsupportedEncodingException {
        if (a.f12183a[this.f12178d.getStatus().ordinal()] != 2) {
            return;
        }
        c();
    }

    private void proc_Msg_Record_Stoped() throws InterruptedException, SpeechError, IOException {
        DebugLog.LogD("record stop msg in");
        if (!b()) {
            releaseRecord();
        }
        this.f12178d.pushEndFlag();
        sendMsg(4);
        DebugLog.LogD("record stop msg out");
    }

    private void releaseRecord() {
        PcmRecorder pcmRecorder = this.f12179e;
        if (pcmRecorder != null) {
            pcmRecorder.stopRecord(getParam().a("record_force_stop", false));
            this.f12179e = null;
            if (this.n) {
                stopBluetooth();
            }
        }
    }

    public synchronized void a(VerifierListener verifierListener) {
        DebugLog.LogD("Isv Msc startVerify in");
        this.f12177a = verifierListener;
        start();
        DebugLog.LogD("Isv Msc startVerify out");
    }

    public void callbackVolume(byte[] bArr, int i) {
        if (isRunning()) {
            this.f12177a.onVolumeChanged(i, bArr);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        if (z && isRunning() && this.f12177a != null) {
            this.f12177a.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        releaseRecord();
        super.cancel(z);
    }

    public synchronized boolean e() {
        DebugLog.LogD("Isv Msc stopRecord in");
        if (getStatus() != com.iflytek.cloud.a.f.a.b.recording) {
            DebugLog.LogD("endVerify fail  status is :" + getStatus());
            return false;
        }
        if (!b()) {
            releaseRecord();
        }
        sendMsg(3);
        DebugLog.LogD("Isv Msc stopRecord out");
        return true;
    }

    public void f() {
        if (com.iflytek.cloud.a.f.a.b.recording == getStatus()) {
            DebugLog.LogD("Isv Msc vadEndCall");
            e();
            if (this.f12177a != null) {
                this.f12177a.onEndOfSpeech();
            }
        }
    }

    public int getAudioSource() {
        return this.j;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.f12178d.getClientID();
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        if (TextUtils.isEmpty(this.m)) {
            this.m = this.f12178d.getSessionID();
        }
        return this.m;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("isv msc onEnd in");
        releaseRecord();
        getSessionID();
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel) {
            this.f12178d.sessionEnd("user abort");
        } else if (speechError != null) {
            this.f12178d.sessionEnd("error" + speechError.getErrorCode());
        } else {
            this.f12178d.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.f12177a != null && !this.mUserCancel) {
            DebugLog.LogD("VerifyListener#onEnd");
            if (speechError != null) {
                Bundle bundle = new Bundle();
                bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
                this.f12177a.onEvent(20001, 0, 0, bundle);
                this.f12177a.onError(speechError);
            }
        }
        this.f12177a = null;
        DebugLog.LogD("isv msc onEnd out");
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
            f();
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
        this.mSpeechTimeOut = getParam().a(SpeechConstant.KEY_SPEECH_TIMEOUT, this.mSpeechTimeOut);
        this.f12181g = getParam().a(SpeechConstant.ISV_VID);
        this.j = getParam().a(SpeechConstant.AUDIO_SOURCE, 1);
        this.l = (((getParam().a(SpeechConstant.SAMPLE_RATE, this.mSampleRate) / 1000) * 16) / 8) * getParam().a(SpeechConstant.FILTER_AUDIO_TIME, 0);
        DebugLog.LogD("mSpeechTimeOut=" + this.mSpeechTimeOut);
        super.onParseParam();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordBuffer(byte[] bArr, int i, int i2) {
        if (com.iflytek.cloud.a.f.a.b.recording == getStatus() && i2 > 0) {
            int i3 = this.l;
            if (i3 <= 0) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, i, bArr2, 0, i2);
                sendMsg(obtainMessage(2, bArr2));
            } else {
                if (i3 >= i2) {
                    this.l = i3 - i2;
                    return;
                }
                int i4 = i2 - i3;
                byte[] bArr3 = new byte[i4];
                System.arraycopy(bArr, i + i3, bArr3, 0, i4);
                sendMsg(obtainMessage(2, bArr3));
                this.l = 0;
            }
        }
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordReleased() {
        PcmRecorder pcmRecorder = this.f12179e;
        if (pcmRecorder == null || !(pcmRecorder instanceof com.iflytek.cloud.record.a)) {
            return;
        }
        e();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordStarted(boolean z) {
        DebugLog.LogD("time cost: onRecordStarted:" + (SystemClock.elapsedRealtime() - this.k));
    }

    protected void proc_Msg_Record_Data(Message message) throws Exception {
        byte[] bArr = (byte[]) message.obj;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        this.i.add(bArr);
        a(bArr, true);
    }

    void proc_Msg_Result(Message message) throws InterruptedException, SpeechError, UnsupportedEncodingException {
        if (!b()) {
            releaseRecord();
        }
        d();
        if (getStatus() == com.iflytek.cloud.a.f.a.b.waitresult) {
            sendMsg(4, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 20);
        }
    }

    protected void proc_Msg_Session_Begin() throws Exception {
        if (this.f12178d.mClientID == null) {
            com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);
            this.f12178d.sessionBegin(this.mContext, this.f12181g, this);
        }
        setStatus(com.iflytek.cloud.a.f.a.b.recording);
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("isv msc msg start in");
        String strA = getParam().a(SpeechConstant.ENGINE_TYPE);
        boolean zA = getParam().a(SpeechConstant.NET_CHECK, true);
        if (SpeechConstant.TYPE_CLOUD.equals(strA) && zA) {
            j.a(this.mContext);
        }
        int iA = getParam().a("record_read_rate", 40);
        if (this.j != -1 && isRunning()) {
            DebugLog.LogD("[isv]start  record");
            if (this.f12179e == null) {
                boolean zA2 = getParam().a(SpeechConstant.BLUETOOTH, this.n);
                this.n = zA2;
                if (zA2) {
                    startBluetooth();
                }
                PcmRecorder pcmRecorder = new PcmRecorder(getSampleRate(), iA, this.j);
                this.f12179e = pcmRecorder;
                pcmRecorder.startRecording(this);
            }
        }
        if (getStatus() != com.iflytek.cloud.a.f.a.b.exiting && this.f12177a != null) {
            this.f12177a.onBeginOfSpeech();
        }
        this.b = SystemClock.elapsedRealtime();
        removeMessages(9);
        sendMsg(9, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, this.mSpeechTimeOut);
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
        DebugLog.LogD("isv msc msg start out");
    }

    protected void a(byte[] bArr, boolean z) throws SpeechError {
        this.f12178d.pushAudioData(bArr, bArr.length);
        if (z) {
            if (this.f12178d.a()) {
                f();
            } else {
                callbackVolume(bArr, this.f12178d.getAudioVolume());
            }
        }
    }

    public ConcurrentLinkedQueue<byte[]> a() {
        return this.i;
    }
}
