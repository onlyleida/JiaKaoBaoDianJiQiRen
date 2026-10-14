package cn.mucang.android.jiakaoyi.hpmap.render.b2;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.FenceProject;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class B2QuXianRenderModel extends B2RenderModel {
    public List<Pos> leftPoints;
    public List<Pos> rightPoints;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        list.add(new l(mapView, new ArrayList(this.leftPoints), 15.0f, i));
        list.add(new l(mapView, new ArrayList(this.rightPoints), 15.0f, i));
        addPoint(this.startLine.start, list, null, -1282049, mapView, null);
        addPoint(this.startLine.end, list, null, -1282049, mapView, null);
        addPoint(this.endLine.start, list, null, -1282049, mapView, null);
        addPoint(this.endLine.end, list, null, -1282049, mapView, null);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<List<Pos>> getFenceList() {
        FenceProject fenceProject = FenceProject.None;
        if (FenceProject.parse(i0.d("keyFenceProjectBg", fenceProject.type)) == fenceProject) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i2 < this.leftPoints.size() - 1) {
            int i3 = i2 + 1;
            Line line = getLine(this.leftPoints.get(i2), this.leftPoints.get(i3), (this.startLine.lineWidth + this.fenceDistance) * 2.0d, true);
            if (i2 == 0) {
                arrayList.add(line.start);
            }
            arrayList.add(line.end);
            i2 = i3;
        }
        while (i < this.rightPoints.size() - 1) {
            int i4 = i + 1;
            Line line2 = getLine(this.rightPoints.get(i), this.rightPoints.get(i4), (this.startLine.lineWidth + this.fenceDistance) * 2.0d, false);
            if (i == 0) {
                arrayList2.add(line2.start);
            }
            arrayList2.add(line2.end);
            i = i4;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(arrayList);
        arrayList3.add(arrayList2);
        return arrayList3;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected Pos getMapNamePos() {
        ArrayList arrayList = new ArrayList();
        int size = this.leftPoints.size() / 3;
        int size2 = this.rightPoints.size() / 3;
        arrayList.add(this.leftPoints.get(size));
        arrayList.add(this.leftPoints.get(size * 2));
        arrayList.add(this.rightPoints.get(size2));
        arrayList.add(this.rightPoints.get(size2 * 2));
        return a.c(arrayList);
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
