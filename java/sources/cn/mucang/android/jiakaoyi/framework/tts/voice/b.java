package cn.mucang.android.jiakaoyi.framework.tts.voice;

import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TtsListener f3562a;

    @Override // java.lang.Runnable
    public final void run() {
        this.f3562a.onIntercept();
    }
}
