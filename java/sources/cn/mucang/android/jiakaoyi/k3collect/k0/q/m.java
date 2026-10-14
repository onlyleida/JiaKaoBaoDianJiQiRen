package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.StopLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class m implements p.b<StopLineSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.l, cn.mucang.android.jiakaoyi.k3collect.collision.impl.k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f4070a;
    private Pos b;
    private StopLineSrcData c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.l f4071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.k f4072e;

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.m(mapView, this.f4071d);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.k d() {
        if (this.f4072e == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.k kVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.k();
            this.f4072e = kVar;
            kVar.b = this.c.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.k kVar2 = this.f4072e;
            kVar2.f3882a = this.c.type;
            kVar2.f3925f = new Line(this.f4070a, this.b);
            cn.mucang.android.jiakaoyi.signal.pos.c cVarV = cn.mucang.android.jiakaoyi.hpmap.d.a.v(this.f4070a, this.b, this.c.lineWidth);
            this.f4072e.f3923d = new Line(cVarV.f5820a, cVarV.b);
            this.f4072e.f3924e = new Line(cVarV.f5821d, cVarV.c);
            this.f4072e.c = cVarV.f5822e;
        }
        return this.f4072e;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.l c() {
        if (this.f4071d == null) {
            LineStyle lineStyle = new LineStyle();
            StopLineSrcData stopLineSrcData = this.c;
            lineStyle.lineWidth = stopLineSrcData.lineWidth;
            lineStyle.color = -1;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.l(lineStyle, stopLineSrcData.type, stopLineSrcData.id);
            this.f4071d = lVar;
            Pos pos = this.f4070a;
            lVar.f4002d = pos;
            Pos pos2 = this.b;
            lVar.f4003e = pos2;
            if (pos != null && pos2 != null) {
                float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
                lVar.f4004f = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos2, pos, f2);
                this.f4071d.f4005g = cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f4070a, this.b, f2);
            }
        }
        return this.f4071d;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(StopLineSrcData stopLineSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4070a = cn.mucang.android.jiakaoyi.hpmap.c.b.j(stopLineSrcData.lineStart, aVar);
        this.b = cn.mucang.android.jiakaoyi.hpmap.c.b.j(stopLineSrcData.lineEnd, aVar);
        this.c = stopLineSrcData;
    }
}
