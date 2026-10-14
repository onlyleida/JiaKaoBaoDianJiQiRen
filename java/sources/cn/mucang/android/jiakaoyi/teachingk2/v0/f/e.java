package cn.mucang.android.jiakaoyi.teachingk2.v0.f;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class e<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> implements cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SubStep f8713a;
    private final cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e b = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);

    public e(SubStep subStep) {
        this.f8713a = subStep;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public boolean a(FirstPracticeStep firstPracticeStep, SubStep subStep, int i, cn.mucang.android.jiakaoyi.signal.c.e eVar, T t) {
        if (subStep != this.f8713a || !c(i)) {
            this.b.b();
            this.b.c(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        } else if (this.b.a(eVar.d().F, eVar.d().L)) {
            TtsManager.z(k0.a(R.string.teachbase_start_slowly), TtsGrade.GlobalTip);
            this.b.b();
            this.b.c(8000L);
        }
        return d(i) && subStep == this.f8713a;
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
