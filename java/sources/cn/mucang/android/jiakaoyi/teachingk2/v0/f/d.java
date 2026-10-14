package cn.mucang.android.jiakaoyi.teachingk2.v0.f;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;

/* JADX INFO: loaded from: classes4.dex */
public class d<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> implements cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Pos f8709a;
    private final SubStep b;
    private final cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e c = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e(6000);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f8710d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f8711e = new Pos();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f8712f;

    public d(Pos pos, Pos pos2, SubStep subStep) {
        this.f8709a = pos;
        this.b = subStep;
        this.f8712f = pos2;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public boolean a(FirstPracticeStep firstPracticeStep, SubStep subStep, int i, cn.mucang.android.jiakaoyi.signal.c.e eVar, T t) {
        SubStep subStep2 = this.b;
        SubStep subStep3 = SubStep.Step9;
        boolean z = false;
        boolean z2 = subStep2 != subStep3 || c(i);
        SubStep subStep4 = this.b;
        SubStep subStep5 = SubStep.Step8;
        int i2 = subStep4 == subStep5 ? 40 : 30;
        Pos pos = eVar.c().rearAxlePoint;
        int iDistanceTo = (int) pos.distanceTo(this.f8709a);
        boolean z3 = !eVar.d().c() && subStep == this.b && z2 && !f(i);
        this.f8712f.vectorTo(this.f8709a, this.f8710d);
        if (z3 && (iDistanceTo < i2 || this.f8710d.dot(this.f8709a.vectorTo(pos, this.f8711e)) > 0.0d)) {
            z = true;
        }
        if (z) {
            if (this.c.a(eVar.d().F, eVar.d().L)) {
                SubStep subStep6 = this.b;
                if (subStep6 == subStep5) {
                    TtsManager.z(k0.a(R.string.teachbase_gear_r_practice), TtsGrade.GlobalTip);
                    this.c.b();
                    this.c.c(6000L);
                } else if (subStep6 == subStep3) {
                    TtsManager.z(k0.a(R.string.teachbase_gear_r_practice_start_slow), TtsGrade.GlobalTip);
                    this.c.b();
                    this.c.c(9000L);
                }
            }
        } else if (!z3 || !c(i)) {
            this.c.b();
            this.c.c(this.b == subStep3 ? 9000L : 6000L);
        } else if (this.c.a(eVar.d().F, eVar.d().L)) {
            TtsManager.z(k0.a(R.string.teachbase_gear_r_practice_start_slow), TtsGrade.GlobalTip);
            this.c.b();
            this.c.c(9000L);
        }
        return z;
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
