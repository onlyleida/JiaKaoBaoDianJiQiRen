package cn.mucang.android.jiakaoyi.hpmap.render.b2;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class B2ShanLuRenderModel extends B2RenderModel {
    public Line firstHonkCheckLine;
    public Line firstHonkReportLine;
    public List<Pos> leftPoints;
    public List<Pos> middlePoints;
    public List<Pos> rightPoints;
    public Line secondHonkCheckLine;
    public Line secondHonkReportLine;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        list.add(new l(mapView, new ArrayList(this.leftPoints), 15.0f, i));
        list.add(new l(mapView, new ArrayList(this.middlePoints), 15.0f, i));
        list.add(new l(mapView, new ArrayList(this.rightPoints), 15.0f, i));
        addPoint(this.startLine.start, list, "", -1282049, mapView, null);
        addPoint(this.startLine.end, list, "", -1282049, mapView, null);
        addPoint(this.endLine.start, list, "", -1282049, mapView, null);
        addPoint(this.endLine.end, list, "", -1282049, mapView, null);
        Line line = this.firstHonkReportLine;
        if (line != null) {
            addLine(line, list, mapView, i, false);
        }
        Line line2 = this.firstHonkCheckLine;
        if (line2 != null) {
            addLine(line2, list, mapView, i, false);
        }
        Line line3 = this.secondHonkReportLine;
        if (line3 != null) {
            addLine(line3, list, mapView, i, false);
        }
        Line line4 = this.secondHonkCheckLine;
        if (line4 != null) {
            addLine(line4, list, mapView, i, false);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<List<Pos>> getFenceList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        while (i < this.leftPoints.size() - 1) {
            int i2 = i + 1;
            int i3 = i;
            Line line = getLine(this.leftPoints.get(i), this.leftPoints.get(i2), (this.startLine.lineWidth + this.fenceDistance) * 2.0d, true);
            if (i3 == 0) {
                arrayList2.add(line.start);
            }
            arrayList2.add(line.end);
            i = i2;
        }
        int i4 = 0;
        while (i4 < this.rightPoints.size() - 1) {
            int i5 = i4 + 1;
            Line line2 = getLine(this.rightPoints.get(i4), this.rightPoints.get(i5), (this.startLine.lineWidth + this.fenceDistance) * 2.0d, false);
            if (i4 == 0) {
                arrayList3.add(line2.start);
            }
            arrayList3.add(line2.end);
            i4 = i5;
        }
        arrayList.add(arrayList2);
        arrayList.add(arrayList3);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList(this.leftPoints);
        ArrayList arrayList2 = new ArrayList(this.rightPoints);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        return arrayList;
    }
}
