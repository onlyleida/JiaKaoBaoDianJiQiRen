package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.KuWeiPoseVariable;

/* JADX INFO: loaded from: classes4.dex */
public class p implements g0<KuWeiPoseVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.pos.a f7032a;
    private cn.mucang.android.jiakaoyi.signal.utils.b b;
    private float c;

    private boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        return this.f7032a.g(this.b.a(eVar.c().center));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(KuWeiPoseVariable kuWeiPoseVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (!(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) && !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c)) {
            return false;
        }
        if (this.f7032a == null) {
            this.b = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
            SparseArray<Pos> sparseArrayJ = bVar.j();
            Pos pos = sparseArrayJ.get(3);
            Pos pos2 = sparseArrayJ.get(4);
            sparseArrayJ.get(6);
            boolean z = this.b.f5830e;
            float fC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) Math.toDegrees(pos2.angleTo(pos)));
            Pos pos3 = new Pos(kuWeiPoseVariable.x, kuWeiPoseVariable.y);
            double d2 = pos3.x;
            SerializableRect serializableRect = kuWeiPoseVariable.range;
            double d3 = d2 - ((double) serializableRect.right);
            double d4 = pos3.y;
            this.f7032a = new cn.mucang.android.jiakaoyi.signal.pos.a(d3, d4 - ((double) serializableRect.bottom), d2 + ((double) serializableRect.left), d4 + ((double) serializableRect.top));
            float fC2 = (float) kuWeiPoseVariable.degree;
            if (!z) {
                fC2 = cn.mucang.android.jiakaoyi.signal.utils.d.c(-fC2);
            }
            this.c = cn.mucang.android.jiakaoyi.signal.utils.d.c(fC + fC2);
        }
        return b(eVar) && ((double) Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c(this.c - cn.mucang.android.jiakaoyi.signal.utils.d.c((float) eVar.c().degree)))) <= kuWeiPoseVariable.degreeRadius;
    }
}
