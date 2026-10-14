package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.k;
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
public class B2ShangPoSrcData extends K2SrcData implements Serializable, SourceData<B2ShangPoSrcData> {
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

    public B2ShangPoSrcData() {
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
        return Step.B2_ShangPoQiBu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2ShangPoSrcData copy() {
        B2ShangPoSrcData b2ShangPoSrcData = new B2ShangPoSrcData();
        b2ShangPoSrcData.gps1 = new Gps(this.gps1);
        b2ShangPoSrcData.gps2 = new Gps(this.gps2);
        b2ShangPoSrcData.gps3 = new Gps(this.gps3);
        b2ShangPoSrcData.gps4 = new Gps(this.gps4);
        b2ShangPoSrcData.gps5 = new Gps(this.gps5);
        b2ShangPoSrcData.gps6 = new Gps(this.gps6);
        b2ShangPoSrcData.gps7 = new Gps(this.gps7);
        b2ShangPoSrcData.gps8 = new Gps(this.gps8);
        b2ShangPoSrcData.gps9 = new Gps(this.gps9);
        b2ShangPoSrcData.gps10 = new Gps(this.gps10);
        b2ShangPoSrcData.name = this.name;
        b2ShangPoSrcData.time = this.time;
        b2ShangPoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2ShangPoSrcData.start1 = new Gps(gps);
            b2ShangPoSrcData.start2 = new Gps(this.start2);
        }
        Gps gps2 = this.gps11;
        if (gps2 != null && this.gps12 != null) {
            b2ShangPoSrcData.gps11 = new Gps(gps2);
            b2ShangPoSrcData.gps12 = new Gps(this.gps12);
        }
        return b2ShangPoSrcData;
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
        kVar.k = new Line(posA4, posA5);
        kVar.l = new Line(posA6, posA7);
        kVar.m = new Line(posA8, posA9);
        if (pos6 == null || pos5 == null) {
            pos = pos6;
            pos2 = pos5;
            pos3 = posA10;
            kVar.p = new Line(posA2, pos3);
            pos4 = posA11;
            kVar.q = new Line(posA3, pos4);
        } else {
            pos2 = pos5;
            kVar.p = new Line(posA2, pos2);
            pos = pos6;
            kVar.q = new Line(posA3, pos);
            pos3 = posA10;
            pos4 = posA11;
        }
        new Line(new Pos(posA6).meanWith(posA9), new Pos(posA7).meanWith(posA8));
        kVar.n = new Line(pos3, pos4);
        if (pos == null || pos2 == null) {
            kVar.j = new Line(pos3, pos4);
        } else {
            kVar.o = new Line(pos, pos2);
            kVar.j = new Line(pos2, pos);
        }
        Line line = kVar.i;
        Pos pos7 = line.start;
        Pos pos8 = line.end;
        Line line2 = kVar.j;
        kVar.u = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos7, pos8, line2.start, line2.end);
        Gps gps2 = this.start1;
        if (gps2 != null && this.start2 != null) {
            Pos posA13 = aVar.a(gps2);
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                kVar.r = new Line(posA13, posA14);
            }
        }
        Line line3 = kVar.r;
        if (line3 != null) {
            arrayList.add(line3.start);
            arrayList.add(kVar.r.end);
            Line line4 = kVar.p;
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = kVar.a(new Line(line4.end, line4.start), kVar.q, kVar.r, kVar.i);
            kVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(kVar.f3656d.b);
            arrayList.add(kVar.f3656d.c);
            arrayList.add(kVar.f3656d.f5821d);
        }
        kVar.t = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        kVar.b = str;
        return kVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2ShangPoSrcData b2ShangPoSrcData) {
        this.gps1 = new Gps(b2ShangPoSrcData.gps1);
        this.gps2 = new Gps(b2ShangPoSrcData.gps2);
        this.gps3 = new Gps(b2ShangPoSrcData.gps3);
        this.gps4 = new Gps(b2ShangPoSrcData.gps4);
        this.gps5 = new Gps(b2ShangPoSrcData.gps5);
        this.gps6 = new Gps(b2ShangPoSrcData.gps6);
        this.gps7 = new Gps(b2ShangPoSrcData.gps7);
        this.gps8 = new Gps(b2ShangPoSrcData.gps8);
        this.gps9 = new Gps(b2ShangPoSrcData.gps9);
        this.gps10 = new Gps(b2ShangPoSrcData.gps10);
        this.name = b2ShangPoSrcData.name;
        this.time = b2ShangPoSrcData.time;
        this.lineWidth = b2ShangPoSrcData.lineWidth;
        Gps gps = b2ShangPoSrcData.start1;
        if (gps == null || b2ShangPoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2ShangPoSrcData.start2);
        }
        Gps gps2 = b2ShangPoSrcData.gps11;
        if (gps2 == null || b2ShangPoSrcData.gps12 == null) {
            this.gps11 = null;
            this.gps12 = null;
        } else {
            this.gps11 = new Gps(gps2);
            this.gps12 = new Gps(b2ShangPoSrcData.gps12);
        }
    }

    private Line createLine(Pos pos, Pos pos2, boolean z) {
        if (z) {
            return cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, this.lineWidth * 0.5d);
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, this.lineWidth * 0.5d);
    }
}
