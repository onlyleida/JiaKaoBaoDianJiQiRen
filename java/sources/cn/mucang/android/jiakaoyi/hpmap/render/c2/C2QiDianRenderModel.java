package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class C2QiDianRenderModel extends K2RenderModel {
    public Line line12;
    public Line line23;
    public Line line34;
    public Line line41;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        addLine(this.line12, list, mapView, -1, false);
        addLine(this.line23, list, mapView, -1, false);
        addLine(this.line34, list, mapView, -1, false);
        addLine(this.line41, list, mapView, -1, false);
        Line line = this.line12;
        Pos pos = line.start;
        Pos pos2 = line.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Line line2 = this.line12;
        Pos pos3 = line2.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line2.start, pos3, f2));
        Line line3 = this.line34;
        Pos pos4 = line3.start;
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(line3.end, pos4, f2));
        Line line4 = this.line34;
        Pos pos5 = line4.end;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(line4.start, pos5, f2));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected Pos getMapNamePos() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.line12.start);
        arrayList.add(this.line12.end);
        arrayList.add(this.line34.start);
        arrayList.add(this.line34.end);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.line12.start);
        arrayList.add(this.line12.end);
        arrayList.add(this.line34.start);
        arrayList.add(this.line34.end);
        return arrayList;
    }
}
