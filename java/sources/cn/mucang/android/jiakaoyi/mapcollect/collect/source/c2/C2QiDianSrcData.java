package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.h;
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
public class C2QiDianSrcData extends K2SrcData implements Serializable, SourceData<C2QiDianSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps start1;
    public Gps start2;

    public C2QiDianSrcData() {
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
        return Step.K2_QiDianQuYu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2QiDianSrcData copy() {
        C2QiDianSrcData c2QiDianSrcData = new C2QiDianSrcData();
        c2QiDianSrcData.gps1 = new Gps(this.gps1);
        c2QiDianSrcData.gps2 = new Gps(this.gps2);
        c2QiDianSrcData.gps3 = new Gps(this.gps3);
        c2QiDianSrcData.gps4 = new Gps(this.gps4);
        c2QiDianSrcData.name = this.name;
        c2QiDianSrcData.time = this.time;
        c2QiDianSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2QiDianSrcData.start1 = new Gps(gps);
            c2QiDianSrcData.start2 = new Gps(this.start2);
        }
        return c2QiDianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public h createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        h hVar = new h();
        hVar.f3655a = createKey();
        hVar.i = new Line(posA, posA2);
        hVar.j = new Line(posA2, posA3);
        hVar.k = new Line(posA3, posA4);
        hVar.l = new Line(posA4, posA);
        hVar.o = c.d(posA, posA2, posA3, posA4);
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.start2);
            arrayList.add(posA5);
            arrayList.add(posA6);
            if (posA5.distanceTo(posA6) > 50.0d) {
                hVar.m = new Line(posA5, posA6);
            }
        }
        hVar.n = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        hVar.b = str;
        return hVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2QiDianSrcData c2QiDianSrcData) {
        this.gps1 = new Gps(c2QiDianSrcData.gps1);
        this.gps2 = new Gps(c2QiDianSrcData.gps2);
        this.gps3 = new Gps(c2QiDianSrcData.gps3);
        this.gps4 = new Gps(c2QiDianSrcData.gps4);
        this.name = c2QiDianSrcData.name;
        this.time = c2QiDianSrcData.time;
        this.lineWidth = c2QiDianSrcData.lineWidth;
        Gps gps = c2QiDianSrcData.start1;
        if (gps == null || c2QiDianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2QiDianSrcData.start2);
        }
    }
}
