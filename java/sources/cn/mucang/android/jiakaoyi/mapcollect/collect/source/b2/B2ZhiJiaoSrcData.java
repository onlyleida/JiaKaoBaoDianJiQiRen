package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.p;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class B2ZhiJiaoSrcData extends K2SrcData implements Serializable, SourceData<B2ZhiJiaoSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps start1;
    public Gps start2;

    public B2ZhiJiaoSrcData() {
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
        return Step.B2_ZhiJiaoZhuanWan.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
        wrap(this.gps1, this.gps5);
        wrap(this.gps2, this.gps4);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2ZhiJiaoSrcData copy() {
        B2ZhiJiaoSrcData b2ZhiJiaoSrcData = new B2ZhiJiaoSrcData();
        b2ZhiJiaoSrcData.gps1 = new Gps(this.gps1);
        b2ZhiJiaoSrcData.gps2 = new Gps(this.gps2);
        b2ZhiJiaoSrcData.gps3 = new Gps(this.gps3);
        b2ZhiJiaoSrcData.gps4 = new Gps(this.gps4);
        b2ZhiJiaoSrcData.gps5 = new Gps(this.gps5);
        b2ZhiJiaoSrcData.gps6 = new Gps(this.gps6);
        b2ZhiJiaoSrcData.name = this.name;
        b2ZhiJiaoSrcData.time = this.time;
        b2ZhiJiaoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2ZhiJiaoSrcData.start1 = new Gps(gps);
            b2ZhiJiaoSrcData.start2 = new Gps(this.start2);
        }
        return b2ZhiJiaoSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public p createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        p pVar = new p();
        pVar.f3655a = createKey();
        pVar.i = new Line(posA, posA2);
        pVar.k = new Line(posA2, posA3);
        pVar.l = new Line(posA3, posA4);
        pVar.j = new Line(posA4, posA5);
        pVar.m = new Line(posA5, posA6);
        pVar.n = new Line(posA6, posA);
        pVar.q = posA2.vectorTo(posA3).cross(posA3.vectorTo(posA4)) < 0.0d;
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
                pVar.o = new Line(posA7, posA8);
            }
        }
        Line line = pVar.o;
        if (line != null) {
            if (pVar.q) {
                Line line2 = pVar.k;
                Line line3 = new Line(line2.end, line2.start);
                Line line4 = pVar.n;
                pVar.f3656d = pVar.a(line3, new Line(line4.end, line4.start), pVar.o, pVar.i);
            } else {
                pVar.f3656d = pVar.a(pVar.n, pVar.k, line, pVar.i);
            }
            arrayList.add(pVar.f3656d.f5820a);
            arrayList.add(pVar.f3656d.b);
            arrayList.add(pVar.f3656d.c);
            arrayList.add(pVar.f3656d.f5821d);
        }
        pVar.r = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        pVar.b = str;
        return pVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2ZhiJiaoSrcData b2ZhiJiaoSrcData) {
        this.gps1 = new Gps(b2ZhiJiaoSrcData.gps1);
        this.gps2 = new Gps(b2ZhiJiaoSrcData.gps2);
        this.gps3 = new Gps(b2ZhiJiaoSrcData.gps3);
        this.gps4 = new Gps(b2ZhiJiaoSrcData.gps4);
        this.gps5 = new Gps(b2ZhiJiaoSrcData.gps5);
        this.gps6 = new Gps(b2ZhiJiaoSrcData.gps6);
        this.name = b2ZhiJiaoSrcData.name;
        this.time = b2ZhiJiaoSrcData.time;
        this.lineWidth = b2ZhiJiaoSrcData.lineWidth;
        Gps gps = b2ZhiJiaoSrcData.start1;
        if (gps == null || b2ZhiJiaoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2ZhiJiaoSrcData.start2);
        }
    }
}
