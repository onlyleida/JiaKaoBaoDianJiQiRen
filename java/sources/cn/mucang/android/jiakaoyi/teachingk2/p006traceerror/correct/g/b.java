package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.CorrectState;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final cn.mucang.android.jiakaoyi.hpmap.a.a.b f8082a;
    public final int b;
    public final Pos c = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Step f8083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Pos f8084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f8085f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Gear f8086g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<Pos> f8087h;
    private List<a> i;
    private CorrectState j;

    public b(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, int i, Step step, Pos pos, double d2, Gear gear) {
        this.f8082a = bVar;
        this.b = i;
        this.f8083d = step;
        this.f8084e = pos;
        this.f8085f = d2;
        this.f8086g = gear;
    }

    public synchronized List<Pos> a() {
        return this.f8087h;
    }

    public synchronized CorrectState b() {
        return this.j;
    }

    public synchronized List<a> c() {
        return this.i;
    }

    public synchronized void d(List<Pos> list) {
        this.f8087h = list;
    }

    public synchronized void e(CorrectState correctState) {
        this.j = correctState;
    }

    public synchronized void f(List<a> list) {
        this.i = list;
    }
}
