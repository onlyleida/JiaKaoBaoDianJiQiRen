package com.iflytek.cloud.a.d;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import cn.mucang.sundial.android.tcp.Constant;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.WakeuperListener;
import com.iflytek.cloud.WakeuperResult;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import com.iflytek.cloud.util.VolumeUtil;
import com.iflytek.msc.MSC;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c extends com.iflytek.cloud.a.f.a implements PcmRecorder.PcmRecordListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12188a;
    protected volatile WakeuperListener b;
    protected boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f12189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.iflytek.cloud.a.d.b f12190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected PcmRecorder f12191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ArrayList<String> f12192g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12193h;
    public boolean i;
    protected final ConcurrentLinkedQueue<byte[]> j;
    protected final int k;
    protected String l;
    protected int m;
    protected int n;
    protected boolean o;
    protected final int p;
    protected int q;
    protected long r;
    protected long s;
    protected long t;
    protected final int u;
    protected int v;
    private boolean w;
    private int x;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12194a;

        static {
            int[] iArr = new int[b.values().length];
            f12194a = iArr;
            try {
                iArr[b.IVW_MSG_WAKEUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12194a[b.IVW_MSG_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12194a[b.IVW_MSG_ISR_RESULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12194a[b.IVW_MSG_ISR_EPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12194a[b.IVW_MSG_VOLUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12194a[b.IVW_MSG_ENROLL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        undefined_0,
        IVW_MSG_WAKEUP,
        IVW_MSG_ERROR,
        IVW_MSG_ISR_RESULT,
        IVW_MSG_ISR_EPS,
        IVW_MSG_VOLUME,
        IVW_MSG_ENROLL,
        IVW_MSG_RESET
    }

    public c(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.b = null;
        this.c = false;
        this.f12189d = 1;
        this.f12190e = new com.iflytek.cloud.a.d.b();
        this.f12191f = null;
        this.f12192g = null;
        this.f12193h = false;
        this.i = false;
        this.j = new ConcurrentLinkedQueue<>();
        this.k = Constant.ONE_MINUTE;
        this.l = null;
        this.m = 0;
        this.n = 0;
        this.o = false;
        this.p = 2000;
        this.q = 0;
        this.r = 0L;
        this.s = 0L;
        this.t = 0L;
        this.u = 100;
        this.v = 0;
        this.w = false;
        this.x = 0;
        this.c = false;
        setParams(aVar);
        this.f12192g = new ArrayList<>();
    }

    private void proc_Msg_Record_Stoped() throws InterruptedException, SpeechError, IOException {
        DebugLog.LogD("recording stop");
        if (!this.f12188a.equals("enroll")) {
            releaseRecord();
        }
        this.f12190e.pushEndFlag();
    }

    private void releaseRecord() {
        PcmRecorder pcmRecorder = this.f12191f;
        if (pcmRecorder != null) {
            pcmRecorder.stopRecord(getParam().a("record_force_stop", false));
            this.f12191f = null;
            if (this.w) {
                stopBluetooth();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    int MsgProcCallBack(char[] cArr, int i, int i2, int i3, byte[] bArr) {
        DebugLog.LogD("cur rec buf: " + this.s + ", cur sync auw size: " + this.r + ", cur writen size: " + this.t);
        if (bArr != null) {
            DebugLog.LogD("MscWakeuper", "msg:" + i + "param1:" + i2 + "param2:" + i3 + "result:" + new String(bArr));
        } else {
            DebugLog.LogD("MscWakeuper", "msg:" + i + "param1:" + i2 + "param2:" + i3 + "result:null");
        }
        b bVar = null;
        try {
            bVar = b.values()[i];
        } catch (Throwable th) {
            DebugLog.LogE("unmatched ivw message!");
            DebugLog.LogE(th);
        }
        if (bVar != null) {
            switch (a.f12194a[bVar.ordinal()]) {
                case 1:
                    this.f12193h = true;
                    Message messageObtainMessage = (this.i || this.f12188a.equals("oneshot")) ? obtainMessage(4, 0, 0, bArr) : obtainMessage(4, 5, 0, bArr);
                    if (!hasMessages(4)) {
                        sendMsg(messageObtainMessage, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    } else {
                        sendMsg(messageObtainMessage, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 0);
                    }
                    break;
                case 2:
                    onError(new SpeechError(i2));
                    break;
                case 3:
                    Message messageObtainMessage2 = obtainMessage(4, i2, 1, bArr);
                    if (!hasMessages(4)) {
                        sendMsg(messageObtainMessage2, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    } else {
                        sendMsg(messageObtainMessage2, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, 0);
                    }
                    break;
                case 4:
                    if (i2 == 3) {
                        b();
                    }
                    break;
                case 5:
                    try {
                        if (this.b != null) {
                            this.b.onVolumeChanged(i2);
                        }
                    } catch (Exception unused) {
                    }
                    break;
                case 6:
                    sendMsg(obtainMessage(4, 0, 2, bArr), com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    break;
            }
        }
        return 0;
    }

    public synchronized void a(WakeuperListener wakeuperListener) {
        this.b = wakeuperListener;
        DebugLog.LogD("[ivw]startListening called");
        start();
    }

    public void b() {
        if (com.iflytek.cloud.a.f.a.b.recording == getStatus()) {
            DebugLog.LogD("ivw msc vadEndCall");
            a(false);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    public void cancel(boolean z) {
        if (z && isRunning() && this.b != null) {
            this.b.onError(new SpeechError(ErrorCode.ERROR_INTERRUPT));
        }
        DebugLog.LogD("cancel");
        releaseRecord();
        if (getStatus() == com.iflytek.cloud.a.f.a.b.recording) {
            this.c = true;
        }
        super.cancel(z);
    }

    public int getAudioSource() {
        return this.f12189d;
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.f12190e.getClientID();
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        return null;
    }

    @Override // com.iflytek.cloud.a.f.a
    public boolean isLongInput() {
        return false;
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("onSessionEnd");
        releaseRecord();
        if (!TextUtils.isEmpty(this.l)) {
            if (FileUtil.saveFile(this.j, this.l)) {
                FileUtil.formatPcm(getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null), this.l, getSampleRate());
                DebugLog.LogD("save ivw audio succeed: " + this.l);
            } else {
                DebugLog.LogE("save ivw audio failed: " + this.l);
            }
        }
        if (this.f12188a.equals("oneshot") && this.f12193h && this.f12192g.size() <= 0 && speechError == null && getParam().a(SpeechConstant.ASR_NOMATCH_ERROR, true)) {
            speechError = new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        if (this.mUserCancel) {
            this.f12190e.sessionEnd("user abort");
        } else if (speechError != null) {
            this.f12190e.sessionEnd("error" + speechError.getErrorCode());
        } else {
            this.f12190e.sessionEnd("success");
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        super.onEnd(speechError);
        if (this.b != null) {
            if (this.mUserCancel) {
                DebugLog.LogD("WakeuperListener#onCancel");
            } else {
                DebugLog.LogD("WakeuperListener#onEnd");
                if (speechError != null) {
                    this.b.onError(speechError);
                }
            }
        }
        this.b = null;
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
        this.f12188a = getParam().a("sst", "wakeup");
        this.i = getParam().a(SpeechConstant.KEEP_ALIVE, false);
        this.f12189d = getParam().a(SpeechConstant.AUDIO_SOURCE, 1);
        int iA = com.iflytek.cloud.msc.util.b.a(this.mContext).a("ivw_netval", 20);
        getParam().a("ivw_netval", iA + "", false);
        super.onParseParam();
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordBuffer(byte[] bArr, int i, int i2) {
        if (bArr == null || i2 <= 0 || i2 <= 0 || !isRunning()) {
            return;
        }
        this.s += (long) i2;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        if (this.b != null) {
            this.b.onVolumeChanged(a(bArr));
        }
        sendMsg(obtainMessage(2, bArr2));
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordReleased() {
    }

    @Override // com.iflytek.cloud.record.PcmRecorder.PcmRecordListener
    public void onRecordStarted(boolean z) {
    }

    protected void proc_Msg_Record_Data(Message message) throws Throwable {
        byte[] bArr = (byte[]) message.obj;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        a(bArr, true);
        this.t += (long) bArr.length;
        long j = this.r;
        long j2 = this.s;
        if (j < j2) {
            this.r = j + ((long) bArr.length);
        }
        int i = this.v + 1;
        this.v = i;
        if (j2 - this.r >= this.q) {
            DebugLog.LogW("cur rec buf: " + this.s + ", cur sync auw size: " + this.r + ", cur writen size: " + this.t + ", diff match max buf size: " + this.q + ", cur bufs in msg will be ignored!");
            this.r = this.s;
            removeMessages(2);
            System.gc();
        } else if (100 <= i) {
            this.v = 0;
            DebugLog.LogD("cur rec buf: " + this.s + ", cur sync auw size: " + this.r + ", cur writen size: " + this.t);
        }
        if (this.m > 0) {
            while (this.m < this.n) {
                byte[] bArrPoll = this.j.poll();
                this.n -= bArrPoll != null ? bArrPoll.length : 0;
            }
            this.j.add(bArr);
            this.n += bArr.length;
        }
        if (this.o) {
            Bundle bundle = new Bundle();
            bundle.putByteArray("data", bArr);
            this.b.onEvent(21003, 0, 0, bundle);
        }
    }

    void proc_Msg_Result(Message message) throws InterruptedException, SpeechError, UnsupportedEncodingException {
        int i = message.arg1;
        byte[] bArr = (byte[]) message.obj;
        if (i == 0) {
            a(false, bArr, message.arg2, message.getData());
        } else {
            if (i == 2) {
                throw new SpeechError(ErrorCode.ERROR_FILE_ACCESS);
            }
            if (i != 5) {
                return;
            }
            a(true, bArr, message.arg2, message.getData());
        }
    }

    protected void proc_Msg_Session_Begin() throws Throwable {
        if (this.f12190e.mClientID == null) {
            com.iflytek.cloud.msc.util.log.a.a("SDKSessionBegin", null);
            int iSessionBegin = this.f12190e.sessionBegin(this.mContext, this.f12188a, this);
            if (iSessionBegin == 0 && this.f12190e.mClientID != null) {
                if (isRunning()) {
                    MSC.QIVWRegisterNotify(this.f12190e.mClientID, "MsgProcCallBack", this);
                    setStatus(com.iflytek.cloud.a.f.a.b.recording);
                    return;
                }
                return;
            }
            if (iSessionBegin == 0) {
                DebugLog.LogE("current csid: " + this.f12190e.mSessionID);
                throw new SpeechError(ErrorCode.ERROR_UNKNOWN);
            }
            int i = this.x + 1;
            this.x = i;
            if (i > 40) {
                throw new SpeechError(iSessionBegin);
            }
            if (isRunning()) {
                Thread.sleep(15L);
                sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
            }
        }
    }

    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("[ivw]start connecting");
        this.f12193h = false;
        int iA = getParam().a("record_read_rate", 40);
        this.o = getParam().a(SpeechConstant.NOTIFY_RECORD_DATA, this.o);
        if (this.f12189d == -1 || !isRunning()) {
            this.m = 0;
        } else {
            String strA = getParam().a(SpeechConstant.IVW_AUDIO_PATH);
            this.l = strA;
            if (!TextUtils.isEmpty(strA)) {
                this.m = ((getSampleRate() * Constant.ONE_MINUTE) / 1000) * 2;
            }
            DebugLog.LogD("[ivw]start  record");
            if (this.f12191f == null) {
                boolean zA = getParam().a(SpeechConstant.BLUETOOTH, this.w);
                this.w = zA;
                if (zA) {
                    startBluetooth();
                }
                PcmRecorder pcmRecorder = new PcmRecorder(getSampleRate(), iA, this.f12189d);
                this.f12191f = pcmRecorder;
                pcmRecorder.startRecording(this);
            }
        }
        this.q = ((getSampleRate() * 2000) / 1000) * 2;
        DebugLog.LogD("max saved buf byte: " + this.m + ", max auw buf byte: " + this.q);
        if (getStatus() != com.iflytek.cloud.a.f.a.b.exiting && this.b != null) {
            this.b.onBeginOfSpeech();
        }
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
    }

    public synchronized boolean a(boolean z) {
        DebugLog.LogD("stopListening, current status is :" + getStatus() + " usercancel : " + z);
        if (this.f12188a.equals("enroll")) {
            this.c = z;
            sendMsg(3);
        } else if (this.f12188a.equals("oneshot") && this.f12193h) {
            releaseRecord();
            this.c = z;
            sendMsg(3);
        } else {
            cancel(false);
        }
        return true;
    }

    private void a(boolean z, byte[] bArr, int i, Bundle bundle) throws SpeechError, UnsupportedEncodingException {
        String str;
        boolean z2 = true;
        if (i == 1) {
            if (bArr != null && bArr.length > 0) {
                str = new String(bArr, getResultEncoding());
            } else {
                if (this.f12192g.size() <= 0) {
                    String strA = getParam().a(SpeechConstant.LOCAL_GRAMMAR);
                    if (!TextUtils.isEmpty(strA) && !"sms.irf".equals(strA)) {
                        throw new SpeechError(ErrorCode.ERROR_NO_MATCH);
                    }
                    throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
                }
                str = "";
            }
            this.f12192g.add(str);
            if (this.b != null && isRunning()) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable(SpeechEvent.KEY_EVENT_IVW_RESULT, new RecognizerResult(str));
                this.b.onEvent(22001, z ? 1 : 0, 0, bundle2);
            }
            DebugLog.LogD("msc result time:" + System.currentTimeMillis());
        } else if (i == 0) {
            if (bArr != null && bArr.length > 0) {
                String str2 = new String(bArr, "utf-8");
                if (this.b != null && isRunning()) {
                    WakeuperResult wakeuperResult = new WakeuperResult(str2, bundle != null ? bundle.getByteArray("ivw_audio") : null);
                    com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
                    this.b.onResult(wakeuperResult);
                }
            } else {
                throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
            }
        } else if (i == 2) {
            if (bArr != null && bArr.length > 0) {
                String str3 = new String(bArr, "utf-8");
                if (this.f12188a.equals("enroll")) {
                    if (this.b != null) {
                        this.b.onResult(new WakeuperResult(str3));
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(str3);
                        if (jSONObject.getInt("suc_times") != jSONObject.getInt("total_times")) {
                            sendMsg(0);
                            z2 = false;
                        }
                    } catch (Exception unused) {
                        throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
                    }
                } else {
                    z2 = false;
                }
                if (this.b != null && isRunning()) {
                    this.b.onResult(new WakeuperResult(str3));
                    if (z2) {
                        exit(null);
                    }
                }
            } else {
                throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
            }
        }
        if (z) {
            exit(null);
        }
    }

    protected void a(byte[] bArr, boolean z) throws SpeechError {
        this.f12190e.pushAudioData(bArr, bArr.length);
    }

    public int a(byte[] bArr, int i, int i2) {
        onRecordBuffer(bArr, i, i2);
        return 0;
    }

    public WakeuperListener a() {
        return this.b;
    }

    private int a(byte[] bArr) {
        return VolumeUtil.computeVolume(bArr, bArr.length);
    }
}
