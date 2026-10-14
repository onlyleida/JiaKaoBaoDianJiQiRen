package com.iflytek.cloud.a.h;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechEvent;
import com.iflytek.cloud.SynthesizerListener;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class c extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.iflytek.cloud.record.c f12278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iflytek.cloud.record.b f12279f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SynthesizerListener f12280g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SynthesizerListener f12281h;
    private f i;
    private int j;
    private boolean k;
    public boolean l;
    public boolean m;
    public String n;
    public SpeechError o;
    private com.iflytek.cloud.a.h.b p;
    private com.iflytek.cloud.record.c.InterfaceC0242c q;
    private Handler r;
    private boolean s;
    final Handler t;

    class a implements com.iflytek.cloud.a.h.b {
        a() {
        }

        @Override // com.iflytek.cloud.a.h.b
        public void a(ArrayList<byte[]> arrayList, int i, int i2, int i3, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("percent", i);
            bundle.putInt("begpos", i2);
            bundle.putInt("endpos", i3);
            bundle.putString("spellinfo", str);
            if (c.this.f12280g != null) {
                Message.obtain(c.this.r, 2, bundle).sendToTarget();
            }
            try {
                c.this.f12279f.a(arrayList, i, i2, i3);
                c.this.h();
            } catch (IOException e2) {
                DebugLog.LogE(e2);
                c.this.o = new SpeechError(ErrorCode.ERROR_FILE_ACCESS);
                Message.obtain(c.this.r, 6, c.this.o).sendToTarget();
                c.this.cancel(false);
            }
        }

        @Override // com.iflytek.cloud.a.h.b
        public void onCompleted(SpeechError speechError) {
            c cVar = c.this;
            cVar.o = speechError;
            if (speechError == null) {
                cVar.m = true;
                c.this.f12279f.a(((com.iflytek.cloud.a.f.e) cVar).c != null ? ((com.iflytek.cloud.a.f.e) c.this).c.getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null) : null);
                if (c.this.i != null) {
                    c.this.i.a();
                    DebugLog.LogD("onCompleted NextSession pause");
                }
            }
            Bundle bundle = new Bundle();
            bundle.putString(SpeechEvent.KEY_EVENT_SESSION_ID, ((com.iflytek.cloud.a.f.e) c.this).c.getSessionID());
            Message.obtain(c.this.r, 7, bundle).sendToTarget();
            if (c.this.f12280g == null || speechError == null) {
                return;
            }
            Message.obtain(c.this.r, 6, speechError).sendToTarget();
            if (c.this.f12278e != null) {
                c.this.f12278e.k();
            }
        }
    }

    /* JADX INFO: renamed from: com.iflytek.cloud.a.h.c$c, reason: collision with other inner class name */
    class HandlerC0234c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12284a;

        HandlerC0234c(Looper looper) {
            super(looper);
            this.f12284a = 0;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                if (c.this.f12280g == null) {
                }
                switch (message.what) {
                    case 1:
                        DebugLog.LogD("tts-onSpeakBegin");
                        c.this.f12280g.onSpeakBegin();
                        break;
                    case 2:
                        Bundle bundle = (Bundle) message.obj;
                        int i = bundle.getInt("percent");
                        int i2 = bundle.getInt("begpos");
                        int i3 = bundle.getInt("endpos");
                        String string = bundle.getString("spellinfo");
                        if (c.this.f12280g != null) {
                            DebugLog.LogI("tts-onBufferProgress percent: " + i + ", beg: " + i2 + ", endpos: " + i3 + ", spell: " + string);
                            c.this.f12280g.onBufferProgress(i, i2, i3, string);
                        }
                        break;
                    case 3:
                        DebugLog.LogD("tts-onSpeakPaused");
                        c.this.f12280g.onSpeakPaused();
                        break;
                    case 4:
                        DebugLog.LogD("tts-onSpeakResumed");
                        c.this.f12280g.onSpeakResumed();
                        break;
                    case 5:
                        int iIntValue = ((Integer) message.obj).intValue();
                        if (c.this.f12280g != null) {
                            if (this.f12284a != iIntValue) {
                                DebugLog.LogD("tts-onSpeakProgress percent: " + message.arg1 + ", begpos: " + message.arg2 + ", endpos: " + iIntValue);
                                this.f12284a = iIntValue;
                            }
                            c.this.f12280g.onSpeakProgress(message.arg1, message.arg2, iIntValue);
                        }
                        break;
                    case 6:
                        DebugLog.LogD("tts-onCompleted");
                        c.this.f12280g.onCompleted((SpeechError) message.obj);
                        break;
                    case 7:
                        c.this.f12280g.onEvent(20001, 0, 0, (Bundle) message.obj);
                        break;
                }
            } catch (Exception e2) {
                DebugLog.LogE("SpeakSession mUiHandler error:" + e2);
            }
        }
    }

    class d implements com.iflytek.cloud.a.h.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f12285a;

        d(String str) {
            this.f12285a = str;
        }

        @Override // com.iflytek.cloud.a.h.b
        public void a(ArrayList<byte[]> arrayList, int i, int i2, int i3, String str) throws SpeechError {
            if (((com.iflytek.cloud.a.f.e) c.this).c != null && ((com.iflytek.cloud.a.f.e) c.this).c.getParam().a(SpeechConstant.TTS_DATA_NOTIFY, false) && c.this.f12281h != null && arrayList != null) {
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    byte[] bArr = arrayList.get(i4);
                    Bundle bundle = new Bundle();
                    bundle.putByteArray(SpeechEvent.KEY_EVENT_TTS_BUFFER, bArr);
                    if (c.this.s) {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 21001;
                        messageObtain.arg1 = 0;
                        messageObtain.arg2 = 0;
                        messageObtain.obj = bundle;
                        Message.obtain(c.this.t, 7, 0, 0, messageObtain).sendToTarget();
                    } else {
                        c.this.f12281h.onEvent(21001, 0, 0, bundle);
                    }
                }
            }
            try {
                c.this.f12279f.a(arrayList, i, i2, i3);
                if (c.this.f12281h != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("percent", i);
                    bundle2.putInt("begpos", i2);
                    bundle2.putInt("endpos", i3);
                    bundle2.putString("spellinfo", str);
                    if (c.this.s) {
                        Message.obtain(c.this.t, 2, bundle2).sendToTarget();
                    } else {
                        c.this.f12281h.onBufferProgress(i, i2, i3, str);
                    }
                }
                if (i >= 100) {
                    if (((com.iflytek.cloud.a.f.e) c.this).c == null || !((com.iflytek.cloud.a.f.e) c.this).c.getParam().a(SpeechConstant.TTS_DATA_NOTIFY, false)) {
                        String strA = ((com.iflytek.cloud.a.f.e) c.this).c != null ? ((com.iflytek.cloud.a.f.e) c.this).c.getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null) : null;
                        if (c.this.f12279f.e() == 0) {
                            throw new SpeechError(ErrorCode.MSP_ERROR_NO_DATA);
                        }
                        if (!c.this.f12279f.a(strA)) {
                            throw new IOException();
                        }
                    } else {
                        String strA2 = ((com.iflytek.cloud.a.f.e) c.this).c.getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null);
                        if (!TextUtils.isEmpty(this.f12285a) && !c.this.f12279f.a(strA2)) {
                            throw new IOException();
                        }
                    }
                    if (c.this.f12281h != null) {
                        if (c.this.s) {
                            Message.obtain(c.this.t, 6, null).sendToTarget();
                        } else {
                            c.this.f12281h.onCompleted(null);
                        }
                    }
                }
            } catch (IOException e2) {
                DebugLog.LogE(e2);
                if (c.this.f12281h != null) {
                    if (c.this.s) {
                        Message.obtain(c.this.t, 6, new SpeechError(ErrorCode.ERROR_FILE_ACCESS)).sendToTarget();
                    } else {
                        try {
                            c.this.f12281h.onCompleted(new SpeechError(ErrorCode.ERROR_FILE_ACCESS));
                        } catch (Exception unused) {
                        }
                    }
                }
                if (((com.iflytek.cloud.a.f.e) c.this).c != null) {
                    ((com.iflytek.cloud.a.f.e) c.this).c.cancel(false);
                }
            }
        }

        @Override // com.iflytek.cloud.a.h.b
        public void onCompleted(SpeechError speechError) {
            if (c.this.f12281h == null || speechError == null) {
                return;
            }
            if (c.this.s) {
                Message.obtain(c.this.t, 6, speechError).sendToTarget();
            } else {
                c.this.f12281h.onCompleted(speechError);
            }
        }
    }

    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Message message2;
            try {
                if (c.this.f12281h == null) {
                    return;
                }
                int i = message.what;
                if (i == 2) {
                    Bundle bundle = (Bundle) message.obj;
                    c.this.f12281h.onBufferProgress(bundle.getInt("percent"), bundle.getInt("begpos"), bundle.getInt("endpos"), bundle.getString("spellinfo"));
                } else if (i == 6) {
                    c.this.f12281h.onCompleted((SpeechError) message.obj);
                } else if (i == 7 && (message2 = (Message) message.obj) != null) {
                    c.this.f12281h.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                }
            } catch (Exception e2) {
                DebugLog.LogE("SpeakSession mUiHandler error:" + e2);
            }
        }
    }

    public interface f {
        void a();
    }

    public c(Context context) {
        super(context);
        this.f12278e = null;
        this.f12279f = null;
        this.f12280g = null;
        this.f12281h = null;
        this.i = null;
        this.j = 0;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = null;
        this.o = null;
        this.p = new a();
        this.q = new b();
        this.r = new HandlerC0234c(Looper.getMainLooper());
        this.s = true;
        this.t = new e(Looper.getMainLooper());
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        DebugLog.LogD("SpeakSession cancel notifyError:" + z);
        if (isSpeaking()) {
            SynthesizerListener synthesizerListener = this.f12280g;
            if (synthesizerListener != null) {
                synthesizerListener.onEvent(21002, 0, 0, null);
            }
            SynthesizerListener synthesizerListener2 = this.f12281h;
            if (synthesizerListener2 != null) {
                synthesizerListener2.onEvent(21002, 0, 0, null);
            }
            if (z) {
                SpeechError speechError = new SpeechError(ErrorCode.ERROR_INTERRUPT);
                if (this.f12280g != null) {
                    DebugLog.LogD("tts-onCompleted-cancel");
                    Message.obtain(this.r, 6, speechError).sendToTarget();
                }
                SynthesizerListener synthesizerListener3 = this.f12281h;
                if (synthesizerListener3 != null) {
                    if (this.s) {
                        Message.obtain(this.t, 6, speechError).sendToTarget();
                    } else {
                        synthesizerListener3.onCompleted(speechError);
                    }
                }
            }
        }
        this.f12280g = null;
        this.f12281h = null;
        super.cancel(false);
        com.iflytek.cloud.record.c cVar = this.f12278e;
        if (cVar != null) {
            cVar.k();
        }
    }

    @Override // com.iflytek.cloud.a.f.e, com.iflytek.cloud.a.f.d
    public boolean destroy() {
        synchronized (this.b) {
            cancel(false);
        }
        return true;
    }

    public boolean isSpeaking() {
        if (c()) {
            return true;
        }
        return (f() == 4 || f() == 0) ? false : true;
    }

    public void pauseSpeaking() {
        com.iflytek.cloud.record.c cVar;
        if (this.f12279f == null || (cVar = this.f12278e) == null) {
            return;
        }
        cVar.d();
    }

    public void resumeSpeaking() {
        com.iflytek.cloud.record.c cVar;
        if (this.f12279f != null && (cVar = this.f12278e) != null) {
            cVar.g();
        } else {
            this.f12278e = new com.iflytek.cloud.record.c(this.f12265a);
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.k || this.f12278e == null || !this.f12279f.c(this.j)) {
            return;
        }
        this.k = true;
        this.f12278e.a(this.f12279f, this.q);
        if (this.f12280g != null) {
            Message.obtain(this.r, 1).sendToTarget();
        }
    }

    public void a(String str, com.iflytek.cloud.b.a aVar) {
        setParameter(aVar);
        this.n = str;
    }

    @Override // com.iflytek.cloud.a.f.e
    public boolean c() {
        return super.c();
    }

    public int f() {
        com.iflytek.cloud.record.c cVar;
        if (this.f12279f == null || (cVar = this.f12278e) == null) {
            return 4;
        }
        return cVar.c();
    }

    public void g() {
        if (this.m) {
            return;
        }
        a(this.n, this.mSessionParams, null, false, this.mSessionParams.a("tts_next_audio_path"));
    }

    class b implements com.iflytek.cloud.record.c.InterfaceC0242c {
        b() {
        }

        @Override // com.iflytek.cloud.record.c.InterfaceC0242c
        public void a(int i, int i2, int i3) {
            Message.obtain(c.this.r, 5, i, i2, Integer.valueOf(i3)).sendToTarget();
        }

        @Override // com.iflytek.cloud.record.c.InterfaceC0242c
        public void b() {
            if (c.this.f12280g != null) {
                Message.obtain(c.this.r, 4).sendToTarget();
            }
        }

        @Override // com.iflytek.cloud.record.c.InterfaceC0242c
        public void c() {
            if (c.this.f12280g != null) {
                Message.obtain(c.this.r, 3).sendToTarget();
            }
        }

        @Override // com.iflytek.cloud.record.c.InterfaceC0242c
        public void onError(SpeechError speechError) {
            Message.obtain(c.this.r, 6, speechError).sendToTarget();
            if (c.this.f12278e != null) {
                c.this.f12278e.k();
            }
            c.this.cancel(false);
        }

        @Override // com.iflytek.cloud.record.c.InterfaceC0242c
        public void a() {
            Message.obtain(c.this.r, 6, null).sendToTarget();
        }
    }

    public void a(f fVar) {
        this.i = fVar;
    }

    public synchronized int a(String str, com.iflytek.cloud.b.a aVar, SynthesizerListener synthesizerListener, boolean z, String str2) {
        int errorCode;
        errorCode = 0;
        try {
            try {
                DebugLog.LogD("tts start:" + System.currentTimeMillis());
                this.f12280g = synthesizerListener;
                this.n = str;
                setParameter(aVar);
                int iA = aVar.a(SpeechConstant.STREAM_TYPE, 3);
                boolean zA = aVar.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (z) {
                    this.f12278e = new com.iflytek.cloud.record.c(this.f12265a, iA, zA, com.iflytek.cloud.b.a.b(this.mSessionParams.e(SpeechConstant.TTS_FADING), false), com.iflytek.cloud.b.a.b(this.mSessionParams.e("tts_buf_fading"), false));
                }
                this.c = new com.iflytek.cloud.a.h.a(this.f12265a, aVar, a("tts"));
                this.f12279f = new com.iflytek.cloud.record.b(this.f12265a, this.c.getSampleRate(), Math.max(1, aVar.a("tts_min_audio_len", 0) / 1000) + (str != null ? str.length() : 0), str2, aVar.a("tts_proc_scale", 100));
                this.f12279f.a(com.iflytek.cloud.b.a.b(this.mSessionParams.e("end_with_null"), true));
                this.j = aVar.a(SpeechConstant.TTS_BUFFER_TIME, 0);
                DebugLog.LogD("minPlaySec:" + this.j);
                this.k = false;
                ((com.iflytek.cloud.a.h.a) this.c).a(str, this.p);
                this.l = true;
            } catch (Throwable th) {
                throw th;
            }
        } catch (SpeechError e2) {
            errorCode = e2.getErrorCode();
            DebugLog.LogE(e2);
        } catch (Throwable th2) {
            errorCode = ErrorCode.ERROR_UNKNOWN;
            DebugLog.LogE(th2);
        }
        return errorCode;
    }

    public void a(SynthesizerListener synthesizerListener) {
        this.f12280g = synthesizerListener;
    }

    public int a(String str, String str2, com.iflytek.cloud.b.a aVar, SynthesizerListener synthesizerListener) {
        try {
            this.s = aVar.a("message_main_thread", true);
            this.f12281h = synthesizerListener;
            this.c = new com.iflytek.cloud.a.h.a(this.f12265a, aVar, a("tts"));
            this.f12279f = new com.iflytek.cloud.record.b(this.f12265a, this.c.getSampleRate(), Math.max(1, aVar.a("tts_min_audio_len", 0) / 1000) + (str != null ? str.length() : 0), str2, aVar.a("tts_proc_scale", 100));
            ((com.iflytek.cloud.a.h.a) this.c).a(str, new d(str2));
            return 0;
        } catch (SpeechError e2) {
            int errorCode = e2.getErrorCode();
            DebugLog.LogE(e2);
            return errorCode;
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return ErrorCode.ERROR_UNKNOWN;
        }
    }
}
