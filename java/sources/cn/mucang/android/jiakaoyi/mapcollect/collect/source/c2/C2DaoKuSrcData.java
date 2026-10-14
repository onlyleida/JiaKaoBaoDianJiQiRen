package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class C2DaoKuSrcData extends K2SrcData implements Serializable, SourceData<C2DaoKuSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public boolean hasTurnOrientation;
    public Gps start1;
    public Gps start2;

    public C2DaoKuSrcData() {
        this.lineWidth = 15.0d;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }

    private double trimWidth(double d2) {
        if (d2 < 10.0d) {
            return 10.0d;
        }
        if (d2 > 30.0d) {
            return 30.0d;
        }
        return d2;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return true;
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
        return Step.K2_DaoCheRuKu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
        swap(this.gps1, this.gps8);
        swap(this.gps2, this.gps7);
        swap(this.gps3, this.gps6);
        swap(this.gps5, this.gps4);
        this.hasTurnOrientation = true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2DaoKuSrcData copy() {
        C2DaoKuSrcData c2DaoKuSrcData = new C2DaoKuSrcData();
        c2DaoKuSrcData.gps1 = new Gps(this.gps1);
        c2DaoKuSrcData.gps2 = new Gps(this.gps2);
        c2DaoKuSrcData.gps3 = new Gps(this.gps3);
        c2DaoKuSrcData.gps4 = new Gps(this.gps4);
        c2DaoKuSrcData.gps5 = new Gps(this.gps5);
        c2DaoKuSrcData.gps6 = new Gps(this.gps6);
        c2DaoKuSrcData.gps7 = new Gps(this.gps7);
        c2DaoKuSrcData.gps8 = new Gps(this.gps8);
        c2DaoKuSrcData.name = this.name;
        c2DaoKuSrcData.time = this.time;
        c2DaoKuSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2DaoKuSrcData.start1 = new Gps(gps);
            c2DaoKuSrcData.start2 = new Gps(this.start2);
        }
        return c2DaoKuSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public c createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        Pos posA7 = aVar.a(this.gps7);
        Pos posA8 = aVar.a(this.gps8);
        c cVar = new c();
        cVar.f3655a = createKey();
        cVar.i = new Line(posA, posA2);
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA6, posA2, posA7);
        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA3, posA2, posA7);
        cVar.n = new Line(posA2, posN2);
        cVar.o = new Line(posN2, posA4);
        cVar.m = new Line(posA4, posA5);
        cVar.p = new Line(posA5, posN);
        cVar.q = new Line(posN, posA7);
        cVar.j = new Line(posA7, posA8);
        cVar.r = new Line(posA8, posA);
        cVar.k = new Line(posA3, posA6);
        cVar.l = new Line(posN2, posN);
        cVar.v = new cn.mucang.android.jiakaoyi.signal.pos.c(posA, posA2, posA7, posA8);
        cVar.w = new cn.mucang.android.jiakaoyi.signal.pos.c(posA3, posA4, posA5, posA6);
        cVar.u = posA.vectorTo(posA4).cross(posA.vectorTo(posA8)) > 0.0d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        arrayList.add(posA5);
        arrayList.add(posA6);
        arrayList.add(posA7);
        arrayList.add(posA8);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA9 = aVar.a(gps);
            Pos posA10 = aVar.a(this.start2);
            if (posA9.distanceTo(posA10) > 50.0d) {
                cVar.s = new Line(posA9, posA10);
            }
        }
        Line line = cVar.s;
        if (line != null) {
            if (cVar.u) {
                cVar.f3656d = cVar.a(cVar.n, cVar.r, line, cVar.i);
            } else {
                cVar.f3656d = cVar.a(cVar.r, cVar.n, line, cVar.i);
            }
            arrayList.add(cVar.f3656d.f5820a);
            arrayList.add(cVar.f3656d.b);
            arrayList.add(cVar.f3656d.c);
            arrayList.add(cVar.f3656d.f5821d);
        }
        cVar.x = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        cVar.b = str;
        return cVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2DaoKuSrcData c2DaoKuSrcData) {
        this.gps1 = new Gps(c2DaoKuSrcData.gps1);
        this.gps2 = new Gps(c2DaoKuSrcData.gps2);
        this.gps3 = new Gps(c2DaoKuSrcData.gps3);
        this.gps4 = new Gps(c2DaoKuSrcData.gps4);
        this.gps5 = new Gps(c2DaoKuSrcData.gps5);
        this.gps6 = new Gps(c2DaoKuSrcData.gps6);
        this.gps7 = new Gps(c2DaoKuSrcData.gps7);
        this.gps8 = new Gps(c2DaoKuSrcData.gps8);
        this.name = c2DaoKuSrcData.name;
        this.time = c2DaoKuSrcData.time;
        this.lineWidth = c2DaoKuSrcData.lineWidth;
        Gps gps = c2DaoKuSrcData.start1;
        if (gps == null || c2DaoKuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2DaoKuSrcData.start2);
        }
    }
}
