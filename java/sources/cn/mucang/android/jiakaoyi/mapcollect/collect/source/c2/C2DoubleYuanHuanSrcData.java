package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class C2DoubleYuanHuanSrcData extends K2SrcData implements Serializable, SourceData<C2DoubleYuanHuanSrcData> {
    private Gps center = null;
    public int innerLineType;
    public boolean isClock;
    public List<Gps> leftInnerPoints;
    public List<Gps> leftOutPoints;
    public int outLineType;
    public List<Gps> rightInnerPoints;
    public List<Gps> rightOutPoints;

    public C2DoubleYuanHuanSrcData() {
        this.lineWidth = 15.0d;
        this.isClock = true;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    private static Gps circleFit(List<Gps> list) {
        if (list.size() < 3) {
            return null;
        }
        int size = list.size();
        int i = 0;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        while (i < size) {
            double d11 = d7;
            double d12 = list.get(i).latitude;
            double d13 = list.get(i).longitude;
            double d14 = d12 * d12;
            double d15 = d13 * d13;
            d3 += d12;
            d5 += d13;
            d2 += d14;
            d8 += d15;
            d6 += d14 * d12;
            d10 += d15 * d13;
            d4 += d12 * d13;
            d7 = d11 + (d12 * d15);
            d9 += d14 * d13;
            i++;
            size = size;
        }
        double d16 = d7;
        double d17 = size;
        double d18 = (d17 * d2) - (d3 * d3);
        double d19 = (d4 * d17) - (d3 * d5);
        double d20 = d2 + d8;
        double d21 = ((d6 * d17) + (d17 * d16)) - (d3 * d20);
        double d22 = (d8 * d17) - (d5 * d5);
        double d23 = ((d9 * d17) + (d17 * d10)) - (d20 * d5);
        double d24 = (d23 * d19) - (d21 * d22);
        double d25 = d22 * d18;
        double d26 = d19 * d19;
        return new Gps((d24 / (d25 - d26)) / (-2.0d), (((d23 * d18) - (d21 * d19)) / (d26 - d25)) / (-2.0d));
    }

    private static double circleFitPos(List<Pos> list, Pos pos) {
        double d2 = 0.0d;
        if (list.size() < 3) {
            return 0.0d;
        }
        int size = list.size();
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        int i = 0;
        while (i < size) {
            double d11 = d4;
            double d12 = list.get(i).x;
            double d13 = list.get(i).y;
            double d14 = d12 * d12;
            double d15 = d13 * d13;
            d3 += d12;
            d5 += d13;
            d2 += d14;
            d7 += d15;
            d6 += d14 * d12;
            d9 += d15 * d13;
            d10 += d12 * d15;
            d8 += d14 * d13;
            i++;
            d4 = d11 + (d12 * d13);
            size = size;
        }
        double d16 = d4;
        double d17 = size;
        double d18 = (d17 * d2) - (d3 * d3);
        double d19 = (d17 * d16) - (d3 * d5);
        double d20 = (d6 * d17) + (d10 * d17);
        double d21 = d2 + d7;
        double d22 = d20 - (d21 * d3);
        double d23 = (d17 * d7) - (d5 * d5);
        double d24 = ((d8 * d17) + (d9 * d17)) - (d21 * d5);
        double d25 = (d24 * d19) - (d22 * d23);
        double d26 = d23 * d18;
        double d27 = d19 * d19;
        double d28 = d25 / (d26 - d27);
        double d29 = ((d24 * d18) - (d22 * d19)) / (d27 - d26);
        double dSqrt = Math.sqrt(((d28 * d28) + (d29 * d29)) - (((-((((d3 * d28) + (d5 * d29)) + d2) + d7)) / d17) * 4.0d)) / 2.0d;
        pos.setPos(d28 / (-2.0d), d29 / (-2.0d));
        return dSqrt;
    }

    private Pos[] getCrossPos(b bVar, b bVar2) {
        double dSqrt;
        double d2;
        double d3;
        double dSqrt2;
        double dSqrt3;
        Pos pos = bVar.f5819a;
        double d4 = pos.x;
        double d5 = pos.y;
        Pos pos2 = bVar2.f5819a;
        double d6 = pos2.x;
        double d7 = pos2.y;
        double d8 = bVar.b;
        double d9 = bVar2.b;
        if (d5 == d7) {
            if (d4 != d6) {
                double d10 = d8 * d8;
                double d11 = ((((d4 * d4) - (d6 * d6)) + (d9 * d9)) - d10) / ((d4 - d6) * 2.0d);
                double d12 = d5 * (-2.0d);
                double d13 = d11 - d4;
                double d14 = (d12 * d12) - (4.0d * (((d5 * d5) - d10) + (d13 * d13)));
                if (d14 > 0.0d) {
                    double d15 = -d12;
                    double dSqrt4 = (Math.sqrt(d14) + d15) / 2.0d;
                    dSqrt3 = (d15 - Math.sqrt(d14)) / 2.0d;
                    dSqrt2 = d11;
                    dSqrt = dSqrt2;
                    d3 = dSqrt4;
                } else if (d14 == 0.0d) {
                    dSqrt = d11;
                    d2 = (-d12) / 2.0d;
                    d3 = d2;
                    dSqrt2 = dSqrt;
                }
                return new Pos[]{new Pos(dSqrt, d3), new Pos(dSqrt2, d2)};
            }
            return null;
        }
        double d16 = d4 * d4;
        double d17 = d8 * d8;
        double d18 = ((((d16 - (d6 * d6)) + (d5 * d5)) - (d7 * d7)) + (d9 * d9)) - d17;
        double d19 = d5 - d7;
        double d20 = d18 / (d19 * 2.0d);
        double d21 = (d4 - d6) / d19;
        double d22 = (d21 * d21) + 1.0d;
        double d23 = d20 - d5;
        double d24 = (d4 + (d23 * d21)) * (-2.0d);
        double d25 = (d24 * d24) - ((4.0d * d22) * ((d16 + (d23 * d23)) - d17));
        if (d25 > 0.0d) {
            double d26 = -d24;
            double d27 = d22 * 2.0d;
            dSqrt = (Math.sqrt(d25) + d26) / d27;
            dSqrt2 = (d26 - Math.sqrt(d25)) / d27;
            d3 = d20 - (d21 * dSqrt);
            dSqrt3 = d20 - (d21 * dSqrt2);
        } else {
            if (d25 != 0.0d) {
                return null;
            }
            dSqrt = (-d24) / (d22 * 2.0d);
            d3 = d20 - (d21 * dSqrt);
            dSqrt3 = d3;
            dSqrt2 = dSqrt;
        }
        d2 = dSqrt3;
        return new Pos[]{new Pos(dSqrt, d3), new Pos(dSqrt2, d2)};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String createKey() {
        String str = giveOnePointToCalZero().latitude + "," + giveOnePointToCalZero().longitude;
        this.key = str;
        return str;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String getName() {
        return this.name;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public long getTime() {
        return this.time;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public Gps giveOnePointToCalZero() {
        List<Gps> list;
        List<Gps> list2;
        if (this.center == null && (list2 = this.leftOutPoints) != null && list2.size() > 2) {
            this.center = circleFit(this.leftOutPoints);
        }
        if (this.center == null && (list = this.rightOutPoints) != null && list.size() > 2) {
            this.center = circleFit(this.rightOutPoints);
        }
        Gps gps = this.center;
        return gps != null ? gps : this.leftInnerPoints.get(0);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void setName(String str) {
        this.name = str;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void setTime(long j) {
        this.time = j;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public int stepId() {
        return Step.K2_DoubleYuanHuan.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
        this.isClock = !this.isClock;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2DoubleYuanHuanSrcData copy() {
        C2DoubleYuanHuanSrcData c2DoubleYuanHuanSrcData = new C2DoubleYuanHuanSrcData();
        c2DoubleYuanHuanSrcData.set(this);
        return c2DoubleYuanHuanSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public d createCollision(a aVar, String str) {
        d dVar = new d();
        dVar.f3655a = createKey();
        dVar.j = new ArrayList();
        dVar.i = new ArrayList();
        dVar.l = new ArrayList();
        dVar.k = new ArrayList();
        if (g.d(this.leftOutPoints)) {
            Iterator<Gps> it = this.leftOutPoints.iterator();
            while (it.hasNext()) {
                dVar.j.add(aVar.a(it.next()));
            }
        }
        if (g.d(this.leftInnerPoints)) {
            Iterator<Gps> it2 = this.leftInnerPoints.iterator();
            while (it2.hasNext()) {
                dVar.i.add(aVar.a(it2.next()));
            }
        }
        if (g.d(this.rightOutPoints)) {
            Iterator<Gps> it3 = this.rightOutPoints.iterator();
            while (it3.hasNext()) {
                dVar.l.add(aVar.a(it3.next()));
            }
        }
        if (g.d(this.rightInnerPoints)) {
            Iterator<Gps> it4 = this.rightInnerPoints.iterator();
            while (it4.hasNext()) {
                dVar.k.add(aVar.a(it4.next()));
            }
        }
        Pos pos = new Pos();
        Pos pos2 = new Pos();
        Pos pos3 = new Pos();
        Pos pos4 = new Pos();
        dVar.s = circleFitPos(dVar.j, pos);
        dVar.r = circleFitPos(dVar.i, pos2);
        dVar.u = circleFitPos(dVar.l, pos3);
        dVar.t = circleFitPos(dVar.k, pos4);
        dVar.n = pos;
        dVar.o = pos2;
        dVar.p = pos3;
        dVar.q = pos4;
        double d2 = this.lineWidth;
        dVar.v = d2;
        dVar.w = this.innerLineType;
        dVar.x = this.outLineType;
        double d3 = pos.x;
        double d4 = dVar.s;
        double d5 = pos.y;
        cn.mucang.android.jiakaoyi.signal.pos.a aVar2 = new cn.mucang.android.jiakaoyi.signal.pos.a((d3 - d4) - d2, (d5 - d4) - d2, d3 + d4 + d2, d2 + d5 + d4);
        double d6 = pos3.x;
        double d7 = dVar.u;
        double d8 = this.lineWidth;
        double d9 = pos3.y;
        aVar2.i(new cn.mucang.android.jiakaoyi.signal.pos.a((d6 - d7) - d8, (d9 - d7) - d8, d6 + d7 + d8, d9 + d7 + d8));
        dVar.m = aVar2;
        dVar.b = str;
        dVar.y = new b(dVar.n, dVar.s);
        dVar.z = new b(dVar.o, dVar.r);
        dVar.A = new b(dVar.p, dVar.u);
        dVar.B = new b(dVar.q, dVar.t);
        Pos[] crossPos = getCrossPos(dVar.y, dVar.A);
        if (crossPos != null) {
            dVar.C = crossPos[0];
            dVar.D = crossPos[1];
        }
        return dVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2DoubleYuanHuanSrcData c2DoubleYuanHuanSrcData) {
        if (c2DoubleYuanHuanSrcData.leftOutPoints != null) {
            this.leftOutPoints = new ArrayList();
            Iterator<Gps> it = c2DoubleYuanHuanSrcData.leftOutPoints.iterator();
            while (it.hasNext()) {
                this.leftOutPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftOutPoints = null;
        }
        if (c2DoubleYuanHuanSrcData.leftInnerPoints != null) {
            this.leftInnerPoints = new ArrayList();
            Iterator<Gps> it2 = c2DoubleYuanHuanSrcData.leftInnerPoints.iterator();
            while (it2.hasNext()) {
                this.leftInnerPoints.add(new Gps(it2.next()));
            }
        } else {
            this.leftInnerPoints = null;
        }
        if (c2DoubleYuanHuanSrcData.rightOutPoints != null) {
            this.rightOutPoints = new ArrayList();
            Iterator<Gps> it3 = c2DoubleYuanHuanSrcData.rightOutPoints.iterator();
            while (it3.hasNext()) {
                this.rightOutPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightOutPoints = null;
        }
        if (c2DoubleYuanHuanSrcData.rightInnerPoints != null) {
            this.rightInnerPoints = new ArrayList();
            Iterator<Gps> it4 = c2DoubleYuanHuanSrcData.rightInnerPoints.iterator();
            while (it4.hasNext()) {
                this.rightInnerPoints.add(new Gps(it4.next()));
            }
        } else {
            this.rightInnerPoints = null;
        }
        this.lineWidth = c2DoubleYuanHuanSrcData.lineWidth;
        this.time = c2DoubleYuanHuanSrcData.time;
        this.name = c2DoubleYuanHuanSrcData.name;
        this.innerLineType = c2DoubleYuanHuanSrcData.innerLineType;
        this.outLineType = c2DoubleYuanHuanSrcData.outLineType;
        this.isClock = c2DoubleYuanHuanSrcData.isClock;
        this.key = c2DoubleYuanHuanSrcData.key;
    }
}
