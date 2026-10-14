package cn.mucang.android.jiakaoyi.teachingk2.v0;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* JADX INFO: loaded from: classes4.dex */
public class a<T extends b> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<T> f8677a;
    private final c<T> b;
    private final List<c<T>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c<T> f8678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SubStep f8679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SubStep f8680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicInteger f8681g;
    private boolean i;
    private boolean j;
    private boolean l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LinkedList<SubStep> f8682h = new LinkedList<>();
    private boolean k = true;

    public a(c<T> cVar, c<T> cVar2, List<c<T>> list, c<T> cVar3, SubStep subStep, SubStep subStep2, AtomicInteger atomicInteger) {
        this.f8677a = cVar;
        this.b = cVar2;
        this.c = list;
        this.f8678d = cVar3;
        this.f8679e = subStep;
        this.f8680f = subStep2;
        this.f8681g = atomicInteger;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.firstpractice.c
    public boolean a(FirstPracticeStep firstPracticeStep, SubStep subStep, int i, e eVar, T t) {
        if (subStep == this.f8679e) {
            this.i = this.f8677a.a(firstPracticeStep, subStep, i, eVar, t);
        }
        if (subStep == this.f8680f) {
            this.j = this.b.a(firstPracticeStep, subStep, i, eVar, t);
            this.l = this.f8678d.a(firstPracticeStep, subStep, i, eVar, t);
        }
        Iterator<c<T>> it = this.c.iterator();
        while (it.hasNext()) {
            if (!it.next().a(firstPracticeStep, subStep, i, eVar, t)) {
                this.k = false;
            }
        }
        synchronized (this) {
            if (this.f8682h.isEmpty() && subStep == this.f8679e) {
                this.f8682h.addFirst(subStep);
            } else if (this.f8682h.size() == 1 && subStep == this.f8680f) {
                this.f8682h.addFirst(subStep);
            }
        }
        if (g()) {
            if (!this.i) {
                this.f8681g.getAndIncrement();
                TtsManager.z(k0.a(R.string.teachbase_stop_error_reset), TtsGrade.GlobalTip);
            }
            if (!this.j) {
                this.f8681g.getAndIncrement();
                TtsManager.z(k0.a(R.string.teachbase_stop_error_reset), TtsGrade.GlobalTip);
            }
        }
        return this.k;
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
        this.i = false;
        this.j = false;
        this.k = true;
        this.f8677a.clear();
        this.b.clear();
        this.f8678d.clear();
        Iterator<c<T>> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        synchronized (this) {
            this.f8682h.clear();
        }
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

    public boolean g() {
        return this.f8682h.size() == 2 && this.f8682h.getLast() == this.f8679e && this.f8682h.getFirst() == this.f8680f && this.l;
    }

    public boolean h() {
        return this.i && this.j && this.k && this.l;
    }
}
