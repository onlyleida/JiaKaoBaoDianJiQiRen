package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.i.c;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class C2ShangPoSrcData extends K2SrcData implements Serializable, SourceData<C2ShangPoSrcData> {
    public Gps gps1;
    public Gps gps10;
    public Gps gps11;
    public Gps gps12;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public Gps gps9;
    public Gps start1;
    public Gps start2;

    public C2ShangPoSrcData() {
        this.lineWidth = 15.0d;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    private double calculateAngle(Pos pos, Pos pos2) {
        return Math.atan2(pos2.z - pos.z, pos.distanceTo(pos2));
    }

    private Line createLine(Gps gps, Gps gps2, c cVar) {
        if (gps == null || gps2 == null) {
            return null;
        }
        return createLine(cVar.d(gps), cVar.d(gps2), true);
    }

    private static void trimPoints(double d2, double d3, List<Pos> list) {
        double dSin = Math.sin(d3);
        double dCos = Math.cos(d3);
        double d4 = dSin * 15.0d;
        double dCos2 = Math.cos(d2) * d4;
        double dSin2 = d4 * Math.sin(d2);
        for (Pos pos : list) {
            pos.translate(dCos2, dSin2);
            pos.z -= dCos * 15.0d;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String createKey() {
        String str = this.gps1.latitude + "," + this.gps1.longitude;
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
        return this.gps1;
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
        return Step.K2_ShangPoQiBu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2ShangPoSrcData copy() {
        C2ShangPoSrcData c2ShangPoSrcData = new C2ShangPoSrcData();
        c2ShangPoSrcData.gps1 = new Gps(this.gps1);
        c2ShangPoSrcData.gps2 = new Gps(this.gps2);
        c2ShangPoSrcData.gps3 = new Gps(this.gps3);
        c2ShangPoSrcData.gps4 = new Gps(this.gps4);
        c2ShangPoSrcData.gps5 = new Gps(this.gps5);
        c2ShangPoSrcData.gps6 = new Gps(this.gps6);
        c2ShangPoSrcData.gps7 = new Gps(this.gps7);
        c2ShangPoSrcData.gps8 = new Gps(this.gps8);
        c2ShangPoSrcData.gps9 = new Gps(this.gps9);
        c2ShangPoSrcData.gps10 = new Gps(this.gps10);
        c2ShangPoSrcData.name = this.name;
        c2ShangPoSrcData.time = this.time;
        c2ShangPoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2ShangPoSrcData.start1 = new Gps(gps);
            c2ShangPoSrcData.start2 = new Gps(this.start2);
        }
        Gps gps2 = this.gps11;
        if (gps2 != null && this.gps12 != null) {
            c2ShangPoSrcData.gps11 = new Gps(gps2);
            c2ShangPoSrcData.gps12 = new Gps(this.gps12);
        }
        return c2ShangPoSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public k createCollision(a aVar, String str) {
        Pos posA;
        Pos pos;
        Pos pos2;
        Pos pos3;
        Pos pos4;
        ArrayList arrayList = new ArrayList();
        Pos posA2 = aVar.a(this.gps1);
        Pos posA3 = aVar.a(this.gps2);
        Pos posA4 = aVar.a(this.gps3);
        Pos posA5 = aVar.a(this.gps4);
        Pos posA6 = aVar.a(this.gps5);
        Pos posA7 = aVar.a(this.gps6);
        Pos posA8 = aVar.a(this.gps7);
        Pos posA9 = aVar.a(this.gps8);
        Pos posA10 = aVar.a(this.gps9);
        Pos posA11 = aVar.a(this.gps10);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        arrayList.add(posA5);
        arrayList.add(posA6);
        arrayList.add(posA7);
        arrayList.add(posA8);
        arrayList.add(posA9);
        arrayList.add(posA10);
        arrayList.add(posA11);
        Gps gps = this.gps11;
        Pos posA12 = null;
        if (gps == null || this.gps12 == null) {
            posA = null;
        } else {
            posA12 = aVar.a(gps);
            posA = aVar.a(this.gps12);
            arrayList.add(posA12);
            arrayList.add(posA);
        }
        Pos posMeanWith = new Pos(posA2).meanWith(posA3);
        Pos posMeanWith2 = new Pos(posA10).meanWith(posA11);
        double dAngleTo = posMeanWith.angleTo(posMeanWith2);
        Pos pos5 = posA;
        Pos pos6 = posA12;
        double degrees = Math.toDegrees(Math.atan2(posMeanWith2.z - posMeanWith.z, posMeanWith.distanceTo(posMeanWith2)));
        if (degrees < 5.0d) {
            degrees = 5.0d;
        } else if (degrees > 7.0d) {
            degrees = 7.0d;
        }
        trimPoints(dAngleTo, Math.toRadians(degrees), arrayList);
        k kVar = new k();
        kVar.f3655a = createKey();
        kVar.i = new Line(posA2, posA3);
        kVar.k = new Line(posA3, posA4);
        kVar.l = new Line(posA4, posA5);
        kVar.m = new Line(posA6, posA7);
        kVar.n = new Line(posA8, posA9);
        if (pos6 == null || pos5 == null) {
            pos = pos6;
            pos2 = pos5;
            pos3 = posA10;
            kVar.r = new Line(posA2, pos3);
            pos4 = posA11;
            kVar.s = new Line(posA3, pos4);
        } else {
            pos2 = pos5;
            kVar.r = new Line(posA2, pos2);
            pos = pos6;
            kVar.s = new Line(posA3, pos);
            pos3 = posA10;
            pos4 = posA11;
        }
        kVar.q = new Line(new Pos(posA6).meanWith(posA9), new Pos(posA7).meanWith(posA8));
        kVar.o = new Line(pos3, pos4);
        if (pos == null || pos2 == null) {
            kVar.j = new Line(pos3, pos4);
        } else {
            kVar.p = new Line(pos, pos2);
            kVar.j = new Line(pos2, pos);
        }
        Gps gps2 = this.start1;
        if (gps2 != null && this.start2 != null) {
            Pos posA13 = aVar.a(gps2);
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                kVar.t = new Line(posA13, posA14);
            }
        }
        Line line = kVar.t;
        if (line != null) {
            arrayList.add(line.start);
            arrayList.add(kVar.t.end);
            Line line2 = kVar.r;
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = kVar.a(new Line(line2.end, line2.start), kVar.s, kVar.t, kVar.i);
            kVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(kVar.f3656d.b);
            arrayList.add(kVar.f3656d.c);
            arrayList.add(kVar.f3656d.f5821d);
        }
        kVar.v = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        kVar.b = str;
        return kVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2ShangPoSrcData c2ShangPoSrcData) {
        this.gps1 = new Gps(c2ShangPoSrcData.gps1);
        this.gps2 = new Gps(c2ShangPoSrcData.gps2);
        this.gps3 = new Gps(c2ShangPoSrcData.gps3);
        this.gps4 = new Gps(c2ShangPoSrcData.gps4);
        this.gps5 = new Gps(c2ShangPoSrcData.gps5);
        this.gps6 = new Gps(c2ShangPoSrcData.gps6);
        this.gps7 = new Gps(c2ShangPoSrcData.gps7);
        this.gps8 = new Gps(c2ShangPoSrcData.gps8);
        this.gps9 = new Gps(c2ShangPoSrcData.gps9);
        this.gps10 = new Gps(c2ShangPoSrcData.gps10);
        this.name = c2ShangPoSrcData.name;
        this.time = c2ShangPoSrcData.time;
        this.lineWidth = c2ShangPoSrcData.lineWidth;
        Gps gps = c2ShangPoSrcData.start1;
        if (gps == null || c2ShangPoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2ShangPoSrcData.start2);
        }
        Gps gps2 = c2ShangPoSrcData.gps11;
        if (gps2 == null || c2ShangPoSrcData.gps12 == null) {
            this.gps11 = null;
            this.gps12 = null;
        } else {
            this.gps11 = new Gps(gps2);
            this.gps12 = new Gps(c2ShangPoSrcData.gps12);
        }
    }

    private Line createLine(Pos pos, Pos pos2, boolean z) {
        if (z) {
            return cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, this.lineWidth * 0.5d);
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, this.lineWidth * 0.5d);
    }
}
