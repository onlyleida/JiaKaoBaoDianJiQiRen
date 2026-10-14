package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.c.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.FenceProject;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.InProject;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.OutProject;
import cn.mucang.android.jiakaoyi.hpmap.view.p.b;
import cn.mucang.android.jiakaoyi.hpmap.view.p.e;
import cn.mucang.android.jiakaoyi.hpmap.view.p.i;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.m;
import cn.mucang.android.jiakaoyi.hpmap.view.p.n;
import cn.mucang.android.jiakaoyi.hpmap.view.p.o;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class K2RenderModel implements Serializable, a {
    public Line endLine;
    public String key;
    public String mapName;
    public Line report;
    public Line startLine;
    public double fenceDistance = 30.0d;
    public int stepDirection = 0;
    public float defaultLineWidth = 15.0f;

    private void addMapNameText(Pos pos, List<k> list, String str, int i, MapView mapView) {
        if (pos != null) {
            o.a aVar = new o.a(str, pos, cn.mucang.android.jiakaoyi.hpmap.b.a.b);
            aVar.a(i);
            aVar.b(14.0f);
            list.add(new o(mapView, aVar));
        }
    }

    private void addProjectFenceBg(List<k> list, MapView mapView) {
        FenceProject fenceProject = FenceProject.None;
        FenceProject fenceProject2 = FenceProject.parse(i0.d("keyFenceProjectBg", fenceProject.type));
        if (fenceProject2 != fenceProject) {
            List<List<Pos>> fenceList = getFenceList();
            if (g.b(fenceList)) {
                return;
            }
            for (List<Pos> list2 : fenceList) {
                if (!g.b(list2)) {
                    list.add(new n(mapView, list2, new n.a(fenceProject2.colors, this.defaultLineWidth)));
                }
            }
        }
    }

    private void addProjectInBg(List<k> list, MapView mapView) {
        int color;
        InProject inProject = InProject.None;
        InProject inProject2 = InProject.parse(i0.d("keyInProjectBg", inProject.type));
        List<Pos> projectBgList = getProjectBgList();
        if (g.b(projectBgList)) {
            return;
        }
        if (inProject2 != inProject) {
            color = mapView.getResources().getColor(inProject2.color);
        } else {
            FenceProject fenceProject = FenceProject.None;
            color = FenceProject.parse(i0.d("keyFenceProjectBg", fenceProject.type)) != fenceProject ? mapView.getResources().getColor(OutProject.parse(i0.d("keyOutProjectBg", OutProject.Black.type)).color) : 0;
        }
        list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.a(mapView, projectBgList, color, false));
    }

    protected void addArea(List<Pos> list, List<k> list2, MapView mapView, int i) {
        if (g.d(list)) {
            list2.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.a(mapView, list, i, true));
        }
    }

    protected void addCircle(Pos pos, List<k> list, String str, MapView mapView, Pos pos2, cn.mucang.android.jiakaoyi.hpmap.view.p.g.a aVar) {
        if (pos != null) {
            aVar.a(str);
            aVar.b(pos2);
            list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.g(mapView, pos, aVar));
        }
    }

    protected void addLine(Line line, List<k> list, MapView mapView, int i, boolean z) {
        if (line == null) {
            return;
        }
        if (z) {
            list.add(new e(mapView, line.start, line.end, new e.a((float) line.lineWidth, i)));
        } else {
            list.add(new i(mapView, line.start, line.end, new b.a((float) line.lineWidth, i)));
        }
    }

    protected void addPoint(Pos pos, List<k> list, String str, int i, MapView mapView, Pos pos2) {
        if (pos != null) {
            m.a aVar = new m.a(cn.mucang.android.jiakaoyi.hpmap.b.a.b, i);
            aVar.a(str);
            aVar.b(pos2);
            list.add(new m(mapView, pos, aVar));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.c.a
    public List<k> createMapLayers(MapView mapView, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        addProjectInBg(arrayList, mapView);
        addProjectFenceBg(arrayList, mapView);
        createMapLayers(arrayList, mapView, z, z2);
        addLine(this.startLine, arrayList, mapView, -10032010, true);
        addLine(this.endLine, arrayList, mapView, -46528, true);
        addLine(this.report, arrayList, mapView, -16711936, true);
        if (z2) {
            addMapNameText(getMapNamePos(), arrayList, this.mapName, -1, mapView);
        }
        return arrayList;
    }

    protected abstract void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2);

    protected Pos createTxtPos(Pos pos, Pos pos2, double d2) {
        if (pos == null || pos2 == null) {
            return null;
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos, pos2, d2);
    }

    protected abstract List<List<Pos>> getFenceList();

    @Override // cn.mucang.android.jiakaoyi.hpmap.c.a
    public String getLayerKey() {
        return this.key;
    }

    protected Line getLine(Pos pos, Pos pos2, double d2, boolean z) {
        Line lineP = z ? cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, 0.5d * d2) : cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, 0.5d * d2);
        lineP.lineWidth = d2;
        return lineP;
    }

    protected Pos getMapNamePos() {
        if (this.startLine == null || this.endLine == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.endLine.start);
        arrayList.add(this.endLine.end);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
    }

    protected List<Pos> getProjectBgList() {
        if (this.startLine == null || this.endLine == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.startLine.start);
        arrayList.add(this.startLine.end);
        arrayList.add(this.endLine.start);
        arrayList.add(this.endLine.end);
        return arrayList;
    }

    protected Pos createTxtPos(Pos pos, Pos pos2, Pos pos3, double d2) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.e(pos, pos2, pos3, d2 * 1.3d);
    }
}
