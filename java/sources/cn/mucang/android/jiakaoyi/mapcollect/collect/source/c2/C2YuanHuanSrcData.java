package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.m;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
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
public class C2YuanHuanSrcData extends K2SrcData implements Serializable, SourceData<C2YuanHuanSrcData> {
    private Gps center = null;
    public int innerLineType;
    public List<Gps> innerPoints;
    public boolean isClock;
    public int outLineType;
    public List<Gps> outPoints;

    public C2YuanHuanSrcData() {
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
        if (this.center == null && (list = this.outPoints) != null && list.size() > 2) {
            this.center = circleFit(this.outPoints);
        }
        Gps gps = this.center;
        return gps != null ? gps : this.innerPoints.get(0);
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
        return Step.K2_YuanHuanLianXi.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
        this.isClock = !this.isClock;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2YuanHuanSrcData copy() {
        C2YuanHuanSrcData c2YuanHuanSrcData = new C2YuanHuanSrcData();
        c2YuanHuanSrcData.set(this);
        return c2YuanHuanSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public m createCollision(a aVar, String str) {
        m mVar = new m();
        mVar.f3655a = createKey();
        mVar.j = new ArrayList();
        mVar.i = new ArrayList();
        if (g.d(this.outPoints)) {
            Iterator<Gps> it = this.outPoints.iterator();
            while (it.hasNext()) {
                mVar.j.add(aVar.a(it.next()));
            }
            Pos pos = mVar.j.get(0);
            List<Pos> list = mVar.j;
            mVar.t = new Line(pos, list.get(list.size() - 1));
        }
        if (g.d(this.innerPoints)) {
            Iterator<Gps> it2 = this.innerPoints.iterator();
            while (it2.hasNext()) {
                mVar.i.add(aVar.a(it2.next()));
            }
            Pos pos2 = mVar.i.get(0);
            List<Pos> list2 = mVar.i;
            mVar.s = new Line(pos2, list2.get(list2.size() - 1));
        }
        Pos pos3 = new Pos();
        Pos pos4 = new Pos();
        mVar.o = circleFitPos(mVar.j, pos3);
        mVar.n = circleFitPos(mVar.i, pos4);
        mVar.l = pos3;
        mVar.m = pos4;
        double d2 = this.lineWidth;
        mVar.p = d2;
        mVar.q = this.innerLineType;
        mVar.r = this.outLineType;
        double d3 = pos3.x;
        double d4 = mVar.o;
        double d5 = pos3.y;
        mVar.k = new cn.mucang.android.jiakaoyi.signal.pos.a((d3 - d4) - d2, (d5 - d4) - d2, d3 + d4 + d2, d2 + d5 + d4);
        mVar.b = str;
        mVar.u = new b(mVar.l, mVar.o);
        mVar.v = new b(mVar.m, mVar.n);
        return mVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2YuanHuanSrcData c2YuanHuanSrcData) {
        if (c2YuanHuanSrcData.outPoints != null) {
            this.outPoints = new ArrayList();
            Iterator<Gps> it = c2YuanHuanSrcData.outPoints.iterator();
            while (it.hasNext()) {
                this.outPoints.add(new Gps(it.next()));
            }
        } else {
            this.outPoints = null;
        }
        if (c2YuanHuanSrcData.innerPoints != null) {
            this.innerPoints = new ArrayList();
            Iterator<Gps> it2 = c2YuanHuanSrcData.innerPoints.iterator();
            while (it2.hasNext()) {
                this.innerPoints.add(new Gps(it2.next()));
            }
        } else {
            this.innerPoints = null;
        }
        this.lineWidth = c2YuanHuanSrcData.lineWidth;
        this.time = c2YuanHuanSrcData.time;
        this.name = c2YuanHuanSrcData.name;
        this.innerLineType = c2YuanHuanSrcData.innerLineType;
        this.outLineType = c2YuanHuanSrcData.outLineType;
        this.isClock = c2YuanHuanSrcData.isClock;
        this.key = c2YuanHuanSrcData.key;
    }
}
