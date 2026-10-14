package cn.mucang.android.jiakaoyi.teachingk2.safe.d0;

import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class f implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<NormalVariable> f7642a;
    private final g b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean[] f7644e;
    private final ExecutorService c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7645f = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<h> f7643d = new ArrayList();

    public f(List<NormalVariable> list, g gVar) {
        this.f7642a = list;
        this.b = gVar;
        this.f7644e = new boolean[list.size()];
        for (NormalVariable normalVariable : list) {
            this.f7643d.add(new h(normalVariable.posOnLine, normalVariable.forwardPoint));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void c(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.f7645f > this.f7642a.size() - 1) {
            return;
        }
        h hVar = this.f7643d.get(this.f7645f);
        hVar.h(eVar);
        if (hVar.a()) {
            boolean[] zArr = this.f7644e;
            int i = this.f7645f;
            if (!zArr[i]) {
                zArr[i] = true;
                this.b.a(this.f7642a.get(i));
                cn.mucang.android.jiakaoyi.framework.log.f.o("已经触发刹车:" + hVar.f7646a);
            }
            if (this.b.b(this.f7642a.get(this.f7645f), eVar)) {
                hVar.e();
            }
        }
        if (hVar.c()) {
            this.f7645f++;
        }
        if (this.f7645f > this.f7642a.size() - 1) {
            this.b.onFinish();
        }
    }

    public void d() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    public void e() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().h()) {
            this.c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.d0.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7633a.c(eVar);
                }
            });
        }
    }
}
