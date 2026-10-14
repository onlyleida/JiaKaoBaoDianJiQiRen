package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.DashFullLineCollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h implements p.b<CommonSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.g, DashFullLineCollisionModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CommonSrcData f4049a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.g b;
    private DashFullLineCollisionModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Pos> f4050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Pos> f4051e;

    private List<Pos> h(List<Pos> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < list.size(); i++) {
            Pos pos = list.get(i);
            Pos pos2 = list.get(i - 1);
            Line lineP = z ? cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos2, pos, ((double) this.f4049a.width) * 0.5d) : cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos2, pos, ((double) this.f4049a.width) * 0.5d);
            if (i == 1) {
                arrayList.add(lineP.start);
                arrayList.add(lineP.end);
            } else {
                arrayList.add(lineP.end);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.g0.g a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.g(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public DashFullLineCollisionModel d() {
        List<Gps> list;
        List<Gps> list2 = this.f4049a.points;
        if (list2 == null || list2.size() < 2 || (list = this.f4049a.points2) == null || list.size() < 2) {
            return null;
        }
        int i = this.f4049a.shape;
        K3ShapeType k3ShapeType = K3ShapeType.LEFT_DASH_LINE;
        if (i != k3ShapeType.getType() && this.f4049a.shape != K3ShapeType.RIGHT_DASH_LINE.getType()) {
            return null;
        }
        if (this.c == null) {
            DashFullLineCollisionModel dashFullLineCollisionModel = new DashFullLineCollisionModel();
            this.c = dashFullLineCollisionModel;
            dashFullLineCollisionModel.b = this.f4049a.id.longValue();
            DashFullLineCollisionModel dashFullLineCollisionModel2 = this.c;
            CommonSrcData commonSrcData = this.f4049a;
            dashFullLineCollisionModel2.f3882a = commonSrcData.type;
            int i2 = commonSrcData.shape;
            dashFullLineCollisionModel2.f3886f = i2;
            if (i2 == k3ShapeType.getType()) {
                this.c.f3884d = h(this.f4050d, true);
                this.c.f3885e = h(this.f4051e, false);
            } else {
                this.c.f3884d = h(this.f4051e, false);
                this.c.f3885e = h(this.f4050d, true);
            }
            DashFullLineCollisionModel dashFullLineCollisionModel3 = this.c;
            cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(this.b.f3979d);
            aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(this.b.f3980e));
            dashFullLineCollisionModel3.c = aVarB;
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.g c() {
        Pos pos;
        Pos pos2;
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            CommonSrcData commonSrcData = this.f4049a;
            lineStyle.lineWidth = commonSrcData.width;
            lineStyle.dashLength = 150;
            lineStyle.dashInterval = 100.0f;
            lineStyle.isDashed = true;
            lineStyle.color = commonSrcData.color;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.g(lineStyle, commonSrcData.type, commonSrcData.id);
            this.b = gVar;
            gVar.n = commonSrcData.shape;
            List<Pos> list = this.f4050d;
            gVar.f3979d = list;
            gVar.f3980e = this.f4051e;
            if (list != null && list.size() > 0) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar2 = this.b;
                gVar2.f3981f = gVar2.f3979d.get(0);
                if (this.b.f3979d.size() >= 2) {
                    cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar3 = this.b;
                    List<Pos> list2 = gVar3.f3979d;
                    gVar3.f3982g = list2.get(list2.size() - 1);
                }
            }
            List<Pos> list3 = this.b.f3980e;
            if (list3 != null && list3.size() > 0) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar4 = this.b;
                gVar4.i = gVar4.f3980e.get(0);
                if (this.b.f3980e.size() >= 2) {
                    cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar5 = this.b;
                    List<Pos> list4 = gVar5.f3980e;
                    gVar5.f3983h = list4.get(list4.size() - 1);
                }
            }
            cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar6 = this.b;
            Pos pos3 = gVar6.f3981f;
            if (pos3 != null && (pos2 = gVar6.i) != null) {
                float f2 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                gVar6.j = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos2, pos3, f2);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar7 = this.b;
                gVar7.m = cn.mucang.android.jiakaoyi.hpmap.c.b.g(gVar7.f3981f, gVar7.i, f2);
            }
            cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar8 = this.b;
            Pos pos4 = gVar8.f3982g;
            if (pos4 != null && (pos = gVar8.f3983h) != null) {
                float f3 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                gVar8.k = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos, pos4, f3);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar9 = this.b;
                gVar9.l = cn.mucang.android.jiakaoyi.hpmap.c.b.g(gVar9.f3982g, gVar9.f3983h, f3);
            }
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void b(CommonSrcData commonSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4049a = commonSrcData;
        List<Gps> list = commonSrcData.points;
        if (list != null && list.size() > 1) {
            this.f4050d = o.f(aVar, commonSrcData.points);
        }
        List<Gps> list2 = commonSrcData.points2;
        if (list2 == null || list2.size() <= 1) {
            return;
        }
        this.f4051e = o.f(aVar, commonSrcData.points2);
    }
}
