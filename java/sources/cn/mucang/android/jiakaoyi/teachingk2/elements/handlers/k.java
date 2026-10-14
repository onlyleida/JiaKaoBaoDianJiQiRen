package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayTimeVariable;

/* JADX INFO: loaded from: classes4.dex */
public class k implements g0<DelayTimeVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7030a = -1;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(DelayTimeVariable delayTimeVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (this.f7030a == -1) {
            this.f7030a = eVar.d().L;
        }
        return eVar.d().L - this.f7030a >= delayTimeVariable.delayTime;
    }
}
