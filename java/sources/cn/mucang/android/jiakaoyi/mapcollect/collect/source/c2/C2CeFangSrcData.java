package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.b;
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
public class C2CeFangSrcData extends K2SrcData implements Serializable, SourceData<C2CeFangSrcData> {
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

    public C2CeFangSrcData() {
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
        return Step.K2_CeFangTingChe.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2CeFangSrcData copy() {
        C2CeFangSrcData c2CeFangSrcData = new C2CeFangSrcData();
        c2CeFangSrcData.gps1 = new Gps(this.gps1);
        c2CeFangSrcData.gps2 = new Gps(this.gps2);
        c2CeFangSrcData.gps3 = new Gps(this.gps3);
        c2CeFangSrcData.gps4 = new Gps(this.gps4);
        c2CeFangSrcData.gps5 = new Gps(this.gps5);
        c2CeFangSrcData.gps6 = new Gps(this.gps6);
        c2CeFangSrcData.gps7 = new Gps(this.gps7);
        c2CeFangSrcData.gps8 = new Gps(this.gps8);
        c2CeFangSrcData.name = this.name;
        c2CeFangSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2CeFangSrcData.start1 = new Gps(gps);
            c2CeFangSrcData.start2 = new Gps(this.start2);
        }
        return c2CeFangSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public b createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        Pos posA7 = aVar.a(this.gps7);
        Pos posA8 = aVar.a(this.gps8);
        b bVar = new b();
        bVar.f3655a = createKey();
        bVar.i = new Line(posA, posA2);
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA6, posA2, posA7);
        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA3, posA2, posA7);
        bVar.n = new Line(posA2, posN2);
        bVar.o = new Line(posN2, posA4);
        bVar.m = new Line(posA4, posA5);
        bVar.p = new Line(posA5, posN);
        bVar.q = new Line(posN, posA7);
        bVar.j = new Line(posA7, posA8);
        bVar.r = new Line(posA8, posA);
        bVar.k = new Line(posA3, posA6);
        bVar.l = new Line(posN2, posN);
        bVar.u = new c(posA, posA2, posA7, posA8);
        bVar.v = new c(posA3, posA4, posA5, posA6);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA9 = aVar.a(gps);
            Pos posA10 = aVar.a(this.start2);
            if (posA9.distanceTo(posA10) > 50.0d) {
                bVar.s = new Line(posA9, posA10);
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
        Line line = bVar.s;
        if (line != null) {
            c cVarA = bVar.a(bVar.r, bVar.n, line, bVar.i);
            bVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(bVar.f3656d.b);
            arrayList.add(bVar.f3656d.c);
            arrayList.add(bVar.f3656d.f5821d);
        }
        bVar.w = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        bVar.b = str;
        return bVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2CeFangSrcData c2CeFangSrcData) {
        this.gps1 = new Gps(c2CeFangSrcData.gps1);
        this.gps2 = new Gps(c2CeFangSrcData.gps2);
        this.gps3 = new Gps(c2CeFangSrcData.gps3);
        this.gps4 = new Gps(c2CeFangSrcData.gps4);
        this.gps5 = new Gps(c2CeFangSrcData.gps5);
        this.gps6 = new Gps(c2CeFangSrcData.gps6);
        this.gps7 = new Gps(c2CeFangSrcData.gps7);
        this.gps8 = new Gps(c2CeFangSrcData.gps8);
        this.name = c2CeFangSrcData.name;
        this.time = c2CeFangSrcData.time;
        Gps gps = c2CeFangSrcData.start1;
        if (gps == null || c2CeFangSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2CeFangSrcData.start2);
        }
    }
}
