package cn.mucang.android.jiakaoyi.teachingk2.firstpractice;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<FirstPracticeStep, c<?>> f7122a;
    private final AtomicBoolean b;
    private volatile FirstPracticeStep c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f7123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f7124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.b<FirstPracticeStep> f7125f;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f7126a = new a();
    }

    public static a e() {
        return b.f7126a;
    }

    public <T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> void a(FirstPracticeStep firstPracticeStep, c<T> cVar) {
        synchronized (this.f7123d) {
            this.f7122a.put(firstPracticeStep, cVar);
        }
    }

    public void b() {
        synchronized (this.f7123d) {
            Iterator<c<?>> it = this.f7122a.values().iterator();
            while (it.hasNext()) {
                it.next().clear();
            }
        }
    }

    public void c() {
        this.b.set(true);
    }

    public void d() {
        this.b.set(false);
        synchronized (this.f7123d) {
            Iterator<c<?>> it = this.f7122a.values().iterator();
            while (it.hasNext()) {
                it.next().clear();
            }
        }
    }

    public FirstPracticeStep f() {
        return this.c;
    }

    public boolean g() {
        return this.b.get();
    }

    public <T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b> boolean h(FirstPracticeStep firstPracticeStep, SubStep subStep, e eVar, int i, T t) {
        c<?> cVar;
        if (firstPracticeStep != this.c) {
            return false;
        }
        synchronized (this.f7123d) {
            cVar = this.f7122a.get(firstPracticeStep);
        }
        if (cVar != null) {
            return cVar.a(firstPracticeStep, subStep, i, eVar, t);
        }
        return false;
    }

    public boolean i() {
        return this.f7124e;
    }

    public FirstPracticeStep j(FirstPracticeStep firstPracticeStep) {
        FirstPracticeStep firstPracticeStep2 = FirstPracticeStep.None;
        if (firstPracticeStep == firstPracticeStep2) {
            return FirstPracticeStep.DaoKu_Line;
        }
        if (firstPracticeStep == FirstPracticeStep.DaoKu_Line) {
            return FirstPracticeStep.DaoKu_Right;
        }
        if (firstPracticeStep == FirstPracticeStep.DaoKu_Right) {
            return FirstPracticeStep.DaoKu_Left;
        }
        if (firstPracticeStep == FirstPracticeStep.DaoKu_Left) {
            return FirstPracticeStep.DaoKu_Done;
        }
        return firstPracticeStep == FirstPracticeStep.DaoKu_Done ? firstPracticeStep : firstPracticeStep2;
    }

    public void k(FirstPracticeStep firstPracticeStep) {
        f.o("设置首训步骤:" + firstPracticeStep + "," + this.c);
        if (this.c != firstPracticeStep) {
            this.c = firstPracticeStep;
            cn.mucang.android.jiakaoyi.framework.h.b<FirstPracticeStep> bVar = this.f7125f;
            if (bVar != null) {
                bVar.callback(firstPracticeStep);
            }
        }
    }

    public void l(cn.mucang.android.jiakaoyi.framework.h.b<FirstPracticeStep> bVar) {
        this.f7125f = bVar;
    }

    public void m(boolean z) {
        this.f7124e = z;
    }

    private a() {
        this.b = new AtomicBoolean(false);
        this.c = FirstPracticeStep.None;
        this.f7122a = new HashMap();
        this.f7123d = new Object();
        this.f7124e = false;
    }
}
