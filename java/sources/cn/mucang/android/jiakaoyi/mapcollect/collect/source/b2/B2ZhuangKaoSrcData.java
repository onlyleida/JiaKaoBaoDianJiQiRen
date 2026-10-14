package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.q;
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
public class B2ZhuangKaoSrcData extends K2SrcData implements Serializable, SourceData<B2ZhuangKaoSrcData> {
    public Gps gps1;
    public Gps gps10;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public Gps gps9;
    public Gps gpsB3;
    public Gps gpsB4;
    public Gps gpsB5;
    public Gps gpsB6;
    public Gps gpsB7;
    public Gps gpsB8;
    public Gps start1;
    public Gps start2;
    public float poleRadius = 1.75f;
    public boolean cheKuIsLeft = true;

    public B2ZhuangKaoSrcData() {
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
        return Step.B2_ZhuangKao.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2ZhuangKaoSrcData copy() {
        B2ZhuangKaoSrcData b2ZhuangKaoSrcData = new B2ZhuangKaoSrcData();
        b2ZhuangKaoSrcData.gps1 = new Gps(this.gps1);
        b2ZhuangKaoSrcData.gps2 = new Gps(this.gps2);
        b2ZhuangKaoSrcData.gps3 = new Gps(this.gps3);
        b2ZhuangKaoSrcData.gps4 = new Gps(this.gps4);
        b2ZhuangKaoSrcData.gps5 = new Gps(this.gps5);
        b2ZhuangKaoSrcData.gps6 = new Gps(this.gps6);
        b2ZhuangKaoSrcData.gps7 = new Gps(this.gps7);
        b2ZhuangKaoSrcData.gps8 = new Gps(this.gps8);
        b2ZhuangKaoSrcData.gps9 = new Gps(this.gps9);
        b2ZhuangKaoSrcData.gps10 = new Gps(this.gps10);
        b2ZhuangKaoSrcData.gpsB3 = new Gps(this.gpsB3);
        b2ZhuangKaoSrcData.gpsB4 = new Gps(this.gpsB4);
        b2ZhuangKaoSrcData.gpsB5 = new Gps(this.gpsB5);
        b2ZhuangKaoSrcData.gpsB6 = new Gps(this.gpsB6);
        b2ZhuangKaoSrcData.gpsB7 = new Gps(this.gpsB7);
        b2ZhuangKaoSrcData.gpsB8 = new Gps(this.gpsB8);
        b2ZhuangKaoSrcData.poleRadius = this.poleRadius;
        b2ZhuangKaoSrcData.name = this.name;
        b2ZhuangKaoSrcData.time = this.time;
        b2ZhuangKaoSrcData.cheKuIsLeft = this.cheKuIsLeft;
        b2ZhuangKaoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2ZhuangKaoSrcData.start1 = new Gps(gps);
            b2ZhuangKaoSrcData.start2 = new Gps(this.start2);
        }
        return b2ZhuangKaoSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public q createCollision(a aVar, String str) {
        q qVar;
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
        Pos posA11 = aVar.a(this.gpsB3);
        Pos posA12 = aVar.a(this.gpsB4);
        Pos posA13 = aVar.a(this.gpsB5);
        Pos posA14 = aVar.a(this.gpsB6);
        Pos posA15 = aVar.a(this.gpsB7);
        Pos posA16 = aVar.a(this.gpsB8);
        q qVar2 = new q();
        qVar2.f3655a = createKey();
        qVar2.i = new Line(posA, posA2);
        qVar2.j = new Line(posA9, posA10);
        qVar2.J = this.poleRadius;
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA6, posA2, posA9);
        Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA3, posA2, posA9);
        Pos posN3 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posA7, posA2, posA9);
        qVar2.q = new Line(posA2, posN2);
        qVar2.r = new Line(posN2, posA4);
        qVar2.o = new Line(posA4, posA5);
        qVar2.n = new Line(posA5, posA6);
        qVar2.p = new Line(posA5, posA8);
        qVar2.s = new Line(posN3, posA8);
        qVar2.t = new Line(posN3, posA9);
        qVar2.u = new Line(posA10, posA);
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA4, posA5, this.lineWidth);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA3, posA6, this.lineWidth);
        new Line(posS, posS2);
        qVar2.k = new Line(posA3, posA6);
        qVar2.l = new Line(posN2, posN);
        new Line(posA6, posA7);
        qVar2.m = new Line(posN, posN3);
        qVar2.v = posA11;
        qVar2.w = posA12;
        qVar2.x = posA13;
        qVar2.y = posA14;
        qVar2.z = posA15;
        qVar2.A = posA16;
        qVar2.E = new c(posA, posA2, posA9, posA10);
        qVar2.F = new c(posA3, posA4, posA5, posA6);
        qVar2.G = new c(posS, posS2, posA7, posA8);
        qVar2.H = new c(posA3, posA4, posA8, posA7);
        qVar2.D = posA.vectorTo(posA4).cross(posA.vectorTo(posA10)) > 0.0d;
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
        arrayList.add(posA13);
        arrayList.add(posA14);
        arrayList.add(posA15);
        arrayList.add(posA16);
        Gps gps = this.start1;
        if (gps == null || this.start2 == null) {
            qVar = qVar2;
        } else {
            qVar = qVar2;
            Pos posA17 = aVar.a(gps);
            Pos posA18 = aVar.a(this.start2);
            if (posA17.distanceTo(posA18) > 50.0d) {
                qVar.B = new Line(posA17, posA18);
            }
        }
        Line line = qVar.B;
        if (line != null) {
            if (qVar.D) {
                qVar.f3656d = qVar.a(qVar.u, qVar.q, line, qVar.i);
            } else {
                qVar.f3656d = qVar.a(qVar.q, qVar.u, line, qVar.i);
            }
            arrayList.add(qVar.f3656d.f5820a);
            arrayList.add(qVar.f3656d.b);
            arrayList.add(qVar.f3656d.c);
            arrayList.add(qVar.f3656d.f5821d);
        }
        qVar.I = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        qVar.b = str;
        return qVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2ZhuangKaoSrcData b2ZhuangKaoSrcData) {
        this.gps1 = new Gps(b2ZhuangKaoSrcData.gps1);
        this.gps2 = new Gps(b2ZhuangKaoSrcData.gps2);
        this.gps3 = new Gps(b2ZhuangKaoSrcData.gps3);
        this.gps4 = new Gps(b2ZhuangKaoSrcData.gps4);
        this.gps5 = new Gps(b2ZhuangKaoSrcData.gps5);
        this.gps6 = new Gps(b2ZhuangKaoSrcData.gps6);
        this.gps7 = new Gps(b2ZhuangKaoSrcData.gps7);
        this.gps8 = new Gps(b2ZhuangKaoSrcData.gps8);
        this.gps9 = new Gps(b2ZhuangKaoSrcData.gps9);
        this.gps10 = new Gps(b2ZhuangKaoSrcData.gps10);
        this.gpsB3 = new Gps(b2ZhuangKaoSrcData.gpsB3);
        this.gpsB4 = new Gps(b2ZhuangKaoSrcData.gpsB4);
        this.gpsB5 = new Gps(b2ZhuangKaoSrcData.gpsB5);
        this.gpsB6 = new Gps(b2ZhuangKaoSrcData.gpsB6);
        this.gpsB7 = new Gps(b2ZhuangKaoSrcData.gpsB7);
        this.gpsB8 = new Gps(b2ZhuangKaoSrcData.gpsB8);
        this.poleRadius = b2ZhuangKaoSrcData.poleRadius;
        this.name = b2ZhuangKaoSrcData.name;
        this.time = b2ZhuangKaoSrcData.time;
        this.cheKuIsLeft = b2ZhuangKaoSrcData.cheKuIsLeft;
        this.lineWidth = b2ZhuangKaoSrcData.lineWidth;
        Gps gps = b2ZhuangKaoSrcData.start1;
        if (gps == null || b2ZhuangKaoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2ZhuangKaoSrcData.start2);
        }
    }
}
