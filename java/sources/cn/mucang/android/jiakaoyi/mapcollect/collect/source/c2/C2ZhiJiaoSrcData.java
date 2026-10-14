package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
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
public class C2ZhiJiaoSrcData extends K2SrcData implements Serializable, SourceData<C2ZhiJiaoSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps start1;
    public Gps start2;

    public C2ZhiJiaoSrcData() {
        this.stepId = stepId();
        this.lineWidth = 15.0d;
        this.time = System.currentTimeMillis();
    }

    private void wrap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
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
        return Step.K2_ZhiJiaoZhuanWan.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
        wrap(this.gps1, this.gps5);
        wrap(this.gps2, this.gps4);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2ZhiJiaoSrcData copy() {
        C2ZhiJiaoSrcData c2ZhiJiaoSrcData = new C2ZhiJiaoSrcData();
        c2ZhiJiaoSrcData.gps1 = new Gps(this.gps1);
        c2ZhiJiaoSrcData.gps2 = new Gps(this.gps2);
        c2ZhiJiaoSrcData.gps3 = new Gps(this.gps3);
        c2ZhiJiaoSrcData.gps4 = new Gps(this.gps4);
        c2ZhiJiaoSrcData.gps5 = new Gps(this.gps5);
        c2ZhiJiaoSrcData.gps6 = new Gps(this.gps6);
        c2ZhiJiaoSrcData.name = this.name;
        c2ZhiJiaoSrcData.time = this.time;
        c2ZhiJiaoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2ZhiJiaoSrcData.start1 = new Gps(gps);
            c2ZhiJiaoSrcData.start2 = new Gps(this.start2);
        }
        return c2ZhiJiaoSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public o createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        o oVar = new o();
        oVar.f3655a = createKey();
        oVar.i = new Line(posA, posA2);
        oVar.k = new Line(posA2, posA3);
        oVar.l = new Line(posA3, posA4);
        oVar.j = new Line(posA4, posA5);
        oVar.m = new Line(posA5, posA6);
        oVar.n = new Line(posA6, posA);
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA3, posA5, posA6);
        oVar.s = new c(posA, posA2, posN, posA6);
        oVar.t = new c(posA3, posA4, posA5, posN);
        oVar.q = posA2.vectorTo(posA3).cross(posA3.vectorTo(posA4)) < 0.0d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        arrayList.add(posA5);
        arrayList.add(posA6);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA7 = aVar.a(gps);
            Pos posA8 = aVar.a(this.start2);
            if (posA7.distanceTo(posA8) > 50.0d) {
                arrayList.add(posA7);
                arrayList.add(posA8);
                oVar.o = new Line(posA7, posA8);
            }
        }
        Line line = oVar.o;
        if (line != null) {
            if (oVar.q) {
                Line line2 = oVar.k;
                Line line3 = new Line(line2.end, line2.start);
                Line line4 = oVar.n;
                oVar.f3656d = oVar.a(line3, new Line(line4.end, line4.start), oVar.o, oVar.i);
            } else {
                oVar.f3656d = oVar.a(oVar.n, oVar.k, line, oVar.i);
            }
            arrayList.add(oVar.f3656d.f5820a);
            arrayList.add(oVar.f3656d.b);
            arrayList.add(oVar.f3656d.c);
            arrayList.add(oVar.f3656d.f5821d);
        }
        oVar.r = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        oVar.b = str;
        return oVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2ZhiJiaoSrcData c2ZhiJiaoSrcData) {
        this.gps1 = new Gps(c2ZhiJiaoSrcData.gps1);
        this.gps2 = new Gps(c2ZhiJiaoSrcData.gps2);
        this.gps3 = new Gps(c2ZhiJiaoSrcData.gps3);
        this.gps4 = new Gps(c2ZhiJiaoSrcData.gps4);
        this.gps5 = new Gps(c2ZhiJiaoSrcData.gps5);
        this.gps6 = new Gps(c2ZhiJiaoSrcData.gps6);
        this.name = c2ZhiJiaoSrcData.name;
        this.time = c2ZhiJiaoSrcData.time;
        this.lineWidth = c2ZhiJiaoSrcData.lineWidth;
        Gps gps = c2ZhiJiaoSrcData.start1;
        if (gps == null || c2ZhiJiaoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2ZhiJiaoSrcData.start2);
        }
    }
}
