package cn.mucang.android.jiakaoyi.signal.f;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LineAB f5586d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f5589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f5590h;
    private Pos i;
    private Pos j;
    private Pos k;
    private Pos l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f5585a = -100000.0f;
    private double b = 0.0d;
    private long c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Pos> f5587e = new ArrayList(20);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Pos> f5588f = new ArrayList();

    public a(float f2) {
    }

    private Pos a(e eVar, Pos pos) {
        if (this.f5590h <= 0) {
            this.f5590h = eVar.d().L;
        }
        float f2 = eVar.d().b;
        long j = eVar.d().L;
        float f3 = eVar.d().D;
        float f4 = (float) (((((double) (this.f5589g + f2)) * 0.5d) / 3.6d) * (j - this.f5590h) * 0.001d);
        double radians = Math.toRadians(((double) (this.f5585a + f3)) * 0.5d);
        Pos pos2 = new Pos();
        double d2 = f4;
        pos2.x = pos.x + (Math.cos(radians) * d2);
        pos2.y = pos.y + (d2 * Math.sin(radians));
        this.f5589g = f2;
        this.f5590h = j;
        this.f5585a = f3;
        return pos2;
    }

    private void d(Pos pos) {
        if (this.f5586d != null) {
            return;
        }
        this.f5587e.add(pos);
        if (this.f5587e.size() > 10) {
            LineAB lineABCalculate = LineAB.calculate(this.f5587e);
            if (this.f5587e.size() > 15) {
                this.f5586d = lineABCalculate;
            } else {
                for (Pos pos2 : this.f5587e) {
                    if (lineABCalculate.distance((float) pos2.x, (float) pos2.y) > 0.1d) {
                        this.f5586d = lineABCalculate;
                    }
                }
            }
            if (this.f5586d != null) {
                this.j = this.f5587e.get(0);
                List<Pos> list = this.f5587e;
                Pos pos3 = list.get(list.size() - 1);
                this.k = pos3;
                this.l = this.j.vectorTo(pos3);
            }
        }
    }

    private Pos e(List<Pos> list, e eVar, int i) {
        if (this.c <= 0) {
            this.c = eVar.d().L;
            list.add(new Pos(0.0d, 0.0d));
            this.f5589g = eVar.d().b;
            this.f5590h = eVar.d().L;
            this.f5585a = eVar.d().D;
        } else {
            list.add(a(eVar, list.get(list.size() - 1)));
            if (list.size() > i) {
                list.remove(0);
            }
        }
        return list.get(list.size() - 1);
    }

    public void b(e eVar) {
        if (eVar.d().b >= 1.0f && eVar.d().M == 1) {
            e(this.f5588f, eVar, 10);
        }
    }

    public double c(e eVar) {
        if (eVar.d().b < 1.0f) {
            return this.b;
        }
        if (this.f5588f.size() > 0) {
            Iterator<Pos> it = this.f5588f.iterator();
            while (it.hasNext()) {
                d(it.next());
            }
            List<Pos> list = this.f5588f;
            this.i = list.get(list.size() - 1);
            this.f5588f.clear();
        }
        Pos pos = this.i;
        if (pos == null) {
            if (this.f5587e.isEmpty()) {
                pos = new Pos(0.0d, 0.0d);
            } else {
                List<Pos> list2 = this.f5587e;
                pos = list2.get(list2.size() - 1);
            }
        }
        Pos posA = a(eVar, pos);
        if (eVar.d().M == 1) {
            d(posA);
        }
        this.i = posA;
        if (this.f5586d != null) {
            this.b = this.f5586d.distance((float) posA.x, (float) posA.y) * (this.l.cross(this.j.vectorTo(posA)) <= 0.0d ? -1 : 1);
        }
        return this.b;
    }
}
