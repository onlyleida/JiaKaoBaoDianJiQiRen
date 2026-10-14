package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.a1;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OperateResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.v0;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends v0.a {
    private boolean b = true;

    private void c(OperateResultModel operateResultModel, cn.mucang.android.jiakaoyi.hpmap.a.a.g.a aVar, CarPos carPos) {
        cn.mucang.android.jiakaoyi.signal.pos.a aVar2;
        cn.mucang.android.jiakaoyi.signal.pos.a aVar3;
        if (g.b(aVar.i) || aVar.i.size() < 2) {
            return;
        }
        List<Pos> list = aVar.i;
        double[] dArr = new double[2];
        double d2 = 1.0E10d;
        int i = -1;
        cn.mucang.android.jiakaoyi.signal.pos.a aVar4 = new cn.mucang.android.jiakaoyi.signal.pos.a();
        cn.mucang.android.jiakaoyi.signal.pos.a aVarM = carPos.bound.m(200.0f, 200.0f, 200.0f, 200.0f);
        int i2 = 0;
        while (i2 < list.size() - 1) {
            Pos pos = list.get(i2);
            int i3 = i2 + 1;
            Pos pos2 = list.get(i3);
            aVar4.a();
            int i4 = i2;
            aVar4.j(pos.x, pos.y);
            aVar4.j(pos2.x, pos2.y);
            if (aVarM.h(aVar4)) {
                aVar2 = aVar4;
                aVar3 = aVarM;
            } else {
                double dM = cn.mucang.android.jiakaoyi.hpmap.d.a.m(carPos.center, pos, pos2, dArr);
                aVar2 = aVar4;
                aVar3 = aVarM;
                if ((pos.x - dArr[0]) * (dArr[0] - pos2.x) >= 0.0d && (pos.y - dArr[1]) * (dArr[1] - pos2.y) >= 0.0d && dM < d2) {
                    d2 = dM;
                    i = i4;
                }
            }
            i2 = i3;
            aVar4 = aVar2;
            aVarM = aVar3;
        }
        if (i < 0) {
            operateResultModel.inside = 0;
            return;
        }
        int iMax = Math.max(0, i - 5);
        int iMin = Math.min(list.size() - 1, i + 5);
        double d3 = 1.0E9d;
        double d4 = 1.0E9d;
        boolean zF = false;
        while (iMax < iMin) {
            Pos pos3 = list.get(iMax);
            iMax++;
            Pos pos4 = list.get(iMax);
            if (!zF) {
                zF = c.f(carPos.carRect, pos3, pos4);
            }
            double dM2 = cn.mucang.android.jiakaoyi.hpmap.d.a.m(carPos.wheelRightFront, pos3, pos4, dArr);
            double dM3 = cn.mucang.android.jiakaoyi.hpmap.d.a.m(carPos.wheelRightBack, pos3, pos4, dArr);
            if (dM2 < d3) {
                d3 = dM2;
            }
            if (dM3 < d4) {
                d4 = dM3;
            }
        }
        operateResultModel.pressState = zF ? 1 : 0;
        operateResultModel.distance = (float) Math.sqrt(Math.min(d3, d4));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.a, cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public void a(boolean z) {
        super.a(z);
        if (z) {
            return;
        }
        this.b = true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public OperateResultModel b(e eVar, String str) {
        j jVar;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.a next;
        boolean z;
        CarPos carPosC = eVar.c();
        if (!this.f8667a || (jVar = n.b().c) == null) {
            return null;
        }
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.a> list = jVar.p;
        if (!g.b(list) && carPosC != null && (cVar = carPosC.carRect) != null && cVar.f5822e != null) {
            OperateResultModel operateResultModel = new OperateResultModel();
            operateResultModel.projectId = str;
            Iterator<cn.mucang.android.jiakaoyi.hpmap.a.a.g.a> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    z = false;
                    break;
                }
                next = it.next();
                cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPosC.carRect;
                Line line = next.j;
                if (c.f(cVar2, line.start, line.end) || c.g(next.p, carPosC.carRect)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                operateResultModel.inside = 1;
                c(operateResultModel, next, carPosC);
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
