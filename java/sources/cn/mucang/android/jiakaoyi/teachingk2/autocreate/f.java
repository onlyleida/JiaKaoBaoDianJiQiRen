package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class f {
    public static cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.c a(k kVar, CarPos carPos) {
        Pos pos = carPos.rearAxlePoint;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, cVar.f5820a, cVar.b) + 20.0d;
        Line line = kVar.k;
        Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(line.start, line.end, dK);
        Line line2 = kVar.m;
        Pos posI = cn.mucang.android.jiakaoyi.hpmap.d.a.i(lineP, new Line(line2.start, line2.end));
        Pos pos2 = carPos.rearAxlePoint;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        double dK2 = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos2, cVar2.b, cVar2.c) + (Math.sin(Math.toRadians(5.5d)) * 165.0d * 2.0d);
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(lineP.end, lineP.start, carPos.L);
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posI, lineP.start, dK2);
        cn.mucang.android.jiakaoyi.signal.utils.b bVarG = kVar.g();
        Pos posA = bVarG.a(posS);
        Pos posA2 = bVarG.a(posT);
        int i = (cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD).gear;
        List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posA, posA2, 25.0d);
        Iterator<TraceItemModel> it = listB.iterator();
        while (it.hasNext()) {
            it.next().set(0, Videoio.CAP_OPENNI, Step.K2_ShangPoQiBu.type, 0, 0, 0, i, 0);
        }
        listB.get(listB.size() - 1).setPointType(1).setHandbrake(1);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.c cVar3 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.c();
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_ShangPoQiBu, 1, 2);
        cVar3.f6197a = bVar;
        bVar.f6203a = listB;
        bVar.b = new ArrayList();
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list = cVar3.f6197a.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posA2, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA, posA2, 50.0d)), 0.0d);
        aVar.e();
        list.add(aVar);
        return cVar3;
    }
}
