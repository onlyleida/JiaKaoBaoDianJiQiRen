package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.l;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class B2SuiDaoSrcData extends K2SrcData implements Serializable, SourceData<B2SuiDaoSrcData> {
    public List<Gps> centerPoints;
    public double distance;
    public boolean fromLeft;
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public List<Gps> leftPoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public B2SuiDaoSrcData() {
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
        return this.start1;
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
        return Step.B2_SuiDao.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2SuiDaoSrcData copy() {
        B2SuiDaoSrcData b2SuiDaoSrcData = new B2SuiDaoSrcData();
        b2SuiDaoSrcData.gps1 = new Gps(this.gps1);
        b2SuiDaoSrcData.gps2 = new Gps(this.gps2);
        b2SuiDaoSrcData.gps3 = new Gps(this.gps3);
        b2SuiDaoSrcData.gps4 = new Gps(this.gps4);
        if (this.leftPoints != null) {
            b2SuiDaoSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                b2SuiDaoSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.centerPoints != null) {
            b2SuiDaoSrcData.centerPoints = new ArrayList();
            Iterator<Gps> it2 = this.centerPoints.iterator();
            while (it2.hasNext()) {
                b2SuiDaoSrcData.centerPoints.add(new Gps(it2.next()));
            }
        }
        if (this.rightPoints != null) {
            b2SuiDaoSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                b2SuiDaoSrcData.rightPoints.add(new Gps(it3.next()));
            }
        }
        b2SuiDaoSrcData.distance = this.distance;
        b2SuiDaoSrcData.lineWidth = this.lineWidth;
        b2SuiDaoSrcData.fromLeft = this.fromLeft;
        b2SuiDaoSrcData.name = this.name;
        b2SuiDaoSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2SuiDaoSrcData.start1 = new Gps(gps);
            b2SuiDaoSrcData.start2 = new Gps(this.start2);
        }
        return b2SuiDaoSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public l createCollision(a aVar, String str) {
        l lVar = new l();
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        lVar.f3655a = createKey();
        lVar.i = new ArrayList();
        lVar.j = new ArrayList();
        lVar.k = new ArrayList();
        if (!g.b(this.leftPoints)) {
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                lVar.i.add(aVar.a(it.next()));
            }
            lVar.i = d.c(lVar.i, 35.0d);
        }
        if (!g.b(this.centerPoints)) {
            Iterator<Gps> it2 = this.centerPoints.iterator();
            while (it2.hasNext()) {
                lVar.j.add(aVar.a(it2.next()));
            }
            lVar.j = d.c(lVar.j, 35.0d);
        }
        if (!g.b(this.rightPoints)) {
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                lVar.k.add(aVar.a(it3.next()));
            }
            lVar.k = d.c(lVar.k, 35.0d);
        }
        t.h("TAG", "重采样时间 : " + ((System.nanoTime() - System.nanoTime()) / 1000000.0d));
        if (g.d(lVar.i) && g.d(lVar.k)) {
            ArrayList arrayList = new ArrayList();
            lVar.r = arrayList;
            arrayList.add(lVar.i.get(0));
            for (int i = 1; i < lVar.i.size(); i++) {
                Pos pos = lVar.i.get(i);
                List<Pos> list = lVar.r;
                if (pos.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                    lVar.r.add(lVar.i.get(i));
                }
            }
            ArrayList arrayList2 = new ArrayList(lVar.k);
            Collections.reverse(arrayList2);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                Pos pos2 = (Pos) arrayList2.get(i2);
                List<Pos> list2 = lVar.r;
                if (pos2.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                    lVar.r.add((Pos) arrayList2.get(i2));
                }
            }
            lVar.s = c.d(posA, posA2, lVar.k.get(0), lVar.i.get(0));
            List<Pos> list3 = lVar.k;
            Pos pos3 = list3.get(list3.size() - 1);
            List<Pos> list4 = lVar.i;
            lVar.t = c.d(posA3, posA4, pos3, list4.get(list4.size() - 1));
        }
        lVar.p = c.d(posA, posA2, posA3, posA4);
        lVar.l = new Line(posA, posA2);
        lVar.m = new Line(posA4, posA3);
        lVar.b = str;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(posA);
        arrayList3.add(posA2);
        arrayList3.add(posA3);
        arrayList3.add(posA4);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.start2);
            if (posA5.distanceTo(posA6) > 50.0d) {
                arrayList3.add(posA5);
                arrayList3.add(posA6);
                lVar.n = new Line(posA5, posA6);
            }
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3);
        if (!g.b(this.leftPoints) && !g.b(this.rightPoints)) {
            cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(lVar.i);
            aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(lVar.k));
            aVarB.i(aVarB2);
        }
        ArrayList arrayList4 = new ArrayList();
        Line line = lVar.n;
        if (line != null) {
            Pos pos4 = line.start;
            Pos pos5 = line.end;
            Line line2 = lVar.l;
            cn.mucang.android.jiakaoyi.signal.pos.c cVarD = c.d(pos4, pos5, line2.start, line2.end);
            lVar.f3656d = cVarD;
            arrayList4.add(cVarD.f5820a);
            arrayList4.add(lVar.f3656d.b);
            arrayList4.add(lVar.f3656d.c);
            arrayList4.add(lVar.f3656d.f5821d);
        }
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList4));
        lVar.q = aVarB;
        return lVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2SuiDaoSrcData b2SuiDaoSrcData) {
        this.gps1 = new Gps(b2SuiDaoSrcData.gps1);
        this.gps2 = new Gps(b2SuiDaoSrcData.gps2);
        this.gps3 = new Gps(b2SuiDaoSrcData.gps3);
        this.gps4 = new Gps(b2SuiDaoSrcData.gps4);
        if (b2SuiDaoSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = b2SuiDaoSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (b2SuiDaoSrcData.centerPoints != null) {
            this.centerPoints = new ArrayList();
            Iterator<Gps> it2 = b2SuiDaoSrcData.centerPoints.iterator();
            while (it2.hasNext()) {
                this.centerPoints.add(new Gps(it2.next()));
            }
        } else {
            this.centerPoints = null;
        }
        if (b2SuiDaoSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it3 = b2SuiDaoSrcData.rightPoints.iterator();
            while (it3.hasNext()) {
                this.rightPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.lineWidth = b2SuiDaoSrcData.lineWidth;
        this.distance = b2SuiDaoSrcData.distance;
        this.time = b2SuiDaoSrcData.time;
        this.name = b2SuiDaoSrcData.name;
        this.fromLeft = b2SuiDaoSrcData.fromLeft;
        Gps gps = b2SuiDaoSrcData.start1;
        if (gps == null || b2SuiDaoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2SuiDaoSrcData.start2);
        }
    }
}
