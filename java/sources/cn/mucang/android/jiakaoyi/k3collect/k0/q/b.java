package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b implements p.b<CommonSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.a, cn.mucang.android.jiakaoyi.k3collect.collision.impl.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CommonSrcData f4026a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.a b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Pos> f4027d;

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.g0.a a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.a(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.a d() {
        List<Pos> list = this.b.f3949d;
        if (list == null || list.size() < 3) {
            return null;
        }
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.a aVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.a();
            this.c = aVar;
            aVar.b = this.f4026a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.a aVar2 = this.c;
            CommonSrcData commonSrcData = this.f4026a;
            aVar2.f3882a = commonSrcData.type;
            aVar2.f3890e = commonSrcData.shape;
            aVar2.f3889d = this.f4027d;
            aVar2.c = cn.mucang.android.jiakaoyi.hpmap.d.a.b(this.b.f3949d);
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.a c() {
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            CommonSrcData commonSrcData = this.f4026a;
            lineStyle.lineWidth = commonSrcData.width;
            lineStyle.color = commonSrcData.color;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.a(lineStyle, commonSrcData.type, commonSrcData.id);
            this.b = aVar;
            int i = commonSrcData.shape;
            if (aVar.b == 14) {
                aVar.f3951f = "#64AEE1D5";
            } else {
                aVar.f3951f = "#64FFFFFF";
            }
            List<Pos> list = this.f4027d;
            aVar.f3949d = list;
            if (list != null && list.size() >= 3) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar2 = this.b;
                aVar2.f3952g = cn.mucang.android.jiakaoyi.hpmap.d.a.c(aVar2.f3949d);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar3 = this.b;
                if (aVar3.f3950e == null) {
                    aVar3.f3950e = new ArrayList();
                }
                cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar4 = this.b;
                aVar4.f3953h = cn.mucang.android.jiakaoyi.hpmap.d.a.b(aVar4.f3949d);
                List<Pos> list2 = this.b.f3949d;
                this.b.f3950e.add(cn.mucang.android.jiakaoyi.hpmap.c.b.g(list2.get(list2.size() - 1), this.b.f3949d.get(0), cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a));
                for (int i2 = 1; i2 < this.b.f3949d.size(); i2++) {
                    this.b.f3950e.add(cn.mucang.android.jiakaoyi.hpmap.c.b.g(this.b.f3949d.get(i2 - 1), this.b.f3949d.get(i2), cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a));
                }
            }
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void b(CommonSrcData commonSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4026a = commonSrcData;
        this.f4027d = o.f(aVar, commonSrcData.points);
    }
}
