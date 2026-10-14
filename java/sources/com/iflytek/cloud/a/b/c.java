package com.iflytek.cloud.a.b;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.record.PcmRecorder;
import com.iflytek.cloud.util.AudioDetector;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class c extends b {
    private int u;
    private AudioDetector v;
    boolean w;
    private byte[] x;

    public c(Context context, com.iflytek.cloud.b.a aVar, HandlerThread handlerThread) {
        super(context, aVar, handlerThread);
        this.u = 16000;
        this.v = null;
        this.w = false;
        this.x = null;
        com.iflytek.cloud.b.a param = getParam();
        this.u = param != null ? param.a(SpeechConstant.SAMPLE_RATE, 16000) : 16000;
        param.a(SpeechConstant.VAD_ENABLE, "0", true);
        AudioDetector detector = AudioDetector.getDetector();
        this.v = detector;
        if (detector == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(SpeechConstant.SAMPLE_RATE);
            stringBuffer.append("=");
            stringBuffer.append(this.u);
            String strA = param.a(AudioDetector.VAD_ENGINE, AudioDetector.TYPE_META);
            stringBuffer.append(",");
            stringBuffer.append(AudioDetector.VAD_ENGINE);
            stringBuffer.append("=");
            stringBuffer.append(strA);
            String strA2 = param.a(AudioDetector.RES_PATH);
            if (!TextUtils.isEmpty(strA2)) {
                stringBuffer.append(",");
                stringBuffer.append(AudioDetector.RES_PATH);
                stringBuffer.append("=");
                stringBuffer.append(strA2);
            }
            this.v = AudioDetector.createDetector(context, stringBuffer.toString());
        }
        int i = this.mSpeechTimeOut;
        this.v.setParameter(SpeechConstant.VAD_BOS, Integer.toString(i <= 0 ? Integer.MAX_VALUE : i));
        String strA3 = param.a(SpeechConstant.VAD_EOS, Integer.toString(com.iflytek.cloud.b.c.b(this)));
        DebugLog.LogD("meta vad eos on recog: " + strA3);
        this.v.setParameter(SpeechConstant.VAD_EOS, strA3);
        this.v.setParameter(SpeechConstant.KEY_SPEECH_TIMEOUT, Integer.toString(this.mSpeechTimeOut));
    }

    private void c() throws Exception {
        if (SpeechUtility.getUtility() == null) {
            DebugLog.LogE("not init while begin session");
            exit(new SpeechError(ErrorCode.ERROR_LOGIN));
        } else {
            this.o.a("app_ssb");
            DebugLog.LogD("begin session");
            proc_Msg_Session_Begin();
        }
    }

    @Override // com.iflytek.cloud.a.b.b
    protected void a(byte[] bArr, boolean z) throws SpeechError {
        if (!this.f12170e) {
            this.f12170e = true;
            this.o.a("app_fau");
            if (this.c != null) {
                this.c.onEvent(22002, 0, 0, null);
            }
        }
        this.j.pushAudioData(bArr, bArr.length);
    }

    @Override // com.iflytek.cloud.a.b.b
    protected void proc_Msg_Record_Data(Message message) throws Exception {
        byte[] bArrA;
        byte[] bArr = (byte[]) message.obj;
        if (bArr == null || bArr.length == 0 || (bArrA = a(bArr)) == null) {
            return;
        }
        this.m.add(bArrA);
        a(bArrA, true);
    }

    @Override // com.iflytek.cloud.a.b.b
    protected void proc_Msg_Record_Stoped() throws InterruptedException, SpeechError, IOException {
        if (!this.w) {
            DebugLog.LogD("exit with no speech audio");
            exit(null);
        } else {
            this.o.a("app_lau");
            this.j.pushEndFlag();
            updateTimeoutMsg();
        }
    }

    @Override // com.iflytek.cloud.a.b.b
    protected void proc_Msg_Start() throws Exception {
        DebugLog.LogD("start connecting");
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
        setStatus(com.iflytek.cloud.a.f.a.b.recording);
        int i = ((this.u * 300) * 2) / 1000;
        DebugLog.LogD("MscRecognizerMeta last buffer len: " + i);
        this.x = new byte[i];
        if (this.f12173h != -1 && isRunning()) {
            DebugLog.LogD("start  record");
            if (this.f12173h == -2) {
                this.k = new com.iflytek.cloud.record.a(getSampleRate(), iA, this.f12173h, getParam().a(SpeechConstant.ASR_SOURCE_PATH));
            } else {
                this.k = new PcmRecorder(getSampleRate(), iA, this.f12173h);
                if (hasMessages(3)) {
                    throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
                }
            }
            this.o.a("rec_open");
            this.k.startRecording(this);
            int iA2 = getParam().a(SpeechConstant.KEY_SPEECH_TIMEOUT, -1);
            this.mSpeechTimeOut = iA2;
            if (-1 != iA2) {
                sendMsg(9, com.iflytek.cloud.a.f.a.EnumC0232a.normal, false, iA2);
            }
        }
        if (this.c != null && this.f12173h > -1) {
            this.c.onBeginOfSpeech();
        }
        AudioDetector audioDetector = this.v;
        if (audioDetector == null) {
            throw new SpeechError(21003);
        }
        audioDetector.reset();
    }

    private byte[] a(byte[] bArr) throws Exception {
        if (this.v != null) {
            int iMin = Math.min(32768, bArr.length);
            AudioDetector.DetectorResult detectorResultDetect = null;
            int i = 0;
            int iMax = 0;
            boolean z = false;
            while (iMin > 0) {
                detectorResultDetect = this.v.detect(bArr, i, iMin, false);
                if (detectorResultDetect.error == 0) {
                    int i2 = detectorResultDetect.status;
                    if (3 == i2) {
                        this.v.reset();
                    } else if (i2 == 0) {
                        continue;
                    } else {
                        if (!this.w) {
                            iMax = Math.max(iMax, i - this.x.length);
                            this.w = true;
                            DebugLog.LogD("detectAudioData find start and begin session");
                            c();
                            z = true;
                        }
                        if (1 != detectorResultDetect.status) {
                            break;
                        }
                    }
                    i += iMin;
                    iMin = Math.min(32768, bArr.length - i);
                } else {
                    throw new SpeechError(detectorResultDetect.error);
                }
            }
            if (detectorResultDetect != null) {
                callbackVolume(bArr, detectorResultDetect.volume);
            }
            if (detectorResultDetect != null && this.w) {
                if (z) {
                    int length = bArr.length - iMax;
                    byte[] bArr2 = this.x;
                    int length2 = length + bArr2.length;
                    byte[] bArr3 = new byte[length2];
                    if (bArr2.length <= iMax) {
                        System.arraycopy(bArr, iMax - bArr2.length, bArr3, 0, length2);
                    } else {
                        System.arraycopy(bArr2, iMax, bArr3, 0, bArr2.length - iMax);
                        System.arraycopy(bArr, 0, bArr3, this.x.length - iMax, bArr.length);
                    }
                    bArr = bArr3;
                }
                int i3 = detectorResultDetect.status;
                if (2 == i3 || 4 == i3) {
                    DebugLog.LogD("detectAudioData find eos or timeout");
                    b();
                }
                return bArr;
            }
            int iMin2 = Math.min(this.x.length, bArr.length);
            byte[] bArr4 = this.x;
            System.arraycopy(bArr4, iMin2, bArr4, 0, bArr4.length - iMin2);
            int length3 = bArr.length - iMin2;
            byte[] bArr5 = this.x;
            System.arraycopy(bArr, length3, bArr5, bArr5.length - iMin2, iMin2);
            return null;
        }
        throw new SpeechError(22001);
    }
}
