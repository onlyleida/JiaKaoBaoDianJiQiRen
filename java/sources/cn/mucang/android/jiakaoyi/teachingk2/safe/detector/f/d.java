package cn.mucang.android.jiakaoyi.teachingk2.safe.detector.f;

import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.FenceDetector;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.FenceBrakeManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class d implements cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<cn.mucang.android.jiakaoyi.teachingk2.res.model.a, List<Pos>> f7668a = new HashMap();

    private void b(cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar) {
    }

    private static CarBrakeDesc c(List<Pos> list, List<Pos> list2, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Pos posJ;
        int i = 0;
        do {
            posJ = null;
            if (i >= list.size() - 1) {
                return null;
            }
            Pos pos = list.get(i);
            i++;
            Pos pos2 = list.get(i);
            int i2 = 0;
            while (i2 < list2.size() - 1) {
                int i3 = i2 + 1;
                if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, list2.get(i2), list2.get(i3))) {
                    posJ = cn.mucang.android.jiakaoyi.hpmap.d.a.j(pos, pos2, list2.get(i2), list2.get(i3));
                    break;
                }
                i2 = i3;
            }
        } while (posJ == null);
        CarPos carPosC = eVar.c();
        posJ.rotate(carPosC.center, Math.cos(Math.toRadians(carPosC.degree)), Math.sin(-Math.toRadians(carPosC.degree)));
        Pos pos3 = carPosC.center;
        posJ.translate(-pos3.x, -pos3.y);
        if (posJ.x > 0.0d) {
            double d2 = posJ.y;
            if (d2 < -26.720000000000002d) {
                return CarBrakeDesc.DESC_LEFT_FRONT;
            }
            return d2 > 26.720000000000002d ? CarBrakeDesc.DESC_RIGHT_FRONT : CarBrakeDesc.DESC_FRONT;
        }
        double d3 = posJ.y;
        if (d3 < -26.720000000000002d) {
            return CarBrakeDesc.DESC_LEFT_BACK;
        }
        return d3 > 26.720000000000002d ? CarBrakeDesc.DESC_RIGHT_BACK : CarBrakeDesc.DESC_BACK;
    }

    private CarBrakeDesc d(cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar, cn.mucang.android.jiakaoyi.signal.c.e eVar, List<FenceDetector.c> list) {
        for (FenceDetector.c cVar : list) {
            if (!cVar.c.h(aVar.f7592d)) {
                if (this.f7668a.isEmpty()) {
                    b(aVar);
                }
                CarBrakeDesc carBrakeDescC = c(cVar.b, aVar.c, eVar);
                if (carBrakeDescC != null) {
                    if (cVar.f7657a == FenceDetector.Type.Trigger) {
                        return carBrakeDescC;
                    }
                    return null;
                }
            }
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.detector.c
    public CarBrakeDesc a(cn.mucang.android.jiakaoyi.teachingk2.res.model.a aVar, cn.mucang.android.jiakaoyi.signal.c.e eVar, List<FenceDetector.c> list) {
        if (FenceBrakeManager.b()) {
            return d(aVar, eVar, list);
        }
        return null;
    }
}
