package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
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
public class C2ZhaiLuSrcData extends K2SrcData implements Serializable, SourceData<C2ZhaiLuSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps start1;
    public Gps start2;

    public C2ZhaiLuSrcData() {
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
        return Step.K2_ZhaiLuDiaoTou.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2ZhaiLuSrcData copy() {
        C2ZhaiLuSrcData c2ZhaiLuSrcData = new C2ZhaiLuSrcData();
        c2ZhaiLuSrcData.gps1 = new Gps(this.gps1);
        c2ZhaiLuSrcData.gps2 = new Gps(this.gps2);
        c2ZhaiLuSrcData.gps3 = new Gps(this.gps3);
        c2ZhaiLuSrcData.gps4 = new Gps(this.gps4);
        c2ZhaiLuSrcData.name = this.name;
        c2ZhaiLuSrcData.time = this.time;
        c2ZhaiLuSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2ZhaiLuSrcData.start1 = new Gps(gps);
            c2ZhaiLuSrcData.start2 = new Gps(this.start2);
        }
        return c2ZhaiLuSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public n createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        n nVar = new n();
        nVar.f3655a = createKey();
        nVar.i = new Line(posA, posA2);
        nVar.j = new Line(posA2, posA3);
        nVar.k = new Line(posA3, posA4);
        nVar.l = new Line(posA4, posA);
        nVar.s = c.d(posA, posA2, posA3, posA4);
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
            nVar.q = new Line(posA5, posA6);
        }
        nVar.r = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        nVar.b = str;
        return nVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2ZhaiLuSrcData c2ZhaiLuSrcData) {
        this.gps1 = new Gps(c2ZhaiLuSrcData.gps1);
        this.gps2 = new Gps(c2ZhaiLuSrcData.gps2);
        this.gps3 = new Gps(c2ZhaiLuSrcData.gps3);
        this.gps4 = new Gps(c2ZhaiLuSrcData.gps4);
        this.name = c2ZhaiLuSrcData.name;
        this.time = c2ZhaiLuSrcData.time;
        this.lineWidth = c2ZhaiLuSrcData.lineWidth;
        Gps gps = c2ZhaiLuSrcData.start1;
        if (gps == null || c2ZhaiLuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2ZhaiLuSrcData.start2);
        }
    }
}
