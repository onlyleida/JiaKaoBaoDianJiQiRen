package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.d0;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.g> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.g n;
    private Path o;
    private Path p;
    private Paint q;
    private Paint r;
    private Paint s;
    private Paint t;
    private Paint u;

    public g(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar) {
        super(mapView, gVar.b, gVar.c);
        o(gVar);
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

    private Path q(List<Pos> list) {
        if (list == null || list.size() < 2) {
            return null;
        }
        Path path = new Path();
        Pos pos = list.get(0);
        path.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y));
        for (int i = 1; i < list.size(); i++) {
            Pos pos2 = list.get(i);
            path.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
        }
        return path;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.f3759d) {
            this.q.setColor(-11751600);
            this.u.setColor(-11751600);
        } else {
            this.q.setColor(this.n.f3948a.color);
            this.u.setColor(this.n.f3948a.color);
        }
        canvas.save();
        canvas.setMatrix(matrix);
        this.q.setStrokeWidth(n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
        if (this.n.n == K3ShapeType.LEFT_DASH_LINE.getType()) {
            Path path = this.o;
            if (path != null) {
                canvas.drawPath(path, this.q);
            }
            Path path2 = this.p;
            if (path2 != null) {
                canvas.drawPath(path2, this.u);
            }
        } else {
            Path path3 = this.o;
            if (path3 != null) {
                canvas.drawPath(path3, this.u);
            }
            Path path4 = this.p;
            if (path4 != null) {
                canvas.drawPath(path4, this.q);
            }
        }
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f) {
            l(canvas, this.n.f3981f, this.r);
            l(canvas, this.n.f3982g, this.r);
            l(canvas, this.n.f3983h, this.r);
            l(canvas, this.n.i, this.r);
            Pos posI = i();
            List<Pos> list = this.n.f3979d;
            if (list != null) {
                for (Pos pos : list) {
                    if (posI == pos) {
                        this.r.setColor(-65536);
                    } else {
                        this.r.setColor(-16741633);
                    }
                    l(canvas, pos, this.r);
                }
            }
            List<Pos> list2 = this.n.f3980e;
            if (list2 != null) {
                for (Pos pos2 : list2) {
                    if (posI == pos2) {
                        this.r.setColor(-65536);
                    } else {
                        this.r.setColor(-16741633);
                    }
                    l(canvas, pos2, this.r);
                }
            }
            if (!MucangConfig.v() || this.j == null) {
                m(canvas, "起点1", this.n.j, this.s);
            } else {
                j(canvas, this.j + "-" + d0.a(this.i, this.n.f3948a.isDashed).getLineName(), this.n.j, this.l);
            }
            m(canvas, "起点2", this.n.m, this.s);
            m(canvas, "终点1", this.n.k, this.s);
            m(canvas, "终点2", this.n.l, this.s);
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (this.n.f3979d != null) {
            for (int i = 1; i < this.n.f3979d.size(); i++) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, this.n.f3979d.get(i - 1), this.n.f3979d.get(i))) {
                    return true;
                }
            }
        }
        if (this.n.f3980e == null) {
            return false;
        }
        for (int i2 = 1; i2 < this.n.f3980e.size(); i2++) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, this.n.f3980e.get(i2 - 1), this.n.f3980e.get(i2))) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        List<Pos> list;
        cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar = this.n;
        if (gVar.f3981f == null || gVar.f3982g == null || gVar.f3983h == null || gVar.i == null) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double dP = 1.0E11d;
        List<Pos> list2 = this.n.f3979d;
        if (list2 != null && list2.size() > 0 && (list = this.n.f3980e) != null && list.size() > 0) {
            if (pos.distanceTo(this.n.f3981f) == 0.0d || pos.distanceTo(this.n.f3982g) == 0.0d || pos.distanceTo(this.n.f3983h) == 0.0d || pos.distanceTo(this.n.i) == 0.0d) {
                pos2.setPos(pos);
                dP = 0.0d;
            } else {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar2 = this.n;
                dP = p(pos, d2, pos2, 1.0E11d, gVar2.f3979d, gVar2.f3980e);
            }
        }
        if (dP > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dP, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.g gVar) {
        this.n = gVar;
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.a(gVar.f3948a);
        Paint paint = new Paint(1);
        this.u = paint;
        paint.setStyle(Paint.Style.STROKE);
        LineStyle lineStyle = gVar.f3948a;
        if (lineStyle != null) {
            this.u.setStrokeWidth(lineStyle.lineWidth);
            this.u.setColor(gVar.f3948a.color);
        }
        this.r = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.s = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
        Paint paint2 = new Paint(1);
        this.t = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.t.setColor(-65536);
        this.t.setStrokeWidth(5.0f);
        this.o = q(gVar.f3979d);
        this.p = q(gVar.f3980e);
    }
}
