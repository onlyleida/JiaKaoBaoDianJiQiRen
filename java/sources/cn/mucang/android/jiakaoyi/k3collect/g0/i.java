package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.d0;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.i> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.i n;
    private LineStyle o;
    private Paint p;
    private Paint q;
    private Paint r;

    public i(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.i iVar) {
        super(mapView, iVar.b, iVar.c);
        o(iVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        List<Pos> list;
        canvas.save();
        canvas.setMatrix(matrix);
        if (this.f3759d) {
            this.p.setColor(-11751600);
        } else {
            this.p.setColor(this.o.color);
        }
        List<Pos> list2 = this.n.f3989d;
        if (list2 != null) {
            if (list2.size() >= 2) {
                if (!this.f3759d) {
                    this.p.setColor(-16711936);
                }
                k(canvas, this.n.f3989d.get(0), this.n.f3989d.get(1), this.p);
            }
            if (this.n.f3989d.size() >= 4) {
                if (!this.f3759d) {
                    this.p.setColor(-65536);
                }
                k(canvas, this.n.f3989d.get(2), this.n.f3989d.get(3), this.p);
            }
            if (this.c.getMapMode() == MapView.Mode.Edit) {
                for (int i = 0; i < this.n.f3989d.size(); i++) {
                    l(canvas, this.n.f3989d.get(i), this.q);
                }
                if (this.k && (list = this.n.f3990e) != null && list.size() > 0) {
                    for (int i2 = 0; i2 < this.n.f3990e.size(); i2++) {
                        Pos pos = this.n.f3990e.get(i2);
                        if (i2 != 0) {
                            m(canvas, "点" + (i2 + 1), pos, this.r);
                        } else if (!MucangConfig.v() || this.j == null) {
                            m(canvas, "点1", pos, this.r);
                        } else {
                            d0.a(this.i, this.n.f3948a.isDashed);
                            j(canvas, this.j + "-" + LineLayoutType.JUDGE_AREA_LINE.getLineName(), pos, this.l);
                        }
                    }
                }
            }
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        List<Pos> list = this.n.f3989d;
        if (list != null && list.size() != 0) {
            for (Pos pos : this.n.f3989d) {
                if (pos != null && cVar.f5822e.g(pos)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        if (this.n.f3989d.size() < 2 || this.n.f3989d.get(0) == null || this.n.f3989d.get(1) == null) {
            return null;
        }
        double d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, this.n.f3989d.get(0), this.n.f3989d.get(1), pos2, d2);
        if (d3 > d2) {
            return null;
        }
        if (pos2.x == -1.0E11d && pos2.y == -1.0E11d) {
            pos2 = null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.i iVar) {
        this.n = iVar;
        LineStyle lineStyle = iVar.f3948a;
        this.o = lineStyle;
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.a(lineStyle);
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.r = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
