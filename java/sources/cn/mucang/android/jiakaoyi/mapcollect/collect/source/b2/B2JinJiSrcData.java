package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.f;
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
public class B2JinJiSrcData extends K2SrcData implements Serializable, SourceData<B2JinJiSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps start1;
    public Gps start2;

    public B2JinJiSrcData() {
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
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String createKey() {
        String str = this.gps1.latitude + "," + this.gps1.longitude;
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
        return Step.B2_JinJiQingKuang.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2JinJiSrcData copy() {
        B2JinJiSrcData b2JinJiSrcData = new B2JinJiSrcData();
        b2JinJiSrcData.gps1 = new Gps(this.gps1);
        b2JinJiSrcData.gps2 = new Gps(this.gps2);
        b2JinJiSrcData.gps3 = new Gps(this.gps3);
        b2JinJiSrcData.gps4 = new Gps(this.gps4);
        b2JinJiSrcData.gps5 = new Gps(this.gps5);
        b2JinJiSrcData.gps6 = new Gps(this.gps6);
        b2JinJiSrcData.name = this.name;
        b2JinJiSrcData.time = this.time;
        b2JinJiSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2JinJiSrcData.start1 = new Gps(gps);
            b2JinJiSrcData.start2 = new Gps(this.start2);
        }
        return b2JinJiSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public f createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        f fVar = new f();
        fVar.f3655a = createKey();
        fVar.i = new Line(posA, posA2);
        fVar.j = new Line(posA5, posA6);
        fVar.l = new Line(posA, posA5);
        fVar.m = new Line(posA2, posA6);
        fVar.k = new Line(posA3, posA4);
        fVar.q = new c(posA, posA2, posA6, posA5);
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        arrayList.add(posA5);
        arrayList.add(posA6);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            fVar.o = new Line(aVar.a(gps), aVar.a(this.start2));
        }
        if (fVar.o != null) {
            Line line = fVar.l;
            c cVarA = fVar.a(new Line(line.end, line.start), fVar.m, fVar.o, fVar.i);
            fVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(fVar.f3656d.b);
            arrayList.add(fVar.f3656d.c);
            arrayList.add(fVar.f3656d.f5821d);
        }
        fVar.p = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        fVar.b = str;
        return fVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2JinJiSrcData b2JinJiSrcData) {
        this.gps1 = new Gps(b2JinJiSrcData.gps1);
        this.gps2 = new Gps(b2JinJiSrcData.gps2);
        this.gps3 = new Gps(b2JinJiSrcData.gps3);
        this.gps4 = new Gps(b2JinJiSrcData.gps4);
        this.gps5 = new Gps(b2JinJiSrcData.gps5);
        this.gps6 = new Gps(b2JinJiSrcData.gps6);
        this.name = b2JinJiSrcData.name;
        this.time = b2JinJiSrcData.time;
        this.lineWidth = b2JinJiSrcData.lineWidth;
        Gps gps = b2JinJiSrcData.start1;
        if (gps == null || b2JinJiSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2JinJiSrcData.start2);
        }
    }
}
