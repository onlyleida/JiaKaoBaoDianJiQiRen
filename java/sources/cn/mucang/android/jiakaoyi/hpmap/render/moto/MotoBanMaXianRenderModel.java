package cn.mucang.android.jiakaoyi.hpmap.render.moto;

import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.e;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import com.tencent.connect.common.Constants;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MotoBanMaXianRenderModel extends K2RenderModel {
    public c banmaxianArea;
    public c judgeArea;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        Line line = this.startLine;
        Pos pos = line.start;
        Pos pos2 = line.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, ((double) f2) * 0.5d));
        Line line2 = this.startLine;
        Pos pos3 = line2.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line2.start, pos3, ((double) f2) * 0.5d));
        Line line3 = this.endLine;
        Pos pos4 = line3.start;
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(line3.end, pos4, ((double) f2) * 0.5d));
        Line line4 = this.endLine;
        Pos pos5 = line4.end;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(line4.start, pos5, ((double) f2) * 0.5d));
        c cVar = this.judgeArea;
        if (cVar != null) {
            Pos pos6 = cVar.f5820a;
            addPoint(pos6, list, "评判点1", -1282049, mapView, createTxtPos(cVar.b, pos6, ((double) f2) * 0.5d));
            Pos pos7 = this.judgeArea.b;
            addPoint(pos7, list, "评判点2", -1282049, mapView, createTxtPos(pos7, pos7, ((double) f2) * 0.5d));
            c cVar2 = this.judgeArea;
            Pos pos8 = cVar2.c;
            addPoint(pos8, list, "评判点3", -1282049, mapView, createTxtPos(cVar2.f5821d, pos8, ((double) f2) * 0.5d));
            c cVar3 = this.judgeArea;
            Pos pos9 = cVar3.f5821d;
            addPoint(pos9, list, "评判点4", -1282049, mapView, createTxtPos(cVar3.c, pos9, ((double) f2) * 0.5d));
            c cVar4 = this.judgeArea;
            addLine(new Line(cVar4.f5820a, cVar4.b), list, mapView, -10032010, true);
            c cVar5 = this.judgeArea;
            addLine(new Line(cVar5.c, cVar5.f5821d), list, mapView, -46528, true);
        }
        c cVar6 = this.banmaxianArea;
        if (cVar6 != null) {
            Pos posMeanWith = new Pos(cVar6.f5820a).meanWith(this.banmaxianArea.b);
            Pos posMeanWith2 = new Pos(this.banmaxianArea.c).meanWith(this.banmaxianArea.f5821d);
            c cVar7 = this.banmaxianArea;
            double dDistanceTo = cVar7.f5820a.distanceTo(cVar7.b);
            c cVar8 = this.banmaxianArea;
            e.a aVar = new e.a((float) Math.max(dDistanceTo, cVar8.c.distanceTo(cVar8.f5821d)), -1);
            aVar.c(30.0f);
            aVar.d(30.0f);
            list.add(new e(mapView, posMeanWith, posMeanWith2, aVar));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        return null;
    }
}
