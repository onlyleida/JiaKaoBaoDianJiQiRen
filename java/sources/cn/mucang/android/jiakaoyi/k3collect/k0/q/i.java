package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.GridLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class i implements p.b<GridLineSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.h, cn.mucang.android.jiakaoyi.k3collect.collision.impl.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseArray<Pos> f4052a;
    private GridLineSrcData b;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.g f4053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f4054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Pos f4055f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Pos f4056g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Pos f4057h;
    private int i = 4;

    private boolean g() {
        for (int i = 0; i < this.i; i++) {
            if (this.f4052a.get(i) == null) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.h(mapView, this.c);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.g d() {
        cn.mucang.android.jiakaoyi.k3collect.collision.impl.g gVar;
        if (g() && this.f4053d == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.g gVar2 = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.g();
            this.f4053d = gVar2;
            gVar2.b = this.b.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.g gVar3 = this.f4053d;
            gVar3.f3909e = this.i;
            gVar3.f3908d = new ArrayList();
            int i = 0;
            while (true) {
                gVar = this.f4053d;
                if (i >= gVar.f3909e) {
                    break;
                }
                this.f4053d.f3908d.add(this.f4052a.get(i));
                i++;
            }
            gVar.c = cn.mucang.android.jiakaoyi.hpmap.d.a.b(gVar.f3908d);
        }
        return this.f4053d;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.h c() {
        if (this.c == null) {
            LineStyle lineStyle = new LineStyle();
            GridLineSrcData gridLineSrcData = this.b;
            lineStyle.lineWidth = gridLineSrcData.lineWidth;
            lineStyle.color = -8381;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.h hVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.h(lineStyle, gridLineSrcData.type, gridLineSrcData.id);
            this.c = hVar;
            hVar.j = 15;
            hVar.k = Math.max(100, gridLineSrcData.gridLineInterval);
            cn.mucang.android.jiakaoyi.k3collect.j0.b.h hVar2 = this.c;
            hVar2.f3985e = this.f4052a;
            hVar2.f3988h = new ArrayList();
            cn.mucang.android.jiakaoyi.k3collect.j0.b.h hVar3 = this.c;
            hVar3.l = hVar3.f3985e.size();
            if (this.c.a()) {
                this.c.f3986f = new ArrayList();
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (i < this.f4052a.size()) {
                    int i2 = i - 1;
                    if (i2 < 0) {
                        i2 = this.c.l - 1;
                    }
                    int i3 = i + 1;
                    int i4 = i3 >= 4 ? 0 : i3;
                    Pos pos = this.f4052a.get(i2);
                    Pos pos2 = this.f4052a.get(i);
                    this.c.f3988h.add(cn.mucang.android.jiakaoyi.hpmap.c.b.h(pos, pos2, this.f4052a.get(i4), -cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e));
                    this.c.f3986f.add(new Line(pos, pos2));
                    arrayList.add(pos2);
                    i = i3;
                }
                this.c.f3984d = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
                this.c.i = Math.max(this.f4054e.distanceTo(this.f4056g), this.f4055f.distanceTo(this.f4057h)) * 2.0d;
            }
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void b(GridLineSrcData gridLineSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.b = gridLineSrcData;
        this.f4054e = cn.mucang.android.jiakaoyi.hpmap.c.b.j(gridLineSrcData.p1, aVar);
        this.f4055f = cn.mucang.android.jiakaoyi.hpmap.c.b.j(gridLineSrcData.p2, aVar);
        this.f4056g = cn.mucang.android.jiakaoyi.hpmap.c.b.j(gridLineSrcData.p3, aVar);
        this.f4057h = cn.mucang.android.jiakaoyi.hpmap.c.b.j(gridLineSrcData.p4, aVar);
        SparseArray<Pos> sparseArray = new SparseArray<>();
        this.f4052a = sparseArray;
        sparseArray.put(0, this.f4054e);
        this.f4052a.put(1, this.f4055f);
        this.f4052a.put(2, this.f4056g);
        this.f4052a.put(3, this.f4057h);
    }
}
