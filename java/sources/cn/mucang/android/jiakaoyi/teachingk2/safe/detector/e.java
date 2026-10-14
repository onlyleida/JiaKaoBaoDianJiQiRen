package cn.mucang.android.jiakaoyi.teachingk2.safe.detector;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    public static PolygonModel a(CarPos carPos) {
        List<cn.mucang.android.jiakaoyi.teachingk2.res.model.b> list = n.b().f7603g;
        if (g.b(list)) {
            return null;
        }
        for (cn.mucang.android.jiakaoyi.teachingk2.res.model.b bVar : list) {
            if (bVar.b(carPos)) {
                return bVar.f7595a;
            }
        }
        return null;
    }

    public static PolygonModel b(Pos pos) {
        List<cn.mucang.android.jiakaoyi.teachingk2.res.model.b> list = n.b().f7603g;
        if (g.b(list)) {
            return null;
        }
        for (cn.mucang.android.jiakaoyi.teachingk2.res.model.b bVar : list) {
            if (bVar.c(pos)) {
                return bVar.f7595a;
            }
        }
        return null;
    }
}
