package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class C2SuiDaoRenderModel extends K2RenderModel {
    public List<Pos> centerPoints;
    public List<Pos> leftPoints;
    public List<Pos> rightPoints;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    public void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        if (!g.b(this.leftPoints)) {
            list.add(new l(mapView, new ArrayList(this.leftPoints), 15.0f, i));
        }
        if (!g.b(this.centerPoints)) {
            list.add(new l(mapView, new ArrayList(this.centerPoints), 15.0f, i));
        }
        if (!g.b(this.rightPoints)) {
            list.add(new l(mapView, new ArrayList(this.rightPoints), 15.0f, i));
        }
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
        addPoint(pos4, list, "3", -1282049, mapView, createTxtPos(line3.end, pos4, f2));
        Line line4 = this.endLine;
        Pos pos5 = line4.end;
        addPoint(pos5, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, createTxtPos(line4.start, pos5, f2));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
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

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<Pos> getProjectBgList() {
        ArrayList arrayList = new ArrayList();
        if (!g.d(this.leftPoints) || !g.d(this.rightPoints)) {
            return super.getProjectBgList();
        }
        arrayList.add(this.startLine.start);
        arrayList.addAll(this.leftPoints);
        arrayList.add(this.endLine.end);
        arrayList.add(this.endLine.start);
        ArrayList arrayList2 = new ArrayList(this.rightPoints);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        arrayList.add(this.startLine.end);
        return arrayList;
    }
}
