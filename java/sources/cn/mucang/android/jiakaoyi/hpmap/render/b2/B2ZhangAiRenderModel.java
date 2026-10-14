package cn.mucang.android.jiakaoyi.hpmap.render.b2;

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
public class B2ZhangAiRenderModel extends B2RenderModel {
    public float discusRadius;
    public Line line110;
    public Line line29;
    public Pos pos3;
    public Pos pos4;
    public Pos pos5;
    public Pos pos6;
    public Pos pos7;
    public Pos pos8;
    public c reportRect;

    private g.a getConfig() {
        g.a aVar = new g.a(this.discusRadius, -657931, -65536);
        aVar.d(2.0f, -65536);
        aVar.c(true);
        return aVar;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.line110, list, mapView, i, false);
        addLine(this.line29, list, mapView, i, false);
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
        Pos pos6 = this.pos3;
        addCircle(pos6, list, "3", mapView, createTxtPos(this.startLine.start, pos6, f2), getConfig());
        Pos pos7 = this.pos4;
        addCircle(pos7, list, Constants.VIA_TO_TYPE_QZONE, mapView, createTxtPos(this.startLine.start, pos7, f2), getConfig());
        Pos pos8 = this.pos5;
        addCircle(pos8, list, "5", mapView, createTxtPos(this.startLine.start, pos8, f2), getConfig());
        Pos pos9 = this.pos6;
        addCircle(pos9, list, Constants.VIA_SHARE_TYPE_INFO, mapView, createTxtPos(this.startLine.start, pos9, f2), getConfig());
        Pos pos10 = this.pos7;
        addCircle(pos10, list, "7", mapView, createTxtPos(this.startLine.start, pos10, f2), getConfig());
        Pos pos11 = this.pos8;
        addCircle(pos11, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, mapView, createTxtPos(this.startLine.start, pos11, f2), getConfig());
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
