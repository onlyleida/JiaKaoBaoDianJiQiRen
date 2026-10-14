package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.j;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.speech.TextUnderstanderAidl;

/* JADX INFO: loaded from: classes4.dex */
public class TextUnderstander extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static TextUnderstander f12147a;
    private j b;
    private TextUnderstanderAidl c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f12148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InitListener f12149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f12150f = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (TextUnderstander.this.f12149e == null) {
                return;
            }
            TextUnderstander.this.f12149e.onInit(0);
        }
    }

    private final class b implements TextUnderstanderListener {
        static /* synthetic */ com.iflytek.speech.TextUnderstanderListener a(b bVar) {
            throw null;
        }
    }

    protected TextUnderstander(Context context, InitListener initListener) {
        this.b = null;
        this.c = null;
        this.f12149e = null;
        this.f12149e = initListener;
        if (MSC.isLoaded()) {
            this.b = new j(context);
        }
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility != null && utility.c() && utility.getEngineMode() != d.a.MSC) {
            this.c = new TextUnderstanderAidl(context.getApplicationContext(), initListener);
        } else if (initListener != null) {
            Message.obtain(this.f12150f, 0, 0, 0, null).sendToTarget();
        }
    }

    public static synchronized TextUnderstander createTextUnderstander(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12147a == null && SpeechUtility.getUtility() != null) {
                f12147a = new TextUnderstander(context, initListener);
            }
        }
        return f12147a;
    }

    public static TextUnderstander getTextUnderstander() {
        return f12147a;
    }

    public void cancel() {
        j jVar = this.b;
        if (jVar != null) {
            jVar.cancel(false);
            return;
        }
        TextUnderstanderAidl textUnderstanderAidl = this.c;
        if (textUnderstanderAidl != null) {
            textUnderstanderAidl.cancel(b.a(this.f12148d));
        } else {
            DebugLog.LogE("TextUnderstander cancel failed, is not running");
        }
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        TextUnderstanderAidl textUnderstanderAidl = this.c;
        if (textUnderstanderAidl != null) {
            textUnderstanderAidl.destory();
        }
        j jVar = this.b;
        boolean zDestroy = jVar != null ? jVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            this.c = null;
            synchronized (d.sSync) {
                f12147a = null;
            }
        }
        return zDestroy;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public boolean isUnderstanding() {
        j jVar = this.b;
        if (jVar != null && jVar.isUnderstanding()) {
            return true;
        }
        TextUnderstanderAidl textUnderstanderAidl = this.c;
        return textUnderstanderAidl != null && textUnderstanderAidl.isUnderstanding();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int understandText(String str, TextUnderstanderListener textUnderstanderListener) {
        DebugLog.LogD("start engine mode = " + getStartMode(SpeechConstant.ENG_NLU, this.c).toString());
        j jVar = this.b;
        if (jVar == null) {
            return 21001;
        }
        jVar.setParameter(this.mSessionParams);
        return this.b.understandText(str, textUnderstanderListener);
    }

    protected void a(Context context) {
        TextUnderstanderAidl textUnderstanderAidl;
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility == null || !utility.c() || utility.getEngineMode() == d.a.MSC) {
            if (this.f12149e == null || (textUnderstanderAidl = this.c) == null) {
                return;
            }
            textUnderstanderAidl.destory();
            this.c = null;
            return;
        }
        TextUnderstanderAidl textUnderstanderAidl2 = this.c;
        if (textUnderstanderAidl2 != null && !textUnderstanderAidl2.isAvailable()) {
            this.c.destory();
            this.c = null;
        }
        this.c = new TextUnderstanderAidl(context.getApplicationContext(), this.f12149e);
    }
}
