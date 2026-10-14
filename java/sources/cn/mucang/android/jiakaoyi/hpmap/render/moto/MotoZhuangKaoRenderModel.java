package cn.mucang.android.jiakaoyi.hpmap.render.moto;

import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.g;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MotoZhuangKaoRenderModel extends K2RenderModel {
    public Pos b5;
    public Pos b6;
    public Pos b7;
    public Pos b8;
    public Pos b9;
    public Line leftLine;
    public Line line1213;
    public float poleRadius;
    public c reportRect;
    public Line rightLine;

    private g.a getConfig() {
        return new g.a(this.poleRadius, -65536, -1);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        addLine(this.leftLine, list, mapView, i, false);
        addLine(this.rightLine, list, mapView, i, false);
        addLine(this.line1213, list, mapView, i, false);
        Line line = this.startLine;
        Pos pos = line.start;
        Pos pos2 = line.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Line line2 = this.startLine;
        Pos pos3 = line2.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line2.start, pos3, f2));
        Line line3 = this.rightLine;
        Pos pos4 = line3.start;
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(line3.end, pos4, f2));
        Line line4 = this.leftLine;
        Pos pos5 = line4.start;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(line4.end, pos5, f2));
        Line line5 = this.rightLine;
        Pos pos6 = line5.end;
        addPoint(pos6, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(line5.start, pos6, f2));
        Line line6 = this.leftLine;
        Pos pos7 = line6.end;
        addPoint(pos7, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, -1282049, mapView, createTxtPos(line6.start, pos7, f2));
        Line line7 = this.line1213;
        Pos pos8 = line7.start;
        addPoint(pos8, list, Constants.VIA_REPORT_TYPE_SET_AVATAR, -1282049, mapView, createTxtPos(line7.end, pos8, f2));
        Line line8 = this.line1213;
        Pos pos9 = line8.end;
        addPoint(pos9, list, Constants.VIA_REPORT_TYPE_JOININ_GROUP, -1282049, mapView, createTxtPos(line8.start, pos9, f2));
        addCircle(this.b5, list, null, mapView, null, getConfig());
        addCircle(this.b6, list, null, mapView, null, getConfig());
        addCircle(this.b7, list, null, mapView, null, getConfig());
        addCircle(this.b8, list, null, mapView, null, getConfig());
        addCircle(this.b9, list, null, mapView, null, getConfig());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected Pos getMapNamePos() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.line1213.start);
        arrayList.add(this.line1213.end);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.rightLine.start);
        arrayList.add(this.rightLine.end);
        arrayList.add(this.line1213.end);
        arrayList.add(this.line1213.start);
        arrayList.add(this.leftLine.end);
        arrayList.add(this.leftLine.start);
        return arrayList;
    }
}
