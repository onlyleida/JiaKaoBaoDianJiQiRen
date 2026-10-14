package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.a;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class C2BianXianSrcData extends K2SrcData implements Serializable, SourceData<C2BianXianSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public List<Gps> points;
    public Gps start1;
    public Gps start2;

    public C2BianXianSrcData() {
        this.lineWidth = 15.0d;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public String createKey() {
        String str = giveOnePointToCalZero().latitude + "," + giveOnePointToCalZero().longitude;
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
        return Step.K2_BianXianShiBie.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2BianXianSrcData copy() {
        C2BianXianSrcData c2BianXianSrcData = new C2BianXianSrcData();
        c2BianXianSrcData.gps1 = new Gps(this.gps1);
        c2BianXianSrcData.gps2 = new Gps(this.gps2);
        c2BianXianSrcData.gps3 = new Gps(this.gps3);
        c2BianXianSrcData.gps4 = new Gps(this.gps4);
        if (this.points != null) {
            c2BianXianSrcData.points = new ArrayList();
            Iterator<Gps> it = this.points.iterator();
            while (it.hasNext()) {
                c2BianXianSrcData.points.add(new Gps(it.next()));
            }
        }
        c2BianXianSrcData.lineWidth = this.lineWidth;
        c2BianXianSrcData.name = this.name;
        c2BianXianSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2BianXianSrcData.start1 = new Gps(gps);
            c2BianXianSrcData.start2 = new Gps(this.start2);
        }
        return c2BianXianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public a createCollision(cn.mucang.android.jiakaoyi.signal.i.a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        a aVar2 = new a();
        aVar2.f3655a = createKey();
        aVar2.i = new ArrayList();
        Iterator<Gps> it = this.points.iterator();
        while (it.hasNext()) {
            aVar2.i.add(aVar.a(it.next()));
        }
        long jNanoTime = System.nanoTime();
        List<Pos> listC = d.c(aVar2.i, 50.0d);
        aVar2.i = listC;
        if (g.d(listC)) {
            Pos pos = aVar2.i.get(0);
            List<Pos> list = aVar2.i;
            aVar2.o = new Line(pos, list.get(list.size() - 1));
        }
        t.h("TAG", "曲线重采样时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(aVar2.i));
        aVar2.n = aVarB;
        aVar2.p = c.d(posA, posA2, posA3, posA4);
        aVar2.j = new Line(posA, posA2);
        aVar2.k = new Line(posA3, posA4);
        aVar2.b = str;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.start2);
            if (posA5.distanceTo(posA6) > 50.0d) {
                aVar2.l = new Line(posA5, posA6);
            }
        }
        return aVar2;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2BianXianSrcData c2BianXianSrcData) {
        c2BianXianSrcData.gps1 = new Gps(this.gps1);
        c2BianXianSrcData.gps2 = new Gps(this.gps2);
        c2BianXianSrcData.gps3 = new Gps(this.gps3);
        c2BianXianSrcData.gps4 = new Gps(this.gps4);
        if (c2BianXianSrcData.points != null) {
            this.points = new ArrayList();
            Iterator<Gps> it = c2BianXianSrcData.points.iterator();
            while (it.hasNext()) {
                this.points.add(new Gps(it.next()));
            }
        } else {
            this.points = null;
        }
        this.lineWidth = c2BianXianSrcData.lineWidth;
        this.time = c2BianXianSrcData.time;
        this.name = c2BianXianSrcData.name;
        Gps gps = c2BianXianSrcData.start1;
        if (gps == null || c2BianXianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2BianXianSrcData.start2);
        }
    }
}
