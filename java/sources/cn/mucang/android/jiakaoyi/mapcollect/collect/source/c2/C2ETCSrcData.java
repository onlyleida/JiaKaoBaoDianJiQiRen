package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.e;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class C2ETCSrcData extends K2SrcData implements Serializable, SourceData<C2ETCSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps start1;
    public Gps start2;

    public C2ETCSrcData() {
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
        return Step.K2_ETC.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2ETCSrcData copy() {
        C2ETCSrcData c2ETCSrcData = new C2ETCSrcData();
        c2ETCSrcData.gps1 = new Gps(this.gps1);
        c2ETCSrcData.gps2 = new Gps(this.gps2);
        c2ETCSrcData.gps3 = new Gps(this.gps3);
        c2ETCSrcData.gps4 = new Gps(this.gps4);
        c2ETCSrcData.gps5 = new Gps(this.gps5);
        c2ETCSrcData.gps6 = new Gps(this.gps6);
        c2ETCSrcData.name = this.name;
        c2ETCSrcData.time = this.time;
        c2ETCSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2ETCSrcData.start1 = new Gps(gps);
            c2ETCSrcData.start2 = new Gps(this.start2);
        }
        return c2ETCSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public e createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps5);
        Pos posA6 = aVar.a(this.gps6);
        e eVar = new e();
        eVar.f3655a = createKey();
        eVar.i = new Line(posA, posA2);
        eVar.j = new Line(posA5, posA6);
        eVar.l = new Line(posA, posA5);
        eVar.m = new Line(posA2, posA6);
        eVar.k = new Line(posA3, posA4);
        eVar.q = c.d(posA, posA2, posA5, posA6);
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        arrayList.add(posA5);
        arrayList.add(posA6);
        eVar.p = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        eVar.b = str;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA7 = aVar.a(gps);
            Pos posA8 = aVar.a(this.start2);
            if (posA7.distanceTo(posA8) > 50.0d) {
                eVar.n = new Line(posA7, posA8);
            }
        }
        return eVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2ETCSrcData c2ETCSrcData) {
        this.gps1 = new Gps(c2ETCSrcData.gps1);
        this.gps2 = new Gps(c2ETCSrcData.gps2);
        this.gps3 = new Gps(c2ETCSrcData.gps3);
        this.gps4 = new Gps(c2ETCSrcData.gps4);
        this.gps5 = new Gps(c2ETCSrcData.gps5);
        this.gps6 = new Gps(c2ETCSrcData.gps6);
        this.name = c2ETCSrcData.name;
        this.time = c2ETCSrcData.time;
        this.lineWidth = c2ETCSrcData.lineWidth;
        Gps gps = c2ETCSrcData.start1;
        if (gps == null || c2ETCSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2ETCSrcData.start2);
        }
    }
}
