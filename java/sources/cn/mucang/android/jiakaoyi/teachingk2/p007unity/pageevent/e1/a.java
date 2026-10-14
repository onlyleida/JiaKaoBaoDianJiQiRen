package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.e1;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.m;
import cn.mucang.android.jiakaoyi.hpmap.a.b.b;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OperateResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.v0;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends v0.a {
    private boolean b = true;
    private m c = null;

    private boolean c(m mVar, Pos pos) {
        double dDistanceSquare = pos.distanceSquare(mVar.l);
        double d2 = mVar.n;
        double d3 = d2 * d2;
        double d4 = mVar.o;
        return dDistanceSquare > d3 && dDistanceSquare < d4 * d4;
    }

    private boolean d(m mVar, Pos pos) {
        double dDistanceSquare = pos.distanceSquare(mVar.l);
        double d2 = mVar.o;
        return dDistanceSquare > d2 * d2;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.a, cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public void a(boolean z) {
        super.a(z);
        if (z) {
            return;
        }
        this.b = true;
        this.c = null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public OperateResultModel b(e eVar, String str) {
        j jVar;
        c cVar;
        CarPos carPosC = eVar.c();
        if (!this.f8667a || (jVar = n.b().c) == null) {
            return null;
        }
        List<m> list = jVar.r;
        if (!g.b(list) && carPosC != null && (cVar = carPosC.carRect) != null && cVar.f5822e != null) {
            OperateResultModel operateResultModel = new OperateResultModel();
            operateResultModel.projectId = str;
            m mVar = this.c;
            if (mVar != null && d(mVar, carPosC.wheelRightBack) && d(mVar, carPosC.wheelRightFront) && d(mVar, carPosC.wheelLeftBack) && d(mVar, carPosC.wheelLeftFront)) {
                this.c = null;
            }
            if (this.c == null) {
                for (m mVar2 : list) {
                    if (!mVar2.k.h(carPosC.bound) && c(mVar2, carPosC.wheelRightBack) && c(mVar2, carPosC.wheelRightFront) && c(mVar2, carPosC.wheelLeftBack) && c(mVar2, carPosC.wheelLeftFront)) {
                        this.c = mVar2;
                        break;
                    }
                }
            }
            Wheel wheel = Wheel.None;
            m mVar3 = this.c;
            int i = 0;
            if (mVar3 != null) {
                if (b.b(mVar3.u, carPosC) != wheel) {
                    i = 3;
                } else if (b.b(mVar3.v, carPosC) != wheel) {
                    i = 2;
                }
                operateResultModel.inside = 1;
                operateResultModel.pressState = i;
                this.b = true;
                return operateResultModel;
            }
            operateResultModel.inside = 0;
            operateResultModel.pressState = 0;
            if (this.b) {
                this.b = false;
                return operateResultModel;
            }
        }
        return null;
    }
}
