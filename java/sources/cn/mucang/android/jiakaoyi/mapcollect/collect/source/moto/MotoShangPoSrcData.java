package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.h;
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
public class MotoShangPoSrcData extends K2SrcData implements Serializable, SourceData<MotoShangPoSrcData> {
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

    public MotoShangPoSrcData() {
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
        return Step.Moto_ShangPoQiBu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoShangPoSrcData copy() {
        MotoShangPoSrcData motoShangPoSrcData = new MotoShangPoSrcData();
        motoShangPoSrcData.gps1 = new Gps(this.gps1);
        motoShangPoSrcData.gps2 = new Gps(this.gps2);
        motoShangPoSrcData.gps3 = new Gps(this.gps3);
        motoShangPoSrcData.gps4 = new Gps(this.gps4);
        motoShangPoSrcData.gps5 = new Gps(this.gps5);
        motoShangPoSrcData.gps6 = new Gps(this.gps6);
        motoShangPoSrcData.gps7 = new Gps(this.gps7);
        motoShangPoSrcData.gps8 = new Gps(this.gps8);
        motoShangPoSrcData.gps9 = new Gps(this.gps9);
        motoShangPoSrcData.gps10 = new Gps(this.gps10);
        motoShangPoSrcData.name = this.name;
        motoShangPoSrcData.time = this.time;
        motoShangPoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoShangPoSrcData.start1 = new Gps(gps);
            motoShangPoSrcData.start2 = new Gps(this.start2);
        }
        Gps gps2 = this.gps11;
        if (gps2 != null && this.gps12 != null) {
            motoShangPoSrcData.gps11 = new Gps(gps2);
            motoShangPoSrcData.gps12 = new Gps(this.gps12);
        }
        return motoShangPoSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public h createCollision(a aVar, String str) {
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
        h hVar = new h();
        hVar.f3655a = createKey();
        hVar.i = new Line(posA2, posA3);
        hVar.k = new Line(posA4, posA5);
        hVar.l = new Line(posA6, posA7);
        hVar.m = new Line(posA8, posA9);
        if (pos6 == null || pos5 == null) {
            pos = pos6;
            pos2 = pos5;
            pos3 = posA10;
            hVar.p = new Line(posA2, pos3);
            pos4 = posA11;
            hVar.q = new Line(posA3, pos4);
        } else {
            pos2 = pos5;
            hVar.p = new Line(posA2, pos2);
            pos = pos6;
            hVar.q = new Line(posA3, pos);
            pos3 = posA10;
            pos4 = posA11;
        }
        new Line(new Pos(posA6).meanWith(posA9), new Pos(posA7).meanWith(posA8));
        hVar.n = new Line(pos3, pos4);
        if (pos == null || pos2 == null) {
            hVar.j = new Line(pos4, pos3);
        } else {
            hVar.o = new Line(pos, pos2);
            hVar.j = new Line(pos, pos2);
        }
        Gps gps2 = this.start1;
        if (gps2 != null && this.start2 != null) {
            Pos posA13 = aVar.a(gps2);
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                hVar.r = new Line(posA13, posA14);
            }
        }
        Line line = hVar.r;
        if (line != null) {
            arrayList.add(line.start);
            arrayList.add(hVar.r.end);
            Line line2 = hVar.p;
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = hVar.a(new Line(line2.end, line2.start), hVar.q, hVar.r, hVar.i);
            hVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(hVar.f3656d.b);
            arrayList.add(hVar.f3656d.c);
            arrayList.add(hVar.f3656d.f5821d);
        }
        hVar.t = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        hVar.b = str;
        return hVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoShangPoSrcData motoShangPoSrcData) {
        this.gps1 = new Gps(motoShangPoSrcData.gps1);
        this.gps2 = new Gps(motoShangPoSrcData.gps2);
        this.gps3 = new Gps(motoShangPoSrcData.gps3);
        this.gps4 = new Gps(motoShangPoSrcData.gps4);
        this.gps5 = new Gps(motoShangPoSrcData.gps5);
        this.gps6 = new Gps(motoShangPoSrcData.gps6);
        this.gps7 = new Gps(motoShangPoSrcData.gps7);
        this.gps8 = new Gps(motoShangPoSrcData.gps8);
        this.gps9 = new Gps(motoShangPoSrcData.gps9);
        this.gps10 = new Gps(motoShangPoSrcData.gps10);
        this.name = motoShangPoSrcData.name;
        this.time = motoShangPoSrcData.time;
        this.lineWidth = motoShangPoSrcData.lineWidth;
        Gps gps = motoShangPoSrcData.start1;
        if (gps == null || motoShangPoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoShangPoSrcData.start2);
        }
        Gps gps2 = motoShangPoSrcData.gps11;
        if (gps2 == null || motoShangPoSrcData.gps12 == null) {
            this.gps11 = null;
            this.gps12 = null;
        } else {
            this.gps11 = new Gps(gps2);
            this.gps12 = new Gps(motoShangPoSrcData.gps12);
        }
    }

    private Line createLine(Pos pos, Pos pos2, boolean z) {
        if (z) {
            return cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, this.lineWidth * 0.5d);
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, this.lineWidth * 0.5d);
    }
}
