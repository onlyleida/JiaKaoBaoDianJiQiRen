package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.g;
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
public class B2QiDianSrcData extends K2SrcData implements Serializable, SourceData<B2QiDianSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps start1;
    public Gps start2;

    public B2QiDianSrcData() {
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
        return Step.B2_QiDianQuYu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2QiDianSrcData copy() {
        B2QiDianSrcData b2QiDianSrcData = new B2QiDianSrcData();
        b2QiDianSrcData.gps1 = new Gps(this.gps1);
        b2QiDianSrcData.gps2 = new Gps(this.gps2);
        b2QiDianSrcData.gps3 = new Gps(this.gps3);
        b2QiDianSrcData.gps4 = new Gps(this.gps4);
        b2QiDianSrcData.name = this.name;
        b2QiDianSrcData.time = this.time;
        b2QiDianSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2QiDianSrcData.start1 = new Gps(gps);
            b2QiDianSrcData.start2 = new Gps(this.start2);
        }
        return b2QiDianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public g createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        g gVar = new g();
        gVar.f3655a = createKey();
        gVar.i = new Line(posA, posA2);
        gVar.j = new Line(posA2, posA3);
        gVar.k = new Line(posA3, posA4);
        gVar.l = new Line(posA4, posA);
        gVar.o = new c(posA, posA2, posA3, posA4);
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
                gVar.m = new Line(posA5, posA6);
            }
        }
        gVar.n = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        gVar.b = str;
        return gVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2QiDianSrcData b2QiDianSrcData) {
        this.gps1 = new Gps(b2QiDianSrcData.gps1);
        this.gps2 = new Gps(b2QiDianSrcData.gps2);
        this.gps3 = new Gps(b2QiDianSrcData.gps3);
        this.gps4 = new Gps(b2QiDianSrcData.gps4);
        this.name = b2QiDianSrcData.name;
        this.time = b2QiDianSrcData.time;
        this.lineWidth = b2QiDianSrcData.lineWidth;
        Gps gps = b2QiDianSrcData.start1;
        if (gps == null || b2QiDianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2QiDianSrcData.start2);
        }
    }
}
