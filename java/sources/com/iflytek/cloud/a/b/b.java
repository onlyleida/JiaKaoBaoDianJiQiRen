package com.iflytek.cloud.a.b;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.RecognizerListener;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import com.iflytek.msc.MSC;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.a implements PcmRecorder.PcmRecordListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12168a;
    public static int b;
    protected volatile RecognizerListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f12169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f12170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f12171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f12172g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f12173h;
    protected boolean i;
    protected a j;
    protected PcmRecorder k;
    protected String l;
    protected ConcurrentLinkedQueue<byte[]> m;
    protected ArrayList<String> n;
    protected com.iflytek.cloud.a.f.c o;
    protected int p;
    private boolean q;
    private String r;
    private boolean s;
    private int t;

    public b(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.c = null;
        this.f12169d = false;
        this.f12170e = false;
        this.f12171f = false;
        this.f12172g = false;
        this.f12173h = 1;
        this.i = true;
        this.j = new a();
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = new com.iflytek.cloud.a.f.c();
        this.p = 0;
        this.q = false;
        this.r = null;
        this.s = false;
        this.t = 0;
        this.m = new ConcurrentLinkedQueue<>();
        this.n = new ArrayList<>();
        this.f12172g = false;
        setParams(aVar);
    }

    private void notifyResult(boolean z, byte[] bArr) throws SpeechError, UnsupportedEncodingException {
        String str;
        this.mStatusBegin = SystemClock.elapsedRealtime();
        if (bArr == null || bArr.length <= 0) {
            if (this.n.size() <= 0) {
                String strA = getParam().a(SpeechConstant.LOCAL_GRAMMAR);
                if (!TextUtils.isEmpty(strA) && !"sms.irf".equals(strA)) {
                    throw new SpeechError(ErrorCode.ERROR_NO_MATCH);
                }
                if (getParam().a(SpeechConstant.ASR_NOMATCH_ERROR, true)) {
                    throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
                }
            }
            str = "";
        } else {
            str = new String(bArr, "utf-8");
        }
        this.n.add(str);
        if (this.c != null && isRunning()) {
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
            this.c.onEvent(20001, 0, 0, bundle);
            DebugLog.LogD(z + "  anddjsun  " + getParam().a("request_audio_url", false));
            if (z && getParam().a("request_audio_url", false)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("audio_url", this.j.getAudioUrl());
                this.c.onEvent(23001, 0, 0, bundle2);
            }
            RecognizerResult recognizerResult = new RecognizerResult(str);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            this.c.onResult(recognizerResult, z);
        }
        DebugLog.LogD("msc result time:" + System.currentTimeMillis());
        if (z) {
            exit(null);
        }
    }

    public ConcurrentLinkedQueue<byte[]> a() {
        return this.m;
    }

    public void b() {
        if (com.iflytek.cloud.a.f.a.b.recording == getStatus()) {
            DebugLog.LogD("isr recognize vadEndCall");
            if (this.c != null) {
                this.c.onEndOfSpeech();
            }
            a(false);
        }
    }

    public void callbackVolume(byte[] bArr, int i) {
        if (this.c == null || !isRunning()) {
            return;
        }
        this.c.onVolumeChanged(i, bArr);
        if (this.q) {
            Bundle bundle = new Bundle();
            bundle.putByteArray("data", bArr);
            this.c.onEvent(21003, i, 0, bundle);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        if (z && isRunning() && this.c != null) {
            this.c.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        releaseRecord();
        if (getStatus() == com.iflytek.cloud.a.f.a.b.recording) {
            this.f12172g = true;
        }
        super.cancel(z);
    }

    void errCb(char[] cArr, int i, byte[] bArr) {
        onError(new SpeechError(i));
    }

    public int getAudioSource() {
        return this.f12173h;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.j.getClientID();
    }

    public com.iflytek.cloud.a.f.c getPerfLog() {
        return this.o;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        if (TextUtils.isEmpty(this.r)) {
            this.r = this.j.getSessionID();
        }
        return this.r;
    }

    @Override // com.iflytek.cloud.a.f.a
    public boolean isLongInput() {
        return this.i;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("onSessionEnd");
        releaseRecord();
        f12168a = this.j.getIntValue(com.iflytek.cloud.a.f.a.TAG_UPFLOW);
        b = this.j.getIntValue(com.iflytek.cloud.a.f.a.TAG_DOWNFLOW);
        getSessionID();
        if (this.n.size() <= 0 && speechError == null && getParam().a(SpeechConstant.ASR_NOMATCH_ERROR, true)) {
            speechError = new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
        }
        if (speechError != null) {
            this.o.a("app_ret", speechError.getErrorCode(), false);
        } else {
            this.o.a("app_ret", 0L, false);
        }
        this.o.a("rec_ustop", this.f12172g ? "1" : "0", false);
        this.j.setParam("sessinfo", this.o.a());
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel) {
            this.j.sessionEnd("user abort");
        } else if (speechError != null) {
            this.j.sessionEnd("error" + speechError.getErrorCode());
        } else {
            this.j.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.c != null) {
            if (this.mUserCancel) {
                DebugLog.LogD("RecognizerListener#onCancel");
            } else {
                DebugLog.LogD("RecognizerListener#onEnd");
                if (speechError != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, getSessionID());
                    this.c.onEvent(20001, 0, 0, bundle);
                    this.c.onError(speechError);
                }
            }
        }
        this.c = null;
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onError(SpeechError speechError) {
        exit(speechError);
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
            proc_Msg_Record_Stoped();
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
        this.l = getParam().a(SpeechConstant.CLOUD_GRAMMAR);
        this.f12173h = getParam().a(SpeechConstant.AUDIO_SOURCE, 1);
        this.i = com.iflytek.cloud.b.c.a(getParam().a(SpeechConstant.DOMAIN));
        this.p = (((getParam().a(SpeechConstant.SAMPLE_RATE, this.mSampleRate) / 1000) * 16) / 8) * getParam().a(SpeechConstant.FILTER_AUDIO_TIME, 0);
        this.mSpeechTimeOut = getParam().a(SpeechConstant.KEY_SPEECH_TIMEOUT, this.mSpeechTimeOut);
        this.q = getParam().a(SpeechConstant.NOTIFY_RECORD_DATA, false);
        DebugLog.LogD("mSpeechTimeOut=" + this.mSpeechTimeOut);
        super.onParseParam();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordBuffer(byte[] bArr, int i, int i2) {
        if (bArr == null || i2 <= 0 || bArr.length < i2 || i2 <= 0 || !isRunning()) {
            return;
        }
        if (!this.f12169d) {
            this.f12169d = true;
            this.o.a("rec_start");
        }
        int i3 = this.p;
        if (i3 <= 0) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            sendMsg(obtainMessage(2, bArr2));
        } else {
            if (i3 >= i2) {
                this.p = i3 - i2;
                return;
            }
            int i4 = i2 - i3;
            byte[] bArr3 = new byte[i4];
            System.arraycopy(bArr, i + i3, bArr3, 0, i4);
            sendMsg(obtainMessage(2, bArr3));
            this.p = 0;
        }
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordReleased() {
        PcmRecorder pcmRecorder = this.k;
        if (pcmRecorder == null || !(pcmRecorder instanceof com.iflytek.cloud.record.a)) {
            return;
        }
        a(true);
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordStarted(boolean z) {
        this.o.a("rec_ready");
    }

    public void proc_Msg_Netperf() {
        if (isRunning()) {
            int intValue = this.j.getIntValue(com.iflytek.cloud.a.f.a.TAG_NETPERF);
            if (this.c != null) {
                this.c.onEvent(10001, intValue, 0, null);
            }
            sendMsg(7, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 100);
        }
    }

    protected void proc_Msg_Record_Data(Message message) throws Exception {
        byte[] bArr = (byte[]) message.obj;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        this.m.add(bArr);
        a(bArr, true);
    }

    protected void proc_Msg_Record_Stoped() throws InterruptedException, SpeechError, IOException {
        DebugLog.LogD("recording stop");
        releaseRecord();
        this.o.a("app_lau");
        this.j.pushEndFlag();
        updateTimeoutMsg();
    }

    void proc_Msg_Result(Message message) throws InterruptedException, SpeechError, UnsupportedEncodingException {
        int i = message.arg1;
        byte[] bArr = (byte[]) message.obj;
        if (i == 0) {
            if (!this.f12171f) {
                this.f12171f = true;
                this.o.a("app_frs");
            }
            notifyResult(false, bArr);
            return;
        }
        if (i != 5) {
            return;
        }
        if (!this.f12171f) {
            this.f12171f = true;
            this.o.a("app_frs");
        }
        this.o.a("app_lrs");
        notifyResult(true, bArr);
    }

    protected void proc_Msg_Session_Begin() throws Exception {
        com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);
        int iSessionBegin = this.j.sessionBegin(this.mContext, this.l, this);
        if (iSessionBegin == 0 && this.j.mClientID != null) {
            if (isRunning()) {
                MSC.QISRRegisterNotify(this.j.mClientID, "rsltCb", "stusCb", "errCb", this);
                setStatus(com.iflytek.cloud.a.f.a.b.recording);
                if (getParam().a(SpeechConstant.ASR_NET_PERF, false)) {
                    sendMsg(7, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    return;
                }
                return;
            }
            return;
        }
        int i = this.t + 1;
        this.t = i;
        if (i > 40) {
            throw new SpeechError(iSessionBegin);
        }
        if (isRunning()) {
            Thread.sleep(15L);
            sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
        }
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("[isr]start connecting");
        String strA = getParam().a(SpeechConstant.ENGINE_TYPE);
        if (getParam().a(SpeechConstant.NET_CHECK, true)) {
            if (SpeechConstant.TYPE_CLOUD.equals(strA)) {
                j.a(this.mContext);
            } else if (SpeechConstant.TYPE_MIX.equals(strA) || SpeechConstant.TYPE_MIX.equals(strA)) {
                try {
                    j.a(this.mContext);
                } catch (Exception unused) {
                    getParam().b(SpeechConstant.ENGINE_TYPE, "local");
                }
            }
        }
        int iA = getParam().a("record_read_rate", 40);
        if (this.f12173h != -1 && isRunning()) {
            DebugLog.LogD("[isr]start  record");
            if (this.f12173h == -2) {
                this.k = new com.iflytek.cloud.record.a(getSampleRate(), iA, this.f12173h, getParam().a(SpeechConstant.ASR_SOURCE_PATH));
            } else {
                boolean zA = getParam().a(SpeechConstant.BLUETOOTH, this.s);
                this.s = zA;
                if (zA) {
                    startBluetooth();
                }
                this.k = new PcmRecorder(getSampleRate(), iA, this.f12173h);
                if (hasMessages(3)) {
                    throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
                }
            }
            this.o.a("rec_open");
            this.k.startRecording(this);
            int i = this.mSpeechTimeOut;
            if (-1 != i) {
                sendMsg(9, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, i);
            }
        }
        if (this.c != null && this.f12173h > -1) {
            this.c.onBeginOfSpeech();
        }
        this.o.a("app_ssb");
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
    }

    protected void releaseRecord() {
        PcmRecorder pcmRecorder = this.k;
        if (pcmRecorder != null) {
            pcmRecorder.stopRecord(getParam().a("record_force_stop", false));
            this.k = null;
            this.o.a("rec_close");
            if (this.c != null) {
                this.c.onEvent(22003, 0, 0, null);
            }
            if (this.s) {
                stopBluetooth();
            }
        }
    }

    void rsltCb(char[] cArr, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            DebugLog.LogD("MscRecognizer", "rsltCb:" + i2 + "result:" + new String(bArr));
        } else {
            DebugLog.LogI("MscRecognizer", "rsltCb:" + i2 + "result:null");
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
        this.o.a(getParam());
        super.start();
    }

    void stusCb(char[] cArr, int i, int i2, int i3, byte[] bArr) {
        if (i == 0 && i2 == 3) {
            DebugLog.LogD("MscRecognizer", "stusCb:" + i2 + ",type:" + i);
            b();
        }
    }

    public synchronized void a(RecognizerListener recognizerListener) {
        this.c = recognizerListener;
        DebugLog.LogD("[isr]startListening called");
        start();
    }

    public synchronized boolean a(boolean z) {
        DebugLog.LogD("stopRecognize, current status is :" + getStatus() + " usercancel : " + z);
        this.o.a("app_stop");
        releaseRecord();
        this.f12172g = z;
        sendMsg(3);
        return true;
    }

    protected void a(byte[] bArr, boolean z) throws SpeechError {
        if (!this.f12170e) {
            this.f12170e = true;
            this.o.a("app_fau");
            if (this.c != null) {
                this.c.onEvent(22002, 0, 0, null);
            }
        }
        this.j.pushAudioData(bArr, bArr.length);
        if (z) {
            int audioVolume = this.j.getAudioVolume();
            DebugLog.LogI("QISRAudioWrite volume:" + audioVolume);
            callbackVolume(bArr, audioVolume);
        }
    }

    public int a(byte[] bArr, int i, int i2) {
        onRecordBuffer(bArr, i, i2);
        return 0;
    }
}
