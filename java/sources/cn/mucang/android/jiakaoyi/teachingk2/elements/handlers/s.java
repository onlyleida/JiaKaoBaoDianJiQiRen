package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;

/* JADX INFO: loaded from: classes4.dex */
public class s implements g0<RepeatVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7041a = 0;
    private int b = 0;
    private boolean c = false;

    public void b() {
        this.c = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(RepeatVariable repeatVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (repeatVariable.repeatTime <= 0 || !this.c) {
            return true;
        }
        if (this.f7041a == 0) {
            this.f7041a = eVar.d().L;
            return false;
        }
        int i = (int) ((eVar.d().L - this.f7041a) / repeatVariable.repeatTime);
        if (i <= this.b) {
            return false;
        }
        this.b = i;
        return true;
    }
}
