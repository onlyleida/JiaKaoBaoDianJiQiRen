package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class B2CeFangSrcData extends K2SrcData implements Serializable, SourceData<B2CeFangSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public Gps start1;
    public Gps start2;

    public B2CeFangSrcData() {
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
        return Step.B2_CeFangTingChe.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2CeFangSrcData copy() {
        B2CeFangSrcData b2CeFangSrcData = new B2CeFangSrcData();
        b2CeFangSrcData.gps1 = new Gps(this.gps1);
        b2CeFangSrcData.gps2 = new Gps(this.gps2);
        b2CeFangSrcData.gps3 = new Gps(this.gps3);
        b2CeFangSrcData.gps4 = new Gps(this.gps4);
        b2CeFangSrcData.gps5 = new Gps(this.gps5);
        b2CeFangSrcData.gps6 = new Gps(this.gps6);
        b2CeFangSrcData.gps7 = new Gps(this.gps7);
        b2CeFangSrcData.gps8 = new Gps(this.gps8);
        b2CeFangSrcData.name = this.name;
        b2CeFangSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2CeFangSrcData.start1 = new Gps(gps);
            b2CeFangSrcData.start2 = new Gps(this.start2);
        }
        return b2CeFangSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public a createCollision(cn.mucang.android.jiakaoyi.signal.i.a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        Pos posA7 = aVar.a(this.gps7);
        Pos posA8 = aVar.a(this.gps8);
        a aVar2 = new a();
        aVar2.f3655a = createKey();
        aVar2.i = new Line(posA, posA2);
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA6, posA2, posA7);
        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA3, posA2, posA7);
        aVar2.n = new Line(posA2, posN2);
        aVar2.o = new Line(posN2, posA4);
        aVar2.m = new Line(posA4, posA5);
        aVar2.p = new Line(posA5, posN);
        aVar2.q = new Line(posN, posA7);
        aVar2.j = new Line(posA7, posA8);
        aVar2.r = new Line(posA8, posA);
        aVar2.k = new Line(posA3, posA6);
        aVar2.l = new Line(posN2, posN);
        aVar2.u = new c(posA, posA2, posA7, posA8);
        aVar2.v = new c(posA3, posA4, posA5, posA6);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA9 = aVar.a(gps);
            Pos posA10 = aVar.a(this.start2);
            if (posA9.distanceTo(posA10) > 50.0d) {
                aVar2.s = new Line(posA9, posA10);
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
        Line line = aVar2.s;
        if (line != null) {
            c cVarA = aVar2.a(aVar2.r, aVar2.n, line, aVar2.i);
            aVar2.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(aVar2.f3656d.b);
            arrayList.add(aVar2.f3656d.c);
            arrayList.add(aVar2.f3656d.f5821d);
        }
        aVar2.w = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        aVar2.b = str;
        return aVar2;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2CeFangSrcData b2CeFangSrcData) {
        this.gps1 = new Gps(b2CeFangSrcData.gps1);
        this.gps2 = new Gps(b2CeFangSrcData.gps2);
        this.gps3 = new Gps(b2CeFangSrcData.gps3);
        this.gps4 = new Gps(b2CeFangSrcData.gps4);
        this.gps5 = new Gps(b2CeFangSrcData.gps5);
        this.gps6 = new Gps(b2CeFangSrcData.gps6);
        this.gps7 = new Gps(b2CeFangSrcData.gps7);
        this.gps8 = new Gps(b2CeFangSrcData.gps8);
        this.name = b2CeFangSrcData.name;
        this.time = b2CeFangSrcData.time;
        Gps gps = b2CeFangSrcData.start1;
        if (gps == null || b2CeFangSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2CeFangSrcData.start2);
        }
    }
}
