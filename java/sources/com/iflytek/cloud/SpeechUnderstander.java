package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.i;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.speech.SpeechUnderstanderAidl;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechUnderstander extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static SpeechUnderstander f12136a;
    private i b;
    private SpeechUnderstanderAidl c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f12137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InitListener f12138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f12139f = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (SpeechUnderstander.this.f12138e == null) {
                return;
            }
            SpeechUnderstander.this.f12138e.onInit(0);
        }
    }

    private final class b implements SpeechUnderstanderListener {
        static /* synthetic */ com.iflytek.speech.SpeechUnderstanderListener a(b bVar) {
            throw null;
        }
    }

    protected SpeechUnderstander(Context context, InitListener initListener) {
        this.b = null;
        this.c = null;
        this.f12138e = null;
        this.f12138e = initListener;
        this.b = new i(context);
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility != null && utility.c() && utility.getEngineMode() != d.a.MSC) {
            this.c = new SpeechUnderstanderAidl(context.getApplicationContext(), initListener);
        } else if (initListener != null) {
            Message.obtain(this.f12139f, 0, 0, 0, null).sendToTarget();
        }
    }

    public static synchronized SpeechUnderstander createUnderstander(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12136a == null && SpeechUtility.getUtility() != null) {
                f12136a = new SpeechUnderstander(context, initListener);
            }
        }
        return f12136a;
    }

    public static SpeechUnderstander getUnderstander() {
        return f12136a;
    }

    public void cancel() {
        i iVar = this.b;
        if (iVar != null && iVar.b()) {
            this.b.a(false);
            return;
        }
        SpeechUnderstanderAidl speechUnderstanderAidl = this.c;
        if (speechUnderstanderAidl == null || !speechUnderstanderAidl.isUnderstanding()) {
            DebugLog.LogE("SpeechUnderstander cancel failed, is not running");
        } else {
            this.c.cancel(b.a(this.f12137d));
        }
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        SpeechUnderstanderAidl speechUnderstanderAidl = this.c;
        if (speechUnderstanderAidl != null) {
            speechUnderstanderAidl.destory();
        }
        synchronized (this) {
            this.c = null;
        }
        i iVar = this.b;
        boolean zA = iVar != null ? iVar.a() : true;
        if (zA && (zA = super.destroy())) {
            synchronized (d.sSync) {
                f12136a = null;
            }
        }
        return zA;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public boolean isUnderstanding() {
        i iVar = this.b;
        if (iVar != null && iVar.b()) {
            return true;
        }
        SpeechUnderstanderAidl speechUnderstanderAidl = this.c;
        return speechUnderstanderAidl != null && speechUnderstanderAidl.isUnderstanding();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startUnderstanding(SpeechUnderstanderListener speechUnderstanderListener) {
        DebugLog.LogD("start engine mode = " + getStartMode(SpeechConstant.ENG_NLU, this.c).toString());
        i iVar = this.b;
        if (iVar == null) {
            return 21001;
        }
        iVar.a(this.mSessionParams);
        return this.b.a(speechUnderstanderListener);
    }

    public void stopUnderstanding() {
        i iVar = this.b;
        if (iVar != null && iVar.b()) {
            this.b.c();
            return;
        }
        SpeechUnderstanderAidl speechUnderstanderAidl = this.c;
        if (speechUnderstanderAidl == null || !speechUnderstanderAidl.isUnderstanding()) {
            DebugLog.LogD("SpeechUnderstander stopUnderstanding, is not understanding");
        } else {
            this.c.stopUnderstanding(b.a(this.f12137d));
        }
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        i iVar = this.b;
        if (iVar != null && iVar.b()) {
            return this.b.a(bArr, i, i2);
        }
        SpeechUnderstanderAidl speechUnderstanderAidl = this.c;
        if (speechUnderstanderAidl != null && speechUnderstanderAidl.isUnderstanding()) {
            return this.c.writeAudio(bArr, i, i2);
        }
        DebugLog.LogD("SpeechUnderstander writeAudio, is not understanding");
        return ErrorCode.ERROR_ENGINE_CALL_FAIL;
    }

    protected void a(Context context) {
        SpeechUnderstanderAidl speechUnderstanderAidl;
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility == null || !utility.c() || utility.getEngineMode() == d.a.MSC) {
            if (this.f12138e == null || (speechUnderstanderAidl = this.c) == null) {
                return;
            }
            speechUnderstanderAidl.destory();
            this.c = null;
            return;
        }
        SpeechUnderstanderAidl speechUnderstanderAidl2 = this.c;
        if (speechUnderstanderAidl2 != null && !speechUnderstanderAidl2.isAvailable()) {
            this.c.destory();
            this.c = null;
        }
        this.c = new SpeechUnderstanderAidl(context.getApplicationContext(), this.f12138e);
    }
}
