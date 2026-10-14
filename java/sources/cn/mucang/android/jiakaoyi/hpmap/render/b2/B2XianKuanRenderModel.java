package cn.mucang.android.jiakaoyi.hpmap.render.b2;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.g;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class B2XianKuanRenderModel extends B2RenderModel {
    public Line line110;
    public Line line29;
    public Line line34;
    public Line line56;
    public Line line78;
    public float poleRadius;
    public c reportRect;

    private g.a getConfig() {
        return new g.a(this.poleRadius, -65536, -1);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line110, list, mapView, i, false);
        addLine(this.line29, list, mapView, i, false);
        addLine(this.line34, list, mapView, i, true);
        addLine(this.line56, list, mapView, i, true);
        addLine(this.line78, list, mapView, i, true);
        Line line = this.startLine;
        Pos pos = line.start;
        Pos pos2 = line.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Line line2 = this.startLine;
        Pos pos3 = line2.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line2.start, pos3, f2));
        Line line3 = this.endLine;
        Pos pos4 = line3.start;
        addPoint(pos4, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(line3.end, pos4, f2));
        Line line4 = this.endLine;
        Pos pos5 = line4.end;
        addPoint(pos5, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(line4.start, pos5, f2));
        Line line5 = this.line34;
        Pos pos6 = line5.start;
        addCircle(pos6, list, "3", mapView, createTxtPos(line5.end, pos6, f2), getConfig());
        Line line6 = this.line34;
        Pos pos7 = line6.end;
        addCircle(pos7, list, Constants.VIA_TO_TYPE_QZONE, mapView, createTxtPos(line6.start, pos7, f2), getConfig());
        Line line7 = this.line56;
        Pos pos8 = line7.start;
        addCircle(pos8, list, "5", mapView, createTxtPos(line7.end, pos8, f2), getConfig());
        Line line8 = this.line56;
        Pos pos9 = line8.end;
        addCircle(pos9, list, Constants.VIA_SHARE_TYPE_INFO, mapView, createTxtPos(line8.start, pos9, f2), getConfig());
        Line line9 = this.line78;
        Pos pos10 = line9.start;
        addCircle(pos10, list, "7", mapView, createTxtPos(line9.end, pos10, f2), getConfig());
        Line line10 = this.line78;
        Pos pos11 = line10.end;
        addCircle(pos11, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, mapView, createTxtPos(line10.start, pos11, f2), getConfig());
        if (this.reportRect == null || !MucangConfig.v()) {
            return;
        }
        c cVar = this.reportRect;
        addLine(new Line(cVar.f5820a, cVar.b), list, mapView, -65536, true);
        c cVar2 = this.reportRect;
        addLine(new Line(cVar2.b, cVar2.c), list, mapView, -65536, true);
        c cVar3 = this.reportRect;
        addLine(new Line(cVar3.c, cVar3.f5821d), list, mapView, -65536, true);
        c cVar4 = this.reportRect;
        addLine(new Line(cVar4.f5821d, cVar4.f5820a), list, mapView, -65536, true);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<List<Pos>> getFenceList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Line line = this.startLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.end, line.start, line.lineWidth + this.fenceDistance));
        Line line2 = this.endLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line2.start, line2.end, line2.lineWidth + this.fenceDistance));
        ArrayList arrayList3 = new ArrayList();
        Line line3 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line3.start, line3.end, line3.lineWidth + this.fenceDistance));
        Line line4 = this.endLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line4.end, line4.start, line4.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
        arrayList.add(arrayList3);
        return arrayList;
    }
}
