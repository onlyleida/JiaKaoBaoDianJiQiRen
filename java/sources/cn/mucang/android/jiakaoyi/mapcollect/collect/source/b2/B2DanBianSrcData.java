package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class B2DanBianSrcData extends K2SrcData implements Serializable, SourceData<B2DanBianSrcData> {
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

    public B2DanBianSrcData() {
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
        return Step.B2_DanBian.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2DanBianSrcData copy() {
        B2DanBianSrcData b2DanBianSrcData = new B2DanBianSrcData();
        b2DanBianSrcData.gps1 = new Gps(this.gps1);
        b2DanBianSrcData.gps2 = new Gps(this.gps2);
        b2DanBianSrcData.gps3 = new Gps(this.gps3);
        b2DanBianSrcData.gps4 = new Gps(this.gps4);
        b2DanBianSrcData.gps5 = new Gps(this.gps5);
        b2DanBianSrcData.gps6 = new Gps(this.gps6);
        b2DanBianSrcData.gps7 = new Gps(this.gps7);
        b2DanBianSrcData.gps8 = new Gps(this.gps8);
        b2DanBianSrcData.gps9 = new Gps(this.gps9);
        b2DanBianSrcData.gps10 = new Gps(this.gps10);
        b2DanBianSrcData.gps11 = new Gps(this.gps11);
        b2DanBianSrcData.gps12 = new Gps(this.gps12);
        b2DanBianSrcData.name = this.name;
        b2DanBianSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2DanBianSrcData.start1 = new Gps(gps);
            b2DanBianSrcData.start2 = new Gps(this.start2);
        }
        return b2DanBianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public c createCollision(a aVar, String str) {
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
        c cVar = new c();
        cVar.f3655a = createKey();
        cVar.i = new Line(posA, posA2);
        cVar.m = posA3;
        cVar.n = posA4;
        cVar.o = posA5;
        cVar.p = posA6;
        double dTan = 8.0d / Math.tan(Math.toRadians(7.0d));
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA6, posA3, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA5, posA4, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA4, posA5, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA3, posA6, dTan);
        cVar.q = posA7;
        cVar.r = posA8;
        cVar.s = posA9;
        cVar.t = posA10;
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA10, posA7, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA9, posA8, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA8, posA9, dTan);
        cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA7, posA10, dTan);
        cVar.j = new Line(posA11, posA12);
        cVar.l = new Line(posA, posA12);
        cVar.k = new Line(posA2, posA11);
        cVar.x = new cn.mucang.android.jiakaoyi.signal.pos.c(posA7, posA8, posA9, posA10);
        cVar.w = new cn.mucang.android.jiakaoyi.signal.pos.c(posA3, posA4, posA5, posA6);
        cVar.y = new cn.mucang.android.jiakaoyi.signal.pos.c(posA, posA2, posA11, posA12);
        Gps gps = this.start1;
        if (gps == null || this.start2 == null) {
            pos = posA12;
        } else {
            Pos posA13 = aVar.a(gps);
            pos = posA12;
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                cVar.u = new Line(posA13, posA14);
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
        if (cVar.u != null) {
            Line line = cVar.l;
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = cVar.a(new Line(line.end, line.start), cVar.k, cVar.u, cVar.i);
            cVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(cVar.f3656d.b);
            arrayList.add(cVar.f3656d.c);
            arrayList.add(cVar.f3656d.f5821d);
        }
        cVar.z = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        cVar.b = str;
        return cVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2DanBianSrcData b2DanBianSrcData) {
        this.gps1 = new Gps(b2DanBianSrcData.gps1);
        this.gps2 = new Gps(b2DanBianSrcData.gps2);
        this.gps3 = new Gps(b2DanBianSrcData.gps3);
        this.gps4 = new Gps(b2DanBianSrcData.gps4);
        this.gps5 = new Gps(b2DanBianSrcData.gps5);
        this.gps6 = new Gps(b2DanBianSrcData.gps6);
        this.gps7 = new Gps(b2DanBianSrcData.gps7);
        this.gps8 = new Gps(b2DanBianSrcData.gps8);
        this.gps9 = new Gps(b2DanBianSrcData.gps9);
        this.gps10 = new Gps(b2DanBianSrcData.gps10);
        this.gps11 = new Gps(b2DanBianSrcData.gps11);
        this.gps12 = new Gps(b2DanBianSrcData.gps12);
        this.name = b2DanBianSrcData.name;
        this.time = b2DanBianSrcData.time;
        Gps gps = b2DanBianSrcData.start1;
        if (gps == null || b2DanBianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2DanBianSrcData.start2);
        }
    }
}
