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
public class MotoDanBianRenderModel extends K2RenderModel {
    public Line line112;
    public Line line211;
    public Pos pos10;
    public Pos pos3;
    public Pos pos4;
    public Pos pos5;
    public Pos pos6;
    public Pos pos7;
    public Pos pos8;
    public Pos pos9;
    public c reportRect;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line112, list, mapView, i, false);
        addLine(this.line211, list, mapView, i, false);
        Pos pos = this.line112.start;
        Pos pos2 = this.line211.start;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Pos pos3 = this.line211.start;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(this.line112.start, pos3, f2));
        Pos pos4 = this.line211.end;
        addPoint(pos4, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, -1282049, mapView, createTxtPos(this.line112.end, pos4, f2));
        Pos pos5 = this.line112.end;
        addPoint(pos5, list, Constants.VIA_REPORT_TYPE_SET_AVATAR, -1282049, mapView, createTxtPos(this.line211.end, pos5, f2));
        Pos pos6 = this.pos3;
        addPoint(pos6, list, "3", -1282049, mapView, createTxtPos(this.pos4, pos6, f2));
        Pos pos7 = this.pos4;
        addPoint(pos7, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(this.pos3, pos7, f2));
        Pos pos8 = this.pos5;
        addPoint(pos8, list, "5", -1282049, mapView, createTxtPos(this.pos6, pos8, f2));
        Pos pos9 = this.pos6;
        addPoint(pos9, list, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, createTxtPos(this.pos5, pos9, f2));
        Pos pos10 = this.pos7;
        addPoint(pos10, list, "7", -1282049, mapView, createTxtPos(this.pos8, pos10, f2));
        Pos pos11 = this.pos8;
        addPoint(pos11, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, createTxtPos(this.pos7, pos11, f2));
        Pos pos12 = this.pos9;
        addPoint(pos12, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(this.pos10, pos12, f2));
        Pos pos13 = this.pos10;
        addPoint(pos13, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(this.pos9, pos13, f2));
        addArea(Arrays.asList(this.pos3, this.pos4, this.pos5, this.pos6), list, mapView, -657931);
        addArea(Arrays.asList(this.pos7, this.pos8, this.pos9, this.pos10), list, mapView, -657931);
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
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.end, line.start, line.lineWidth + this.fenceDistance));
        Line line2 = this.endLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line2.start, line2.end, line2.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Line line3 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line3.start, line3.end, line3.lineWidth + this.fenceDistance));
        Line line4 = this.endLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line4.end, line4.start, line4.lineWidth + this.fenceDistance));
        arrayList.add(arrayList3);
        return arrayList;
    }
}
