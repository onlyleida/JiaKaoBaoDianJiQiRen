package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.o;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.b;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class B2ZhangAiSrcData extends K2SrcData implements Serializable, SourceData<B2ZhangAiSrcData> {
    public float discusRadius = 35.0f;
    public Gps gps1;
    public Gps gps10;
    public Gps gps2;
    public Gps gps9;
    public Gps gpsY3;
    public Gps gpsY4;
    public Gps gpsY5;
    public Gps gpsY6;
    public Gps gpsY7;
    public Gps gpsY8;
    public Gps start1;
    public Gps start2;

    public B2ZhangAiSrcData() {
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
        String str = this.gpsY3.latitude + "," + this.gpsY3.longitude;
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
        return Step.B2_ZhangAi.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2ZhangAiSrcData copy() {
        B2ZhangAiSrcData b2ZhangAiSrcData = new B2ZhangAiSrcData();
        b2ZhangAiSrcData.gps1 = new Gps(this.gps1);
        b2ZhangAiSrcData.gps2 = new Gps(this.gps2);
        b2ZhangAiSrcData.gpsY3 = new Gps(this.gpsY3);
        b2ZhangAiSrcData.gpsY4 = new Gps(this.gpsY4);
        b2ZhangAiSrcData.gpsY5 = new Gps(this.gpsY5);
        b2ZhangAiSrcData.gpsY6 = new Gps(this.gpsY6);
        b2ZhangAiSrcData.gpsY7 = new Gps(this.gpsY7);
        b2ZhangAiSrcData.gpsY8 = new Gps(this.gpsY8);
        b2ZhangAiSrcData.gps9 = new Gps(this.gps9);
        b2ZhangAiSrcData.gps10 = new Gps(this.gps10);
        b2ZhangAiSrcData.discusRadius = this.discusRadius;
        b2ZhangAiSrcData.name = this.name;
        b2ZhangAiSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2ZhangAiSrcData.start1 = new Gps(gps);
            b2ZhangAiSrcData.start2 = new Gps(this.start2);
        }
        return b2ZhangAiSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public o createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gpsY3);
        Pos posA4 = aVar.a(this.gpsY4);
        Pos posA5 = aVar.a(this.gpsY5);
        Pos posA6 = aVar.a(this.gpsY6);
        Pos posA7 = aVar.a(this.gpsY7);
        Pos posA8 = aVar.a(this.gpsY8);
        Pos posA9 = aVar.a(this.gps9);
        Pos posA10 = aVar.a(this.gps10);
        o oVar = new o();
        oVar.f3655a = createKey();
        oVar.i = new Line(posA, posA2);
        oVar.q = new Line(posA, posA10);
        oVar.r = new Line(posA2, posA9);
        oVar.k = posA3;
        oVar.l = posA4;
        oVar.m = posA5;
        oVar.n = posA6;
        oVar.o = posA7;
        oVar.p = posA8;
        oVar.j = new Line(posA9, posA10);
        float f2 = this.discusRadius;
        oVar.w = f2;
        new b(posA3, f2);
        new b(posA4, this.discusRadius);
        new b(posA5, this.discusRadius);
        new b(posA6, this.discusRadius);
        new b(posA7, this.discusRadius);
        new b(posA8, this.discusRadius);
        oVar.u = new c(posA, posA2, posA9, posA10);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA11 = aVar.a(gps);
            Pos posA12 = aVar.a(this.start2);
            if (posA11.distanceTo(posA12) > 50.0d) {
                oVar.s = new Line(posA11, posA12);
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
        if (oVar.s != null) {
            Line line = oVar.q;
            c cVarA = oVar.a(new Line(line.end, line.start), oVar.r, oVar.s, oVar.i);
            oVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(oVar.f3656d.b);
            arrayList.add(oVar.f3656d.c);
            arrayList.add(oVar.f3656d.f5821d);
        }
        oVar.v = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        oVar.b = str;
        return oVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2ZhangAiSrcData b2ZhangAiSrcData) {
        this.gps1 = new Gps(b2ZhangAiSrcData.gps1);
        this.gps2 = new Gps(b2ZhangAiSrcData.gps2);
        this.gpsY3 = new Gps(b2ZhangAiSrcData.gpsY3);
        this.gpsY4 = new Gps(b2ZhangAiSrcData.gpsY4);
        this.gpsY5 = new Gps(b2ZhangAiSrcData.gpsY5);
        this.gpsY6 = new Gps(b2ZhangAiSrcData.gpsY6);
        this.gpsY7 = new Gps(b2ZhangAiSrcData.gpsY7);
        this.gpsY8 = new Gps(b2ZhangAiSrcData.gpsY8);
        this.gps9 = new Gps(b2ZhangAiSrcData.gps9);
        this.gps10 = new Gps(b2ZhangAiSrcData.gps10);
        this.discusRadius = b2ZhangAiSrcData.discusRadius;
        this.name = b2ZhangAiSrcData.name;
        this.time = b2ZhangAiSrcData.time;
        Gps gps = b2ZhangAiSrcData.start1;
        if (gps == null || b2ZhangAiSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2ZhangAiSrcData.start2);
        }
    }
}
