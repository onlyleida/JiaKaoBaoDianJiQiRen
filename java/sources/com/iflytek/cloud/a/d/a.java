package com.iflytek.cloud.a.d;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.Setting;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import com.tencent.open.SocialConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a extends c implements com.iflytek.cloud.a.d.e.a.b, com.iflytek.cloud.a.d.e.a.InterfaceC0228a {
    private final int A;
    private final String B;
    private final String C;
    private final String D;
    private final String E;
    private final String F;
    private int G;
    private com.iflytek.cloud.a.d.e.a H;
    private final int I;
    private final String y;
    private final int z;

    /* JADX INFO: renamed from: com.iflytek.cloud.a.d.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0227a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12186a;

        static {
            int[] iArr = new int[c.b.values().length];
            f12186a = iArr;
            try {
                iArr[c.b.IVW_MSG_WAKEUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12186a[c.b.IVW_MSG_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12186a[c.b.IVW_MSG_ISR_RESULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12186a[c.b.IVW_MSG_ISR_EPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12186a[c.b.IVW_MSG_VOLUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12186a[c.b.IVW_MSG_ENROLL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12186a[c.b.IVW_MSG_RESET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public a(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, aVar, handlerThread);
        this.y = "ivw_caller";
        this.z = 22;
        this.A = 23;
        this.B = "sid";
        this.C = SocialConstants.PARAM_SEND_MSG;
        this.D = "arg1";
        this.E = "arg2";
        this.F = SpeechUtility.TAG_RESOURCE_RESULT;
        this.G = 0;
        this.H = null;
        this.I = 0;
        this.G = getParam().a(SpeechConstant.IVW_CHANNEL_NUM, 0);
        getParam().a("ivw_caller", "1", false);
        com.iflytek.cloud.a.d.e.a aVarB = com.iflytek.cloud.a.d.e.a.b();
        this.H = aVarB;
        if (aVarB == null) {
            this.H = com.iflytek.cloud.a.d.e.a.a(getParam().e("aimic_init_param"));
        }
        com.iflytek.cloud.a.d.e.a aVar2 = this.H;
        if (aVar2 != null) {
            aVar2.a((com.iflytek.cloud.a.d.e.a.b) this);
            this.H.a((com.iflytek.cloud.a.d.e.a.InterfaceC0228a) this);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(Message message) throws Throwable {
        SpeechError speechError;
        c.b bVar;
        DebugLog.LogD("proc_Wakeup_Angle enter");
        if (this.b != null) {
            Bundle bundlePeekData = message.peekData();
            int i = bundlePeekData.getInt(SocialConstants.PARAM_SEND_MSG);
            try {
                bVar = c.b.values()[i];
            } catch (Throwable unused) {
                DebugLog.LogE("warn: unmatched ivw message: " + i);
                bVar = c.b.undefined_0;
            }
            int i2 = bundlePeekData.getInt("arg1");
            switch (C0227a.f12186a[bVar.ordinal()]) {
                case 1:
                    a(bundlePeekData);
                    speechError = null;
                    break;
                case 2:
                    speechError = new SpeechError(i2);
                    break;
                case 3:
                    sendMsg(obtainMessage(4, i2, 1, bundlePeekData.getByteArray(SpeechUtility.TAG_RESOURCE_RESULT)), hasMessages(4) ? com.iflytek.cloud.a.f.a.EnumC0232a.normal : com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    speechError = null;
                    break;
                case 4:
                    if (com.iflytek.cloud.b.b.a.VAD_EOS.ordinal() == i2) {
                        b();
                    }
                    speechError = null;
                    break;
                case 5:
                    if (this.b != null) {
                        this.b.onVolumeChanged(i2);
                    }
                    speechError = null;
                    break;
                case 6:
                    sendMsg(obtainMessage(4, 0, 2, bundlePeekData.getByteArray(SpeechUtility.TAG_RESOURCE_RESULT)), com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
                    speechError = null;
                    break;
                case 7:
                    DebugLog.LogD("proc_Wakeup_Msg reset msg");
                    speechError = null;
                    break;
                default:
                    speechError = null;
                    break;
            }
        } else {
            DebugLog.LogE("proc_Wakeup_Angle error: listener is null");
            speechError = new SpeechError(ErrorCode.ERROR_UNKNOWN);
        }
        if (speechError == null) {
            return;
        }
        DebugLog.LogE("wakeup msg error: " + speechError.getErrorCode());
        throw speechError;
    }

    private void b(SpeechError speechError) {
        exit(speechError);
    }

    private void c() throws Throwable {
        if (this.G <= 0) {
            DebugLog.LogE("Channel number " + this.G + " is less than 1 !");
            throw new SpeechError(ErrorCode.ERROR_INVALID_PARAM);
        }
        com.iflytek.cloud.a.d.e.a aVar = this.H;
        if (aVar == null) {
            DebugLog.LogE("create AIMIC failed!");
            throw new SpeechError(21003);
        }
        aVar.a(Setting.getShowLog(), Setting.getLogLevel().ordinal());
        int iE = this.H.e();
        HashMap<String, String> mapC = getParam().c();
        DebugLog.LogD("AIMicBegin param count: " + mapC.size());
        int i = 0;
        Iterator<Map.Entry<String, String>> it = mapC.entrySet().iterator();
        while (it.hasNext() && iE == 0) {
            Map.Entry<String, String> next = it.next();
            if (next.getKey().startsWith("aimic_ssb_")) {
                iE = this.H.a(next.getKey().substring(10), next.getValue());
                it.remove();
            }
            i++;
        }
        DebugLog.LogD("AIMicBegin for count: " + i);
        if (iE == 0) {
            iE = this.H.a("ivw_thread_num", Integer.toString(this.G));
        }
        if (iE == 0) {
            iE = this.H.a("ivw_ssb", com.iflytek.cloud.b.c.c(this.mContext, this.f12188a, this));
        }
        if (iE == 0) {
            return;
        }
        DebugLog.LogE("aimic init error: " + iE);
        throw new SpeechError(iE);
    }

    private void d() throws Throwable {
        if (!isRunning()) {
            DebugLog.LogD("It's not running while start aimic listening!");
            return;
        }
        e();
        if (getStatus() == com.iflytek.cloud.a.f.a.b.exiting || this.b == null) {
            return;
        }
        this.b.onBeginOfSpeech();
    }

    private void e() throws SpeechError {
        String strE = getParam().e("alsa_card");
        int iA = !TextUtils.isEmpty(strE) ? this.H.a("alsa_card", strE) : 0;
        String strE2 = getParam().e("alsa_rate");
        if (iA == 0 && !TextUtils.isEmpty(strE2)) {
            iA = this.H.a("alsa_rate", strE2);
        }
        String strE3 = getParam().e("alsa_save");
        if (iA == 0 && !TextUtils.isEmpty(strE3)) {
            iA = this.H.a("alsa_save", strE3);
        }
        if (iA == 0) {
            iA = this.H.a(SpeechConstant.AUDIO_SOURCE, Integer.toString(-3 != this.f12189d ? -1 : -3));
        }
        if (iA == 0) {
            iA = this.H.f();
        }
        if (iA == 0) {
            return;
        }
        DebugLog.LogE("start aimic listening failed: " + iA);
        throw new SpeechError(iA);
    }

    @Override // com.iflytek.cloud.a.d.c, com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        DebugLog.LogD("Aimic Wakeuper onEnd enter");
        super.onEnd(a(speechError));
    }

    @Override // com.iflytek.cloud.a.d.e.a.b, com.iflytek.cloud.a.d.e.a.InterfaceC0228a
    public void onError(int i) {
        onError(new SpeechError(i));
    }

    @Override // com.iflytek.cloud.a.d.c, com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Exception {
        super.onMsgProcess(message);
        int i = message.what;
        if (i == 22) {
            a(message);
        } else {
            if (i != 23) {
                return;
            }
            d();
        }
    }

    @Override // com.iflytek.cloud.a.d.e.a.InterfaceC0228a
    public void onRecogAudio(byte[] bArr, int i, int i2, Object obj) {
        try {
            Bundle bundle = new Bundle();
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            bundle.putByteArray("data", bArr2);
            this.b.onEvent(21003, 0, 0, bundle);
        } catch (Throwable th) {
            DebugLog.LogE(th);
            onError(new SpeechError(th, ErrorCode.ERROR_UNKNOWN));
        }
    }

    @Override // com.iflytek.cloud.a.d.e.a.b
    public void onWakeupAudio(byte[] bArr, int i, int i2, Object obj) {
    }

    @Override // com.iflytek.cloud.a.d.e.a.b
    public void onWakeupMsg(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5, byte[] bArr3, int i6) {
        try {
            Bundle bundle = new Bundle();
            byte[] bArr4 = null;
            if (c.b.IVW_MSG_WAKEUP.ordinal() == i) {
                bArr4 = new byte[i6];
                System.arraycopy(bArr3, 0, bArr4, 0, i6);
                DebugLog.LogD("onWakeupMsg audio length:" + i6);
            }
            bundle.putByteArray("ivw_audio", bArr4);
            if (bArr != null) {
                byte[] bArr5 = new byte[i4];
                System.arraycopy(bArr, 0, bArr5, 0, i4);
                bundle.putByteArray("sid", bArr5);
            }
            if (bArr2 != null) {
                byte[] bArr6 = new byte[i5];
                System.arraycopy(bArr2, 0, bArr6, 0, i5);
                bundle.putByteArray(SpeechUtility.TAG_RESOURCE_RESULT, bArr6);
            }
            bundle.putInt(SocialConstants.PARAM_SEND_MSG, i);
            bundle.putInt("arg1", i2);
            bundle.putInt("arg2", i3);
            Message messageObtainMessage = obtainMessage(22);
            messageObtainMessage.setData(bundle);
            sendMsg(messageObtainMessage, hasMessages(22) ? com.iflytek.cloud.a.f.a.EnumC0232a.normal : com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
        } catch (Throwable th) {
            DebugLog.LogE(th);
            System.gc();
            b(new SpeechError(ErrorCode.ERROR_UNKNOWN));
        }
    }

    @Override // com.iflytek.cloud.a.d.c
    protected void proc_Msg_Session_Begin() throws Throwable {
        c();
        setStatus(com.iflytek.cloud.a.f.a.b.recording);
        if (this.b != null) {
            this.b.onEvent(SpeechEvent.EVENT_SESSION_BEGIN, 0, 0, null);
        }
        sendMsg(23, com.iflytek.cloud.a.f.a.EnumC0232a.normal, true, 0);
    }

    @Override // com.iflytek.cloud.a.d.c
    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("start connecting");
        this.f12193h = false;
        int iA = getParam().a("record_read_rate", 40);
        int i = this.f12189d;
        if (-3 == i) {
            if (this.H == null) {
                DebugLog.LogE("create AIMIC failed!");
                throw new SpeechError(21003);
            }
        } else if (i != -1 && isRunning()) {
            DebugLog.LogD("start  record");
            if (this.f12191f == null) {
                PcmRecorder pcmRecorder = new PcmRecorder(getSampleRate(), iA, this.f12189d);
                this.f12191f = pcmRecorder;
                pcmRecorder.startRecording(this);
            }
        }
        sendMsg(1, com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
    }

    @Override // com.iflytek.cloud.a.d.c
    public int a(byte[] bArr, int i, int i2) {
        com.iflytek.cloud.a.d.e.a aVar = this.H;
        if (aVar != null) {
            return aVar.a(bArr, i, i2);
        }
        return 22001;
    }

    private SpeechError a(SpeechError speechError) {
        int iA;
        String str;
        DebugLog.LogD("AIMicEnd enter");
        com.iflytek.cloud.a.d.e.a aVar = this.H;
        if (aVar != null) {
            aVar.b((com.iflytek.cloud.a.d.e.a.b) this);
            this.H.b((com.iflytek.cloud.a.d.e.a.InterfaceC0228a) this);
            this.H.g();
            UnsatisfiedLinkError e2 = null;
            try {
                if (this.mUserCancel) {
                    str = "user abort";
                } else if (speechError != null) {
                    str = "error" + speechError.getErrorCode();
                } else {
                    str = "success";
                }
                iA = this.H.a("ivw_sse", str);
            } catch (UnsatisfiedLinkError e3) {
                e2 = e3;
                iA = ErrorCode.ERROR_UNSATISFIED_LINK;
            } catch (Throwable th) {
                e2 = th;
                iA = ErrorCode.ERROR_UNKNOWN;
            }
            if (speechError == null && (e2 != null || iA != 0)) {
                DebugLog.LogE("AIMicEnd error!");
                speechError = new SpeechError(e2, iA);
            }
        }
        DebugLog.LogD("AIMicEnd leave");
        return speechError;
    }

    protected void a(Bundle bundle) throws Throwable {
        this.f12193h = true;
        com.iflytek.cloud.a.f.b.a aVar = com.iflytek.cloud.a.f.b.a.resultOver;
        if (this.i || "oneshot".equals(this.f12188a)) {
            aVar = com.iflytek.cloud.a.f.b.a.hasResult;
        }
        Message messageObtainMessage = obtainMessage(4, aVar.ordinal(), 0, bundle.getByteArray(SpeechUtility.TAG_RESOURCE_RESULT));
        messageObtainMessage.setData(bundle);
        sendMsg(messageObtainMessage, hasMessages(4) ? com.iflytek.cloud.a.f.a.EnumC0232a.normal : com.iflytek.cloud.a.f.a.EnumC0232a.max, false, 0);
    }
}
