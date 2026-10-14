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
public class B2ZhuangKaoRenderModel extends B2RenderModel {
    public Pos b3;
    public Pos b4;
    public Pos b5;
    public Pos b6;
    public Pos b7;
    public Pos b8;
    public Line line101;
    public Line line23;
    public Line line34;
    public Line line36;
    public Line line45;
    public Line line56;
    public Line line58;
    public Line line67;
    public Line line78;
    public Line line79;
    public float poleRadius;
    public c reportRect;

    private g.a getConfig() {
        return new g.a(this.poleRadius, -65536, -1);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        addLine(this.line36, list, mapView, -3212, true);
        addLine(this.line67, list, mapView, -3212, true);
        addLine(this.line56, list, mapView, -3212, true);
        int i = z ? -16711936 : -1;
        addLine(this.line23, list, mapView, i, false);
        addLine(this.line34, list, mapView, i, false);
        addLine(this.line45, list, mapView, i, false);
        addLine(this.line58, list, mapView, i, false);
        addLine(this.line78, list, mapView, i, false);
        addLine(this.line79, list, mapView, i, false);
        addLine(this.line101, list, mapView, i, false);
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
        Line line4 = this.line56;
        Pos pos7 = line4.end;
        addPoint(pos7, list, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, createTxtPos(line4.start, pos7, f2));
        Line line5 = this.line78;
        Pos pos8 = line5.start;
        addPoint(pos8, list, "7", -1282049, mapView, createTxtPos(this.line79.end, pos8, line5.end, f2));
        Line line6 = this.line78;
        Pos pos9 = line6.end;
        addPoint(pos9, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, createTxtPos(line6.start, pos9, f2));
        Pos pos10 = this.line79.end;
        Line line7 = this.endLine;
        addPoint(pos10, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(line7.end, line7.start, f2));
        Line line8 = this.endLine;
        Pos pos11 = line8.end;
        addPoint(pos11, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(line8.start, pos11, f2));
        addCircle(this.b3, list, null, mapView, null, getConfig());
        addCircle(this.b4, list, null, mapView, null, getConfig());
        addCircle(this.b5, list, null, mapView, null, getConfig());
        addCircle(this.b6, list, null, mapView, null, getConfig());
        addCircle(this.b7, list, null, mapView, null, getConfig());
        addCircle(this.b8, list, null, mapView, null, getConfig());
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
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.start, line.end, this.line23.lineWidth + this.fenceDistance));
        Pos pos = this.startLine.end;
        Line line2 = this.line23;
        arrayList2.add(createTxtPos(pos, line2.end, this.line34.end, this.fenceDistance + line2.lineWidth));
        Line line3 = this.line23;
        arrayList2.add(createTxtPos(line3.end, this.line34.end, this.line45.end, -(line3.lineWidth + this.fenceDistance)));
        arrayList2.add(createTxtPos(this.line34.end, this.line58.end, this.line78.start, -(this.line23.lineWidth + this.fenceDistance)));
        Line line4 = this.line78;
        arrayList2.add(createTxtPos(line4.end, line4.start, this.line79.end, this.fenceDistance + this.line23.lineWidth));
        Line line5 = this.endLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line5.end, line5.start, this.line23.lineWidth + this.fenceDistance));
        ArrayList arrayList3 = new ArrayList();
        Line line6 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line6.end, line6.start, this.line23.lineWidth + this.fenceDistance));
        Line line7 = this.endLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line7.start, line7.end, this.line23.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
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
        arrayList.add(this.line78.end);
        arrayList.add(this.line78.start);
        arrayList.add(this.endLine.start);
        arrayList.add(this.endLine.end);
        return arrayList;
    }
}
