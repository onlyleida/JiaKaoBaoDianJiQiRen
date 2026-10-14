package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.c.b;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class C2ZhiJiaoRenderModel extends K2RenderModel {
    public Line line23;
    public Line line34;
    public Line line56;
    public Line line61;
    public c reportRect;
    public boolean turnLeft;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    public void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line23, list, mapView, i, false);
        addLine(this.line34, list, mapView, i, false);
        addLine(this.line56, list, mapView, i, false);
        addLine(this.line61, list, mapView, i, false);
        Pos pos = this.startLine.start;
        String strValueOf = String.valueOf(1);
        Line line = this.startLine;
        Pos pos2 = line.end;
        Pos pos3 = line.start;
        float f2 = a.f3680a;
        addPoint(pos, list, strValueOf, -1282049, mapView, createTxtPos(pos2, pos3, f2));
        Pos pos4 = this.startLine.end;
        String strValueOf2 = String.valueOf(2);
        Line line2 = this.startLine;
        addPoint(pos4, list, strValueOf2, -1282049, mapView, createTxtPos(line2.start, line2.end, f2));
        addPoint(this.line23.end, list, String.valueOf(3), -1282049, mapView, createTxtPos(this.line56.end, this.line23.end, f2));
        addPoint(this.line34.end, list, String.valueOf(4), -1282049, mapView, createTxtPos(this.line56.start, this.line34.end, f2));
        addPoint(this.endLine.end, list, String.valueOf(5), -1282049, mapView, createTxtPos(this.line34.end, this.endLine.end, f2));
        addPoint(this.line61.start, list, String.valueOf(6), -1282049, mapView, createTxtPos(this.line34.start, this.line56.end, f2));
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

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Line line = this.startLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.end, line.start, this.line23.lineWidth + this.fenceDistance));
        arrayList2.add(b.h(this.startLine.start, this.line56.end, this.endLine.end, -(this.line23.lineWidth + this.fenceDistance)));
        Line line2 = this.endLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line2.start, line2.end, this.line23.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Line line3 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line3.start, line3.end, this.line23.lineWidth + this.fenceDistance));
        Line line4 = this.line23;
        arrayList3.add(b.h(line4.start, line4.end, this.line34.end, line4.lineWidth + this.fenceDistance));
        Line line5 = this.endLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line5.end, line5.start, this.line23.lineWidth + this.fenceDistance));
        arrayList.add(arrayList3);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected Pos getMapNamePos() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        Pos pos = this.line23.end;
        Line line = this.line56;
        arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos, line.start, line.end));
        arrayList.add(this.line56.end);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.line34.start);
        arrayList.add(this.line34.end);
        arrayList.add(this.line56.start);
        arrayList.add(this.line56.end);
        return arrayList;
    }
}
