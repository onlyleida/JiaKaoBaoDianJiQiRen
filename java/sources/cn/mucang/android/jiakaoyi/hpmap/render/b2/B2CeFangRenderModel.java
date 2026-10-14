package cn.mucang.android.jiakaoyi.hpmap.render.b2;

import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class B2CeFangRenderModel extends B2RenderModel {
    public Line line23;
    public Line line34;
    public Line line36;
    public Line line45;
    public Line line56;
    public Line line67;
    public Line line81;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line23, list, mapView, i, false);
        addLine(this.line34, list, mapView, i, false);
        addLine(this.line45, list, mapView, i, false);
        addLine(this.line56, list, mapView, i, false);
        addLine(this.line67, list, mapView, i, false);
        addLine(this.line81, list, mapView, i, false);
        addLine(this.line36, list, mapView, -3212, true);
        Line line = this.startLine;
        Pos pos = line.start;
        Pos pos2 = line.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Line line2 = this.startLine;
        Pos pos3 = line2.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line2.start, pos3, f2));
        Pos pos4 = this.line23.end;
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(this.startLine.end, pos4, this.line34.end, f2));
        Pos pos5 = this.line34.end;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(this.line23.end, pos5, f2));
        Pos pos6 = this.line45.end;
        Line line3 = this.line56;
        addPoint(pos6, list, "5", -1282049, mapView, createTxtPos(line3.end, line3.start, f2));
        addPoint(this.line56.end, list, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, createTxtPos(this.endLine.start, this.line67.start, this.line45.end, f2));
        Line line4 = this.endLine;
        addPoint(line4.start, list, "7", -1282049, mapView, createTxtPos(line4.end, this.line67.end, f2));
        Line line5 = this.endLine;
        Pos pos7 = line5.end;
        addPoint(pos7, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, createTxtPos(line5.start, pos7, f2));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<List<Pos>> getFenceList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Line line = this.startLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.start, line.end, this.line23.lineWidth + this.fenceDistance));
        Pos pos = this.startLine.end;
        Line line2 = this.line23;
        arrayList2.add(createTxtPos(pos, line2.end, this.line34.end, this.fenceDistance + line2.lineWidth));
        Line line3 = this.line23;
        arrayList2.add(createTxtPos(line3.end, this.line34.end, this.line45.end, -(line3.lineWidth + this.fenceDistance)));
        arrayList2.add(createTxtPos(this.line34.end, this.line45.end, this.line56.end, -(this.line23.lineWidth + this.fenceDistance)));
        arrayList2.add(createTxtPos(this.line45.end, this.line56.end, this.line67.end, this.fenceDistance + this.line23.lineWidth));
        Line line4 = this.endLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line4.end, line4.start, this.line23.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Line line5 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line5.end, line5.start, this.line23.lineWidth + this.fenceDistance));
        Line line6 = this.endLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line6.start, line6.end, this.line23.lineWidth + this.fenceDistance));
        arrayList.add(arrayList3);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.line34.start);
        arrayList.add(this.line34.end);
        arrayList.add(this.line56.start);
        arrayList.add(this.line56.end);
        arrayList.add(this.endLine.start);
        arrayList.add(this.endLine.end);
        return arrayList;
    }
}
