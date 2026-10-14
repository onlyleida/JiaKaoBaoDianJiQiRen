package cn.mucang.android.jiakaoyi.engine;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Step> f3080a = new ArrayList();

    public void a(Step step) {
        if (d(step)) {
            return;
        }
        this.f3080a.add(step);
    }

    public void b() {
        this.f3080a.clear();
    }

    public boolean c(Step step) {
        if (d(step)) {
            return this.f3080a.remove(step);
        }
        return false;
    }

    public boolean d(Step step) {
        return this.f3080a.contains(step);
    }
}
