package cn.mucang.android.jiakaoyi.teachingk2.v0.b;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.fp.info.FpResult;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final FirstPracticeStep f8688h;
    private long j = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final AtomicInteger f8686f = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final AtomicInteger f8684d = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final AtomicInteger f8685e = new AtomicInteger(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final AtomicInteger f8687g = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final cn.mucang.android.jiakaoyi.teachingk2.v0.a<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> f8683a = g();
    protected int b = 0;
    protected int c = 0;
    private boolean i = false;

    public a(FirstPracticeStep firstPracticeStep) {
        this.f8688h = firstPracticeStep;
    }

    private boolean i(FirstPracticeStep firstPracticeStep) {
        int i = this.b;
        return i <= firstPracticeStep.totalCount && i - this.c >= firstPracticeStep.passCount;
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
        this.f8683a.clear();
        this.i = false;
        this.b = 0;
        this.c = 0;
        this.j = 0L;
        this.f8684d.set(0);
        this.f8685e.set(0);
        this.f8686f.set(0);
        this.f8687g.set(0);
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

    protected abstract cn.mucang.android.jiakaoyi.teachingk2.v0.a<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> g();

    protected void h(e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public boolean a(FirstPracticeStep firstPracticeStep, SubStep subStep, int i, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar) {
        if (!this.i) {
            this.i = true;
            this.j = System.currentTimeMillis();
            h(eVar, cVar);
        }
        this.f8683a.a(firstPracticeStep, subStep, i, eVar, cVar);
        if (this.f8683a.g()) {
            this.b++;
            if (!this.f8683a.h()) {
                this.c++;
                if (!i(firstPracticeStep)) {
                    TtsManager.z(k0.a(R.string.teachbase_come_on_again), TtsGrade.GlobalTip);
                }
                if (!c(i)) {
                    cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().m(true);
                }
            } else if (!i(firstPracticeStep)) {
                TtsManager.z(String.format(k0.a(R.string.teachbase_pass_first_prace), Integer.valueOf(this.b)), TtsGrade.GlobalTip);
            }
            Tiger.h(new FpResult(this.f8688h, this.b, this.c, this.j).setCount(this.f8686f.get(), this.f8684d.get(), this.f8685e.get(), this.f8687g.get()));
            this.f8683a.clear();
        }
        return i(firstPracticeStep);
    }
}
