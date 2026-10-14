package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.c;
import cn.mucang.android.jiakaoyi.hpmap.view.p.f;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class C2DoubleYuanHuanRenderModel extends K2RenderModel {
    public Pos center;
    public Pos cross1;
    public Pos cross2;
    public int innerLineType;
    public Pos leftInnerCenter;
    public float leftInnerRadius;
    public Pos leftOutCenter;
    public float leftOutRadius;
    public float leftStartAngle;
    public float leftSweepAngle;
    public int outLineType;
    public Pos rightInnerCenter;
    public float rightInnerRadius;
    public Pos rightOutCenter;
    public float rightOutRadius;
    public float rightStartAngle;
    public float rightSweepAngle;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    public void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        f.a aVar = new f.a();
        aVar.b(this.defaultLineWidth, -1);
        if (this.outLineType == 1) {
            aVar.a(30.0f, 30.0f);
        }
        list.add(new f(mapView, this.center, this.leftOutRadius, this.rightOutRadius, this.leftStartAngle, this.leftSweepAngle, this.rightStartAngle, this.rightSweepAngle, this.leftOutCenter, this.rightOutCenter, aVar));
        float f2 = this.leftInnerRadius;
        float f3 = this.defaultLineWidth;
        c.a aVar2 = new c.a(f2 - (f3 / 2.0f), 0);
        aVar2.b(f3, -1);
        if (this.innerLineType == 1) {
            aVar2.a(30.0f, 30.0f);
        }
        list.add(new c(mapView, this.leftInnerCenter, aVar2));
        float f4 = this.rightInnerRadius;
        float f5 = this.defaultLineWidth;
        c.a aVar3 = new c.a(f4 - (f5 / 2.0f), 0);
        aVar3.b(f5, -1);
        if (this.innerLineType == 1) {
            aVar3.a(30.0f, 30.0f);
        }
        list.add(new c(mapView, this.rightInnerCenter, aVar3));
        addPoint(this.leftOutCenter, list, "ol", -1282049, mapView, null);
        addPoint(this.rightOutCenter, list, "or", -1282049, mapView, null);
        addPoint(this.cross1, list, "c1", -1282049, mapView, null);
        addPoint(this.cross2, list, "c2", -1282049, mapView, null);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        return null;
    }
}
