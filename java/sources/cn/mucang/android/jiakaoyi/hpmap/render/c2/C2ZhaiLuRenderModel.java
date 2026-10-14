package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.c.b;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class C2ZhaiLuRenderModel extends K2RenderModel {
    public Line line23;
    public Line line34;
    public Line line41;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    public void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line23, list, mapView, i, false);
        addLine(this.line34, list, mapView, i, false);
        addLine(this.line41, list, mapView, i, false);
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
        Pos pos5 = this.line34.start;
        String strValueOf3 = String.valueOf(3);
        Line line3 = this.line34;
        addPoint(pos5, list, strValueOf3, -1282049, mapView, createTxtPos(line3.end, line3.start, f2));
        Pos pos6 = this.line34.end;
        String strValueOf4 = String.valueOf(4);
        Line line4 = this.line34;
        addPoint(pos6, list, strValueOf4, -1282049, mapView, createTxtPos(line4.start, line4.end, f2));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Line line = this.startLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.start, line.end, this.line23.lineWidth + this.fenceDistance));
        Pos pos = this.startLine.end;
        Line line2 = this.line23;
        arrayList2.add(b.h(pos, line2.end, this.line34.end, -(line2.lineWidth + this.fenceDistance)));
        Line line3 = this.line34;
        arrayList2.add(b.h(line3.start, line3.end, this.line41.end, -(this.line23.lineWidth + this.fenceDistance)));
        Line line4 = this.startLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line4.end, line4.start, this.line23.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected Pos getMapNamePos() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.line34.start);
        arrayList.add(this.line34.end);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.line23.start);
        arrayList.add(this.line23.end);
        arrayList.add(this.line41.start);
        arrayList.add(this.line41.end);
        return arrayList;
    }
}
