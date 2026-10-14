package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.d;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class MotoDanBianSrcData extends K2SrcData implements Serializable, SourceData<MotoDanBianSrcData> {
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

    public MotoDanBianSrcData() {
        this.lineWidth = 15.0d;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String createKey() {
        String str = this.gps3.latitude + "," + this.gps3.longitude;
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
        return Step.Moto_DanBian.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoDanBianSrcData copy() {
        MotoDanBianSrcData motoDanBianSrcData = new MotoDanBianSrcData();
        motoDanBianSrcData.gps1 = new Gps(this.gps1);
        motoDanBianSrcData.gps2 = new Gps(this.gps2);
        motoDanBianSrcData.gps3 = new Gps(this.gps3);
        motoDanBianSrcData.gps4 = new Gps(this.gps4);
        motoDanBianSrcData.gps5 = new Gps(this.gps5);
        motoDanBianSrcData.gps6 = new Gps(this.gps6);
        motoDanBianSrcData.gps7 = new Gps(this.gps7);
        motoDanBianSrcData.gps8 = new Gps(this.gps8);
        motoDanBianSrcData.gps9 = new Gps(this.gps9);
        motoDanBianSrcData.gps10 = new Gps(this.gps10);
        motoDanBianSrcData.gps11 = new Gps(this.gps11);
        motoDanBianSrcData.gps12 = new Gps(this.gps12);
        motoDanBianSrcData.name = this.name;
        motoDanBianSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoDanBianSrcData.start1 = new Gps(gps);
            motoDanBianSrcData.start2 = new Gps(this.start2);
        }
        return motoDanBianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public d createCollision(a aVar, String str) {
        Pos pos;
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        Pos posA7 = aVar.a(this.gps7);
        Pos posA8 = aVar.a(this.gps8);
        Pos posA9 = aVar.a(this.gps9);
        Pos posA10 = aVar.a(this.gps10);
        Pos posA11 = aVar.a(this.gps11);
        Pos posA12 = aVar.a(this.gps12);
        d dVar = new d();
        dVar.f3655a = createKey();
        dVar.i = new Line(posA, posA2);
        dVar.m = posA3;
        dVar.n = posA4;
        dVar.o = posA5;
        dVar.p = posA6;
        double dTan = 7.0d / Math.tan(Math.toRadians(11.0d));
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA6, posA3, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA5, posA4, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA4, posA5, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA3, posA6, dTan);
        dVar.q = posA7;
        dVar.r = posA8;
        dVar.s = posA9;
        dVar.t = posA10;
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA10, posA7, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA9, posA8, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA8, posA9, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA7, posA10, dTan);
        dVar.j = new Line(posA11, posA12);
        dVar.l = new Line(posA, posA12);
        dVar.k = new Line(posA2, posA11);
        new c(posA7, posA8, posA9, posA10);
        new c(posA3, posA4, posA5, posA6);
        dVar.w = new c(posA, posA2, posA11, posA12);
        Gps gps = this.start1;
        if (gps == null || this.start2 == null) {
            pos = posA12;
        } else {
            Pos posA13 = aVar.a(gps);
            pos = posA12;
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                dVar.u = new Line(posA13, posA14);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
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
        arrayList.add(pos);
        if (dVar.u != null) {
            Line line = dVar.l;
            c cVarA = dVar.a(new Line(line.end, line.start), dVar.k, dVar.u, dVar.i);
            dVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(dVar.f3656d.b);
            arrayList.add(dVar.f3656d.c);
            arrayList.add(dVar.f3656d.f5821d);
        }
        dVar.x = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        dVar.b = str;
        return dVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoDanBianSrcData motoDanBianSrcData) {
        this.gps1 = new Gps(motoDanBianSrcData.gps1);
        this.gps2 = new Gps(motoDanBianSrcData.gps2);
        this.gps3 = new Gps(motoDanBianSrcData.gps3);
        this.gps4 = new Gps(motoDanBianSrcData.gps4);
        this.gps5 = new Gps(motoDanBianSrcData.gps5);
        this.gps6 = new Gps(motoDanBianSrcData.gps6);
        this.gps7 = new Gps(motoDanBianSrcData.gps7);
        this.gps8 = new Gps(motoDanBianSrcData.gps8);
        this.gps9 = new Gps(motoDanBianSrcData.gps9);
        this.gps10 = new Gps(motoDanBianSrcData.gps10);
        this.gps11 = new Gps(motoDanBianSrcData.gps11);
        this.gps12 = new Gps(motoDanBianSrcData.gps12);
        this.name = motoDanBianSrcData.name;
        this.time = motoDanBianSrcData.time;
        Gps gps = motoDanBianSrcData.start1;
        if (gps == null || motoDanBianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoDanBianSrcData.start2);
        }
    }
}
