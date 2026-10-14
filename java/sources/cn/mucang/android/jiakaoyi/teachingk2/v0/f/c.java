package cn.mucang.android.jiakaoyi.teachingk2.v0.f;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class c<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> implements cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f8705a;
    private final AtomicInteger b;
    private final AtomicInteger c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8706d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8707e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8708f = false;

    public c(AtomicInteger atomicInteger, AtomicInteger atomicInteger2, AtomicInteger atomicInteger3) {
        this.f8705a = atomicInteger;
        this.b = atomicInteger2;
        this.c = atomicInteger3;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public boolean a(FirstPracticeStep firstPracticeStep, SubStep subStep, int i, cn.mucang.android.jiakaoyi.signal.c.e eVar, T t) {
        boolean zF = f(i);
        boolean zE = e(i);
        boolean z = eVar.d().b > 5.0f;
        if (zF && !this.f8706d) {
            this.f8705a.getAndIncrement();
            TtsManager.z(k0.a(R.string.teachbase_body_press_line_reset), TtsGrade.GlobalTip);
        }
        if (zE && !this.f8707e) {
            this.b.getAndIncrement();
            TtsManager.z(k0.a(R.string.teachbase_wheel_press_line_reset), TtsGrade.GlobalTip);
        }
        if (z && !this.f8708f) {
            this.c.getAndIncrement();
            TtsManager.z(k0.a(R.string.teachbase_speed_over_5_reset), TtsGrade.GlobalTip);
        }
        this.f8707e = zE;
        this.f8706d = zF;
        this.f8708f = z;
        return (zF || zE || z) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean b(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.d(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean c(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.a(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public void clear() {
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean d(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.c(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean e(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.e(this, i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public /* synthetic */ boolean f(int i) {
        return cn.mucang.android.jiakaoyi.teachingk2.firstpractice.b.b(this, i);
    }
}
