package cn.mucang.android.jiakaoyi.hpmap.render.b2;

import android.graphics.Color;
import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class B2QiFuRenderModel extends B2RenderModel {
    public Line line112;
    public Line line211;
    public Pos p10;
    public Pos p3;
    public Pos p4;
    public Pos p5;
    public Pos p6;
    public Pos p7;
    public Pos p8;
    public Pos p9;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line112, list, mapView, i, false);
        addLine(this.line211, list, mapView, i, false);
        Line line = this.startLine;
        Pos pos = line.start;
        Pos pos2 = line.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Line line2 = this.startLine;
        Pos pos3 = line2.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line2.start, pos3, f2));
        Pos pos4 = this.p3;
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(this.p4, pos4, f2));
        Pos pos5 = this.p4;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(this.p3, pos5, f2));
        Pos pos6 = this.p5;
        addPoint(pos6, list, "5", -1282049, mapView, createTxtPos(this.p6, pos6, f2));
        Pos pos7 = this.p6;
        addPoint(pos7, list, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, createTxtPos(this.p5, pos7, f2));
        Pos pos8 = this.p7;
        addPoint(pos8, list, "7", -1282049, mapView, createTxtPos(this.p8, pos8, f2));
        Pos pos9 = this.p8;
        addPoint(pos9, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, createTxtPos(this.p7, pos9, f2));
        Pos pos10 = this.p9;
        addPoint(pos10, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(this.p10, pos10, f2));
        Pos pos11 = this.p10;
        addPoint(pos11, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(this.p9, pos11, f2));
        Line line3 = this.endLine;
        Pos pos12 = line3.start;
        addPoint(pos12, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, -1282049, mapView, createTxtPos(line3.end, pos12, f2));
        Line line4 = this.endLine;
        Pos pos13 = line4.end;
        addPoint(pos13, list, Constants.VIA_REPORT_TYPE_SET_AVATAR, -1282049, mapView, createTxtPos(line4.start, pos13, f2));
        addArea(Arrays.asList(this.p3, this.p4, this.p5, this.p6), list, mapView, Color.parseColor("#E7E7E7"));
        addArea(Arrays.asList(this.p7, this.p8, this.p9, this.p10), list, mapView, Color.parseColor("#E7E7E7"));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<List<Pos>> getFenceList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Line line = this.startLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line.start, line.end, this.line211.lineWidth + this.fenceDistance));
        Line line2 = this.endLine;
        arrayList2.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line2.end, line2.start, this.line211.lineWidth + this.fenceDistance));
        arrayList.add(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Line line3 = this.startLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line3.end, line3.start, this.line211.lineWidth + this.fenceDistance));
        Line line4 = this.endLine;
        arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(line4.start, line4.end, this.line211.lineWidth + this.fenceDistance));
        arrayList.add(arrayList3);
        return arrayList;
    }
}
