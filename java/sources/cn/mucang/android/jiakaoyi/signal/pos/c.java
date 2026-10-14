package cn.mucang.android.jiakaoyi.signal.pos;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pos f5820a;
    public final Pos b;
    public final Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pos f5821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f5822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f5823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<Pos> f5824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Pos f5825h;

    public c(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        this.f5820a = pos;
        this.b = pos2;
        this.c = pos3;
        this.f5821d = pos4;
        ArrayList arrayList = new ArrayList();
        this.f5824g = arrayList;
        arrayList.add(pos);
        arrayList.add(pos2);
        arrayList.add(pos3);
        arrayList.add(pos4);
        this.f5822e = a(arrayList);
        this.f5823f = Math.max(pos.distanceTo(pos3), pos2.distanceTo(pos4)) * 0.5d;
        Math.min(pos.distanceTo(pos2), pos2.distanceTo(pos3));
        this.f5825h = new Pos(pos).meanWith(pos3);
    }

    public static a a(List<Pos> list) {
        double d2 = -1.7976931348623157E308d;
        double d3 = -1.7976931348623157E308d;
        double d4 = Double.MAX_VALUE;
        double d5 = Double.MAX_VALUE;
        for (Pos pos : list) {
            double d6 = pos.x;
            if (d4 > d6) {
                d4 = d6;
            }
            double d7 = pos.y;
            if (d5 > d7) {
                d5 = d7;
            }
            if (d2 < d6) {
                d2 = d6;
            }
            if (d3 < d7) {
                d3 = d7;
            }
        }
        return new a(d4, d5, d2, d3);
    }

    public Pos b() {
        return this.f5825h;
    }

    public void c(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        this.f5820a.setPos(pos);
        this.b.setPos(pos2);
        this.c.setPos(pos3);
        this.f5821d.setPos(pos4);
        this.f5822e.k(a(this.f5824g));
        this.f5823f = Math.max(pos.distanceTo(pos3), pos2.distanceTo(pos4)) * 0.5d;
        Math.min(pos.distanceTo(pos2), pos2.distanceTo(pos3));
        this.f5825h.setPos(new Pos(pos).meanWith(pos3));
    }

    public String toString() {
        return "Rectangle{pos1=" + this.f5820a.toString() + ", pos2=" + this.b.toString() + ", pos3=" + this.c.toString() + ", pos4=" + this.f5821d.toString() + '}';
    }

    public c(c cVar) {
        this(new Pos(cVar.f5820a), new Pos(cVar.b), new Pos(cVar.c), new Pos(cVar.f5821d));
    }
}
