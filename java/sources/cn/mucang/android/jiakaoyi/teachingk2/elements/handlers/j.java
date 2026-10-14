package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayDistanceVariable;

/* JADX INFO: loaded from: classes4.dex */
public class j implements g0<DelayDistanceVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f7029a;
    private boolean b = false;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(DelayDistanceVariable delayDistanceVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (!this.b) {
            this.b = true;
            this.f7029a = new Pos(eVar.c().center);
        }
        return eVar.c().center.distanceTo(this.f7029a) >= ((double) delayDistanceVariable.distance);
    }
}
