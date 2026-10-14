package cn.mucang.android.jiakaoyi.hpmap.render.b2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.b.a;
import cn.mucang.android.jiakaoyi.hpmap.c.b;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.FenceProject;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class B2GaoSuRenderModel extends B2RenderModel {
    public Line areaEndLine;
    public Line areaStartLine;
    public boolean hasUrgentRect = false;
    public List<Pos> leftPoints;
    public Line line0;
    public Line line100;
    public Line line150;
    public Line line200;
    public Line line34;
    public Line line45;
    public Line line50;
    public Line line56;
    public Line line67;
    public Line line78;
    public List<Pos> middlePoints;
    public List<Pos> rightPoints;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        if (g.d(this.leftPoints)) {
            list.add(new l(mapView, new ArrayList(this.leftPoints), 15.0f, i));
        }
        if (g.d(this.middlePoints)) {
            l lVar = new l(mapView, new ArrayList(this.middlePoints), 15.0f, i);
            lVar.j(80.0f, 80.0f);
            list.add(lVar);
        }
        if (g.d(this.rightPoints)) {
            list.add(new l(mapView, new ArrayList(this.rightPoints), 15.0f, i));
        }
        addLine(this.startLine, list, mapView, -10032010, true);
        addLine(this.endLine, list, mapView, -46528, true);
        addLine(this.areaStartLine, list, mapView, -10032010, true);
        addLine(this.areaEndLine, list, mapView, -46528, true);
        Line line = this.line0;
        if (line != null) {
            addLine(line, list, mapView, i, false);
        }
        Line line2 = this.line50;
        if (line2 != null) {
            addLine(line2, list, mapView, i, false);
        }
        Line line3 = this.line100;
        if (line3 != null) {
            addLine(line3, list, mapView, i, false);
        }
        Line line4 = this.line150;
        if (line4 != null) {
            addLine(line4, list, mapView, i, false);
        }
        Line line5 = this.line200;
        if (line5 != null) {
            addLine(line5, list, mapView, i, false);
        }
        addPoint(this.startLine.start, list, "", -1282049, mapView, null);
        addPoint(this.startLine.end, list, "", -1282049, mapView, null);
        addPoint(this.endLine.start, list, "", -1282049, mapView, null);
        addPoint(this.endLine.end, list, "", -1282049, mapView, null);
        Line line6 = this.areaStartLine;
        Pos pos = line6.start;
        Pos pos2 = line6.end;
        float f2 = a.f3680a;
        addPoint(pos, list, "1", -1282049, mapView, createTxtPos(pos2, pos, f2));
        Line line7 = this.areaStartLine;
        Pos pos3 = line7.end;
        addPoint(pos3, list, "2", -1282049, mapView, createTxtPos(line7.start, pos3, f2));
        Line line8 = this.areaEndLine;
        Pos pos4 = line8.start;
        addPoint(pos4, list, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, createTxtPos(line8.end, pos4, f2));
        Line line9 = this.areaEndLine;
        Pos pos5 = line9.end;
        addPoint(pos5, list, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, createTxtPos(line9.start, pos5, f2));
        if (this.hasUrgentRect) {
            Line line10 = this.line34;
            Pos pos6 = line10.start;
            addPoint(pos6, list, "3", -1282049, mapView, createTxtPos(line10.end, pos6, f2));
            Pos pos7 = this.line34.end;
            addPoint(pos7, list, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, b.h(this.areaStartLine.end, pos7, this.line56.start, f2));
            Pos pos8 = this.line56.start;
            addPoint(pos8, list, "5", -1282049, mapView, createTxtPos(this.line34.end, pos8, f2));
            Pos pos9 = this.line56.end;
            addPoint(pos9, list, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, createTxtPos(this.line78.start, pos9, f2));
            Pos pos10 = this.line78.start;
            addPoint(pos10, list, "7", -1282049, mapView, b.h(this.areaEndLine.end, pos10, this.line56.end, f2));
            Line line11 = this.line78;
            Pos pos11 = line11.end;
            addPoint(pos11, list, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, createTxtPos(line11.start, pos11, f2));
            addLine(this.line34, list, mapView, -1, true);
            addLine(this.line78, list, mapView, -1, true);
            addLine(this.line45, list, mapView, -1, false);
            addLine(this.line56, list, mapView, -1, false);
            addLine(this.line67, list, mapView, -1, false);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel
    protected List<List<Pos>> getFenceList() {
        if (g.b(this.leftPoints) || g.b(this.rightPoints)) {
            return null;
        }
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
        Line line = this.line0;
        if (line != null) {
            arrayList.add(line.start);
            arrayList.add(this.line0.end);
            Line line2 = this.line100;
            if (line2 != null) {
                arrayList.add(line2.start);
                arrayList.add(this.line100.end);
            } else {
                Line line3 = this.line50;
                if (line3 != null) {
                    arrayList.add(line3.start);
                    arrayList.add(this.line50.end);
                } else {
                    arrayList.add(this.areaStartLine.start);
                    arrayList.add(this.areaStartLine.end);
                }
            }
        } else {
            arrayList.add(this.startLine.start);
            arrayList.add(this.startLine.end);
            arrayList.add(this.areaStartLine.start);
            arrayList.add(this.areaStartLine.end);
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
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
