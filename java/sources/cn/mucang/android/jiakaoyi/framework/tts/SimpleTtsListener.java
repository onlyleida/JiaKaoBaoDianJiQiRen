package cn.mucang.android.jiakaoyi.framework.tts;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J \u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "()V", "onBufferProgress", "", "percent", "", "beginPos", "endPos", "onIntercept", "onSpeakBegin", "onSpeakEnd", "onSpeakPaused", "onSpeakProgress", "onSpeakResumed", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class SimpleTtsListener implements TtsListener {
    public void onBufferProgress(int percent, int beginPos, int endPos) {
        TtsListener.a.a(this, percent, beginPos, endPos);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
    public void onIntercept() {
        TtsListener.a.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
    public void onSpeakBegin() {
        TtsListener.a.c(this);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
    public void onSpeakEnd() {
        TtsListener.a.d(this);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
    public void onSpeakPaused() {
        TtsListener.a.e(this);
    }

    public void onSpeakProgress(int percent, int beginPos, int endPos) {
        TtsListener.a.f(this, percent, beginPos, endPos);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
    public void onSpeakResumed() {
        TtsListener.a.g(this);
    }
}
