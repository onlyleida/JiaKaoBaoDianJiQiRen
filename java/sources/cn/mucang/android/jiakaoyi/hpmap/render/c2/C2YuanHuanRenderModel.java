package cn.mucang.android.jiakaoyi.hpmap.render.c2;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.c;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class C2YuanHuanRenderModel extends K2RenderModel {
    public Pos innerCenter;
    public int innerLineType;
    public float innerRadius;
    public Pos outCenter;
    public int outLineType;
    public float outRadius;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    public void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        float f2 = this.outRadius;
        float f3 = this.defaultLineWidth;
        c.a aVar = new c.a(f2 + (f3 / 2.0f), 0);
        aVar.b(f3, -1);
        if (this.outLineType == 1) {
            aVar.a(30.0f, 30.0f);
        }
        list.add(new c(mapView, this.outCenter, aVar));
        float f4 = this.innerRadius;
        float f5 = this.defaultLineWidth;
        c.a aVar2 = new c.a(f4 - (f5 / 2.0f), 0);
        aVar2.b(f5, -1);
        if (this.innerLineType == 1) {
            aVar2.a(30.0f, 30.0f);
        }
        list.add(new c(mapView, this.innerCenter, aVar2));
        addPoint(this.innerCenter, list, "oi", -1282049, mapView, null);
        addPoint(this.innerCenter, list, "oo", -1282049, mapView, null);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        return null;
    }
}
