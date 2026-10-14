package cn.mucang.android.jiakaoyi.hpmap.render.moto;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MotoShangPoRenderModel extends K2RenderModel {
    public Line leftLine;
    public Line line1112;
    public Line line34;
    public Line line56;
    public Line line78;
    public Line line910;
    public c reportRect;
    public Line rightLine;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        addLine(this.line34, list, mapView, -3212, true);
        Line line = this.line56;
        Line line2 = this.line78;
        addArea(Arrays.asList(line.start, line.end, line2.start, line2.end), list, mapView, -3212);
        if (this.line1112 != null) {
            addLine(this.line910, list, mapView, -3212, true);
        }
        int i = z ? -16711936 : -1;
        addLine(this.rightLine, list, mapView, i, false);
        addLine(this.leftLine, list, mapView, i, false);
        Line line3 = this.startLine;
        Pos pos = line3.start;
        Pos pos2 = line3.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, ((double) f2) * 0.5d));
        Line line4 = this.startLine;
        Pos pos3 = line4.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line4.start, pos3, ((double) f2) * 0.5d));
        Line line5 = this.line34;
        Pos pos4 = line5.start;
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(line5.end, pos4, ((double) f2) * 0.5d));
        Line line6 = this.line34;
        Pos pos5 = line6.end;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(line6.start, pos5, ((double) f2) * 0.5d));
        Line line7 = this.line56;
        Pos pos6 = line7.start;
        addPoint(pos6, list, "5", -1282049, mapView, createTxtPos(line7.end, pos6, ((double) f2) * 0.5d));
        Line line8 = this.line56;
        Pos pos7 = line8.end;
        addPoint(pos7, list, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, createTxtPos(line8.start, pos7, ((double) f2) * 0.5d));
        Line line9 = this.line78;
        Pos pos8 = line9.start;
        addPoint(pos8, list, "7", -1282049, mapView, createTxtPos(line9.end, pos8, ((double) f2) * 0.5d));
        Line line10 = this.line78;
        Pos pos9 = line10.end;
        addPoint(pos9, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, createTxtPos(line10.start, pos9, ((double) f2) * 0.5d));
        if (this.line1112 != null) {
            Line line11 = this.line910;
            Pos pos10 = line11.start;
            addPoint(pos10, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(line11.end, pos10, ((double) f2) * 0.5d));
            Line line12 = this.line910;
            Pos pos11 = line12.end;
            addPoint(pos11, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(line12.start, pos11, ((double) f2) * 0.5d));
            Line line13 = this.endLine;
            Pos pos12 = line13.start;
            addPoint(pos12, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, -1282049, mapView, createTxtPos(line13.end, pos12, ((double) f2) * 0.5d));
            Line line14 = this.endLine;
            Pos pos13 = line14.end;
            addPoint(pos13, list, Constants.VIA_REPORT_TYPE_SET_AVATAR, -1282049, mapView, createTxtPos(line14.start, pos13, ((double) f2) * 0.5d));
        } else {
            Line line15 = this.endLine;
            Pos pos14 = line15.start;
            addPoint(pos14, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(line15.end, pos14, ((double) f2) * 0.5d));
            Line line16 = this.endLine;
            Pos pos15 = line16.end;
            addPoint(pos15, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(line16.start, pos15, ((double) f2) * 0.5d));
        }
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
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.start, line.end, (this.leftLine.lineWidth * 1.5d) + this.fenceDistance));
        if (this.line1112 != null) {
            Line line2 = this.endLine;
            arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line2.end, line2.start, (this.leftLine.lineWidth * 1.5d) + this.fenceDistance));
        } else {
            Line line3 = this.endLine;
            arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line3.start, line3.end, (this.leftLine.lineWidth * 1.5d) + this.fenceDistance));
        }
        arrayList.add(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Line line4 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line4.end, line4.start, (this.rightLine.lineWidth * 1.5d) + this.fenceDistance));
        if (this.line1112 != null) {
            Line line5 = this.endLine;
            arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line5.start, line5.end, (this.rightLine.lineWidth * 1.5d) + this.fenceDistance));
        } else {
            Line line6 = this.endLine;
            arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line6.end, line6.start, (this.rightLine.lineWidth * 1.5d) + this.fenceDistance));
        }
        arrayList.add(arrayList3);
        return arrayList;
    }
}
