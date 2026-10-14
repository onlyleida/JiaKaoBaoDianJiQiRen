package cn.mucang.android.jiakaoyi.mapcollect.collect;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;

/* JADX INFO: loaded from: classes3.dex */
public abstract class u0<T extends SourceData<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f4847a;
    public t0 b;
    protected boolean c;

    protected u0(T t) {
        this.f4847a = t;
    }

    public void a() {
    }

    public abstract boolean b();

    public abstract boolean c();

    public abstract void d();

    protected void e(String str) {
        TtsManager.H();
        TtsManager.r(str, TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(str);
    }
}
