package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.h;
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
public class B2QiFuSrcData extends K2SrcData implements Serializable, SourceData<B2QiFuSrcData> {
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

    public B2QiFuSrcData() {
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
        return Step.B2_QiFu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2QiFuSrcData copy() {
        B2QiFuSrcData b2QiFuSrcData = new B2QiFuSrcData();
        b2QiFuSrcData.gps1 = new Gps(this.gps1);
        b2QiFuSrcData.gps2 = new Gps(this.gps2);
        b2QiFuSrcData.gps3 = new Gps(this.gps3);
        b2QiFuSrcData.gps4 = new Gps(this.gps4);
        b2QiFuSrcData.gps5 = new Gps(this.gps5);
        b2QiFuSrcData.gps6 = new Gps(this.gps6);
        b2QiFuSrcData.gps7 = new Gps(this.gps7);
        b2QiFuSrcData.gps8 = new Gps(this.gps8);
        b2QiFuSrcData.gps9 = new Gps(this.gps9);
        b2QiFuSrcData.gps10 = new Gps(this.gps10);
        b2QiFuSrcData.gps11 = new Gps(this.gps11);
        b2QiFuSrcData.gps12 = new Gps(this.gps12);
        b2QiFuSrcData.name = this.name;
        b2QiFuSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2QiFuSrcData.start1 = new Gps(gps);
            b2QiFuSrcData.start2 = new Gps(this.start2);
        }
        return b2QiFuSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public h createCollision(a aVar, String str) {
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
        h hVar = new h();
        hVar.f3655a = createKey();
        hVar.i = new Line(posA, posA2);
        hVar.k = posA3;
        hVar.l = posA4;
        hVar.m = posA5;
        hVar.n = posA6;
        hVar.o = posA7;
        hVar.p = posA8;
        hVar.q = posA9;
        hVar.r = posA10;
        hVar.j = new Line(posA11, posA12);
        hVar.v = new Line(posA, posA12);
        hVar.u = new Line(posA2, posA11);
        new c(posA7, posA8, posA9, posA10);
        new c(posA3, posA4, posA5, posA6);
        hVar.w = new c(posA, posA2, posA11, posA12);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA13 = aVar.a(gps);
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                hVar.s = new Line(posA13, posA14);
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
        arrayList.add(posA12);
        if (hVar.s != null) {
            Line line = hVar.v;
            c cVarA = hVar.a(new Line(line.end, line.start), hVar.u, hVar.s, hVar.i);
            hVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(hVar.f3656d.b);
            arrayList.add(hVar.f3656d.c);
            arrayList.add(hVar.f3656d.f5821d);
        }
        hVar.x = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        hVar.b = str;
        return hVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2QiFuSrcData b2QiFuSrcData) {
        this.gps1 = new Gps(b2QiFuSrcData.gps1);
        this.gps2 = new Gps(b2QiFuSrcData.gps2);
        this.gps3 = new Gps(b2QiFuSrcData.gps3);
        this.gps4 = new Gps(b2QiFuSrcData.gps4);
        this.gps5 = new Gps(b2QiFuSrcData.gps5);
        this.gps6 = new Gps(b2QiFuSrcData.gps6);
        this.gps7 = new Gps(b2QiFuSrcData.gps7);
        this.gps8 = new Gps(b2QiFuSrcData.gps8);
        this.gps9 = new Gps(b2QiFuSrcData.gps9);
        this.gps10 = new Gps(b2QiFuSrcData.gps10);
        this.gps11 = new Gps(b2QiFuSrcData.gps11);
        this.gps12 = new Gps(b2QiFuSrcData.gps12);
        this.name = b2QiFuSrcData.name;
        this.time = b2QiFuSrcData.time;
        Gps gps = b2QiFuSrcData.start1;
        if (gps == null || b2QiFuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2QiFuSrcData.start2);
        }
    }
}
