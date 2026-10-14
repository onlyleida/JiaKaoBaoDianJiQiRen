package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.d0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.j> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.j n;
    private Paint o;
    private Paint p;
    private Paint q;
    private Paint r;

    public k(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar) {
        super(mapView, jVar.b, jVar.c);
        o(jVar);
        Paint paint = new Paint(1);
        this.r = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.r.setColor(-65536);
        this.r.setStrokeWidth(5.0f);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0033  */
    /* JADX WARN: Code duplicated, block: B:20:0x004c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0069  */
    /* JADX WARN: Code duplicated, block: B:31:0x007b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0089  */
    /* JADX WARN: Code duplicated, block: B:38:0x0091  */
    /* JADX WARN: Code duplicated, block: B:41:0x0097  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:65:0x005a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x005c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x005c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00b5 A[EDGE_INSN: B:70:0x00b5->B:48:0x00b5 BREAK  A[LOOP:1: B:27:0x0063->B:46:0x00b0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00b0 A[SYNTHETIC] */
    private double p(Pos pos, double d2, Pos pos2, double d3, List<Pos> list, List<Pos> list2) {
        double d4;
        Pos pos3;
        int i;
        double dDistanceTo;
        Pos pos4;
        Pos pos5;
        double dDistanceTo2;
        double d5;
        int i2 = 1;
        while (true) {
            Pos pos6 = null;
            if (i2 < list.size()) {
                Pos pos7 = list.get(i2 - 1);
                Pos pos8 = list.get(i2);
                if (i2 == 1) {
                    dDistanceTo2 = pos.distanceTo(pos7);
                    if (dDistanceTo2 >= d3 || dDistanceTo2 >= d2) {
                        dDistanceTo2 = pos.distanceTo(pos8);
                        if (dDistanceTo2 < d3 || dDistanceTo2 >= d2) {
                            if (pos7.distanceTo(pos8) > d2 * 3.0d) {
                                d5 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos7, pos8, pos2, d2);
                                if (d5 < d2) {
                                    d4 = d5;
                                }
                            }
                            i2++;
                        } else {
                            pos3 = pos8;
                        }
                    } else {
                        pos3 = pos7;
                    }
                } else {
                    dDistanceTo2 = pos.distanceTo(pos8);
                    if (dDistanceTo2 < d3) {
                    }
                    if (pos7.distanceTo(pos8) > d2 * 3.0d) {
                        d5 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos7, pos8, pos2, d2);
                        if (d5 < d2) {
                            d4 = d5;
                        }
                    }
                    i2++;
                }
                d4 = dDistanceTo2;
                i = 1;
                while (true) {
                    if (i < list2.size()) {
                        dDistanceTo = d3;
                        break;
                    }
                    pos4 = list2.get(i - 1);
                    pos5 = list2.get(i);
                    if (i == 1) {
                        dDistanceTo = pos.distanceTo(pos4);
                        if (dDistanceTo >= d3 && dDistanceTo < d2) {
                            pos6 = pos4;
                            break;
                        }
                        dDistanceTo = pos.distanceTo(pos5);
                        if (dDistanceTo >= d3 && dDistanceTo < d2) {
                            pos6 = pos5;
                            break;
                        }
                        if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                            dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                            if (dDistanceTo < d2) {
                                break;
                            }
                        }
                        i++;
                    } else {
                        dDistanceTo = pos.distanceTo(pos5);
                        if (dDistanceTo >= d3) {
                            if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                                dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                                if (dDistanceTo < d2) {
                                    break;
                                    break;
                                }
                            }
                            i++;
                        } else {
                            if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                                dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                                if (dDistanceTo < d2) {
                                    break;
                                    break;
                                }
                            }
                            i++;
                        }
                    }
                }
                if (d4 < d2 && dDistanceTo >= d2) {
                    return d3;
                }
                if (d4 < dDistanceTo) {
                    if (pos3 != null) {
                        pos2.setPos(pos3);
                    }
                    return d4;
                }
                if (pos6 != null) {
                    pos2.setPos(pos6);
                }
                return dDistanceTo;
            }
            d4 = d3;
            pos3 = null;
            i = 1;
            while (true) {
                if (i < list2.size()) {
                    dDistanceTo = d3;
                    break;
                }
                pos4 = list2.get(i - 1);
                pos5 = list2.get(i);
                if (i == 1) {
                    dDistanceTo = pos.distanceTo(pos4);
                    if (dDistanceTo >= d3) {
                        dDistanceTo = pos.distanceTo(pos5);
                        if (dDistanceTo >= d3) {
                            if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                                dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                                if (dDistanceTo < d2) {
                                    break;
                                    break;
                                }
                            }
                            i++;
                        } else {
                            if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                                dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                                if (dDistanceTo < d2) {
                                    break;
                                    break;
                                }
                            }
                            i++;
                        }
                    } else {
                        dDistanceTo = pos.distanceTo(pos5);
                        if (dDistanceTo >= d3) {
                            if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                                dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                                if (dDistanceTo < d2) {
                                    break;
                                    break;
                                }
                            }
                            i++;
                        } else {
                            if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                                dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                                if (dDistanceTo < d2) {
                                    break;
                                    break;
                                }
                            }
                            i++;
                        }
                    }
                } else {
                    dDistanceTo = pos.distanceTo(pos5);
                    if (dDistanceTo >= d3) {
                        if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                            dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                            if (dDistanceTo < d2) {
                                break;
                                break;
                            }
                        }
                        i++;
                    } else {
                        if (pos4.distanceTo(pos5) > d2 * 3.0d) {
                            dDistanceTo = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos5, pos2, d2);
                            if (dDistanceTo < d2) {
                                break;
                                break;
                            }
                        }
                        i++;
                    }
                }
            }
            if (d4 < d2) {
            }
            if (d4 < dDistanceTo) {
                if (pos3 != null) {
                    pos2.setPos(pos3);
                }
                return d4;
            }
            if (pos6 != null) {
                pos2.setPos(pos6);
            }
            return dDistanceTo;
        }
    }

    private double q(Pos pos, double d2, Pos pos2, double d3) {
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar = this.n;
        double d4 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, jVar.f3996h, jVar.i, pos2, d2);
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar2 = this.n;
        double d5 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, jVar2.k, jVar2.j, pos2, d2);
        if (d4 > d2) {
            if (d5 >= d2) {
                return d3;
            }
        } else if (d5 >= d4) {
            return d4;
        }
        return d5;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.f3759d) {
            this.o.setColor(-11751600);
        } else {
            this.o.setColor(this.n.f3948a.color);
        }
        canvas.save();
        canvas.setMatrix(matrix);
        this.o.setStrokeWidth(n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar = this.n;
        Path path = jVar.f3992d;
        if (path != null) {
            canvas.drawPath(path, this.o);
        } else {
            k(canvas, jVar.f3996h, jVar.i, this.o);
        }
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar2 = this.n;
        Path path2 = jVar2.f3993e;
        if (path2 != null) {
            canvas.drawPath(path2, this.o);
        } else {
            k(canvas, jVar2.j, jVar2.k, this.o);
        }
        if (n.a()) {
            if (this.n.f3994f != null) {
                this.r.setColor(-65536);
                canvas.drawPath(this.n.f3994f, this.r);
            }
            if (this.n.f3995g != null) {
                this.r.setColor(-16711936);
                canvas.drawPath(this.n.f3995g, this.r);
            }
        }
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f) {
            l(canvas, this.n.f3996h, this.p);
            l(canvas, this.n.i, this.p);
            l(canvas, this.n.j, this.p);
            l(canvas, this.n.k, this.p);
            Pos posI = i();
            List<Pos> list = this.n.p;
            if (list != null) {
                for (Pos pos : list) {
                    if (posI == pos) {
                        this.p.setColor(-65536);
                    } else {
                        this.p.setColor(-16741633);
                    }
                    l(canvas, pos, this.p);
                }
            }
            List<Pos> list2 = this.n.q;
            if (list2 != null) {
                for (Pos pos2 : list2) {
                    if (posI == pos2) {
                        this.p.setColor(-65536);
                    } else {
                        this.p.setColor(-16741633);
                    }
                    l(canvas, pos2, this.p);
                }
            }
            if (!MucangConfig.v() || this.j == null) {
                m(canvas, "起点1", this.n.l, this.q);
            } else {
                j(canvas, this.j + "-" + d0.a(this.i, this.n.f3948a.isDashed).getLineName(), this.n.l, this.l);
            }
            m(canvas, "起点2", this.n.o, this.q);
            m(canvas, "终点1", this.n.m, this.q);
            m(canvas, "终点2", this.n.n, this.q);
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        Pos pos;
        Pos pos2;
        Pos pos3 = this.n.f3996h;
        if (pos3 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos3)) {
            return true;
        }
        Pos pos4 = this.n.i;
        if (pos4 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos4)) {
            return true;
        }
        Pos pos5 = this.n.j;
        if (pos5 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos5)) {
            return true;
        }
        Pos pos6 = this.n.k;
        if (pos6 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos6)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar = this.n;
        Pos pos7 = jVar.f3996h;
        if (pos7 != null && (pos2 = jVar.i) != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, pos7, pos2)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar2 = this.n;
        Pos pos8 = jVar2.k;
        if (pos8 != null && (pos = jVar2.j) != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, pos8, pos)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar3 = this.n;
        if (!jVar3.r) {
            return false;
        }
        if (jVar3.p != null) {
            for (int i = 1; i < this.n.p.size(); i++) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, this.n.p.get(i - 1), this.n.p.get(i))) {
                    return true;
                }
            }
        }
        if (this.n.q == null) {
            return false;
        }
        for (int i2 = 1; i2 < this.n.q.size(); i2++) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, this.n.q.get(i2 - 1), this.n.q.get(i2))) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        List<Pos> list;
        List<Pos> list2;
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar = this.n;
        if (jVar.f3996h == null || jVar.i == null || jVar.j == null || jVar.k == null) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar2 = this.n;
        double dQ = 0.0d;
        if (!jVar2.r || (list = jVar2.p) == null || list.size() <= 0 || (list2 = this.n.q) == null || list2.size() <= 0) {
            dQ = q(pos, d2, pos2, 1.0E11d);
        } else if (pos.distanceTo(this.n.f3996h) == 0.0d || pos.distanceTo(this.n.i) == 0.0d || pos.distanceTo(this.n.j) == 0.0d || pos.distanceTo(this.n.k) == 0.0d) {
            pos2.setPos(pos);
        } else {
            cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar3 = this.n;
            dQ = p(pos, d2, pos2, 1.0E11d, jVar3.p, jVar3.q);
        }
        if (dQ > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dQ, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    public Pos i() {
        Pos pos;
        cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar = this.n;
        List<Pos> list = jVar.p;
        double d2 = Double.MAX_VALUE;
        if (list == null || jVar.q == null || this.f3760e == null) {
            pos = null;
        } else {
            pos = null;
            for (Pos pos2 : list) {
                double dDistanceTo = pos2.distanceTo(this.f3760e);
                if (dDistanceTo < d2) {
                    pos = pos2;
                    d2 = dDistanceTo;
                }
            }
            for (Pos pos3 : this.n.q) {
                double dDistanceTo2 = pos3.distanceTo(this.f3760e);
                if (dDistanceTo2 < d2) {
                    pos = pos3;
                    d2 = dDistanceTo2;
                }
            }
        }
        if (d2 < j.m) {
            return pos;
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar) {
        this.n = jVar;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(jVar.f3948a);
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        new Path();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
