package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.j;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class B2ShanLuSrcData extends K2SrcData implements Serializable, SourceData<B2ShanLuSrcData> {
    public Gps firstHonk1;
    public Gps firstHonk2;
    public Gps firstHonkReport1;
    public Gps firstHonkReport2;
    public boolean fromLeft;
    public List<Gps> leftPoints;
    public List<Gps> middlePoints;
    public List<Gps> rightPoints;
    public Gps secondHonk1;
    public Gps secondHonk2;
    public Gps secondHonkReport1;
    public Gps secondHonkReport2;
    public Gps start1;
    public Gps start2;

    public B2ShanLuSrcData() {
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
        String str = this.leftPoints.get(0).latitude + "," + this.leftPoints.get(0).longitude;
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
        return Step.B2_ShanLu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2ShanLuSrcData copy() {
        B2ShanLuSrcData b2ShanLuSrcData = new B2ShanLuSrcData();
        if (this.leftPoints != null) {
            b2ShanLuSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                b2ShanLuSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.middlePoints != null) {
            b2ShanLuSrcData.middlePoints = new ArrayList();
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                b2ShanLuSrcData.middlePoints.add(new Gps(it2.next()));
            }
        }
        if (this.rightPoints != null) {
            b2ShanLuSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                b2ShanLuSrcData.rightPoints.add(new Gps(it3.next()));
            }
        }
        b2ShanLuSrcData.firstHonkReport1 = this.firstHonkReport1;
        b2ShanLuSrcData.firstHonkReport2 = this.firstHonkReport2;
        b2ShanLuSrcData.secondHonkReport1 = this.secondHonkReport1;
        b2ShanLuSrcData.secondHonkReport2 = this.secondHonkReport2;
        b2ShanLuSrcData.firstHonk1 = this.firstHonk1;
        b2ShanLuSrcData.firstHonk2 = this.firstHonk2;
        b2ShanLuSrcData.secondHonk1 = this.secondHonk1;
        b2ShanLuSrcData.secondHonk2 = this.secondHonk2;
        b2ShanLuSrcData.lineWidth = this.lineWidth;
        b2ShanLuSrcData.fromLeft = this.fromLeft;
        b2ShanLuSrcData.name = this.name;
        b2ShanLuSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2ShanLuSrcData.start1 = new Gps(gps);
            b2ShanLuSrcData.start2 = new Gps(this.start2);
        }
        return b2ShanLuSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public j createCollision(a aVar, String str) {
        j jVar = new j();
        jVar.f3655a = createKey();
        jVar.i = new ArrayList();
        jVar.k = new ArrayList();
        jVar.j = new ArrayList();
        if (!g.b(this.leftPoints)) {
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                jVar.i.add(aVar.a(it.next()));
            }
            jVar.i = d.c(jVar.i, 35.0d);
        }
        if (!g.b(this.middlePoints)) {
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                jVar.k.add(aVar.a(it2.next()));
            }
            jVar.k = d.c(jVar.k, 35.0d);
        }
        if (!g.b(this.rightPoints)) {
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                jVar.j.add(aVar.a(it3.next()));
            }
            jVar.j = d.c(jVar.j, 35.0d);
        }
        t.h("TAG", "重采样时间 : " + ((System.nanoTime() - System.nanoTime()) / 1000000.0d));
        if (g.d(jVar.i) && g.d(jVar.j)) {
            ArrayList arrayList = new ArrayList();
            jVar.w = arrayList;
            arrayList.add(jVar.i.get(0));
            for (int i = 1; i < jVar.i.size(); i++) {
                Pos pos = jVar.i.get(i);
                List<Pos> list = jVar.w;
                if (pos.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                    jVar.w.add(jVar.i.get(i));
                }
            }
            ArrayList arrayList2 = new ArrayList(jVar.j);
            Collections.reverse(arrayList2);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                Pos pos2 = (Pos) arrayList2.get(i2);
                List<Pos> list2 = jVar.w;
                if (pos2.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                    jVar.w.add((Pos) arrayList2.get(i2));
                }
            }
        }
        jVar.n = new Line(jVar.i.get(0), jVar.j.get(0));
        List<Pos> list3 = jVar.j;
        Pos pos3 = list3.get(list3.size() - 1);
        List<Pos> list4 = jVar.i;
        jVar.o = new Line(pos3, list4.get(list4.size() - 1));
        jVar.b = str;
        Gps gps = this.firstHonkReport1;
        if (gps != null && this.firstHonkReport2 != null) {
            jVar.q = new Line(aVar.a(gps), aVar.a(this.firstHonkReport2));
        }
        Gps gps2 = this.firstHonk1;
        if (gps2 != null && this.firstHonk2 != null) {
            jVar.r = new Line(aVar.a(gps2), aVar.a(this.firstHonk2));
        }
        Gps gps3 = this.secondHonkReport1;
        if (gps3 != null && this.secondHonkReport2 != null) {
            jVar.s = new Line(aVar.a(gps3), aVar.a(this.secondHonkReport2));
        }
        Gps gps4 = this.secondHonk1;
        if (gps4 != null && this.secondHonk2 != null) {
            jVar.t = new Line(aVar.a(gps4), aVar.a(this.secondHonk2));
        }
        ArrayList arrayList3 = new ArrayList();
        Gps gps5 = this.start1;
        if (gps5 != null && this.start2 != null) {
            Pos posA = aVar.a(gps5);
            Pos posA2 = aVar.a(this.start2);
            if (posA.distanceTo(posA2) > 50.0d) {
                arrayList3.add(posA);
                arrayList3.add(posA2);
                jVar.p = new Line(posA, posA2);
            }
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3);
        if (!g.b(this.leftPoints) && !g.b(this.rightPoints)) {
            cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(jVar.i);
            aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(jVar.j));
            aVarB.i(aVarB2);
        }
        ArrayList arrayList4 = new ArrayList();
        Line line = jVar.p;
        if (line != null) {
            Pos pos4 = line.start;
            Pos pos5 = line.end;
            Line line2 = jVar.n;
            c cVarD = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos4, pos5, line2.start, line2.end);
            jVar.f3656d = cVarD;
            arrayList4.add(cVarD.f5820a);
            arrayList4.add(jVar.f3656d.b);
            arrayList4.add(jVar.f3656d.c);
            arrayList4.add(jVar.f3656d.f5821d);
        }
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList4));
        jVar.v = aVarB;
        return jVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2ShanLuSrcData b2ShanLuSrcData) {
        if (b2ShanLuSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = b2ShanLuSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (b2ShanLuSrcData.middlePoints != null) {
            this.middlePoints = new ArrayList();
            Iterator<Gps> it2 = b2ShanLuSrcData.middlePoints.iterator();
            while (it2.hasNext()) {
                this.middlePoints.add(new Gps(it2.next()));
            }
        } else {
            this.middlePoints = null;
        }
        if (b2ShanLuSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it3 = b2ShanLuSrcData.rightPoints.iterator();
            while (it3.hasNext()) {
                this.rightPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.firstHonkReport1 = b2ShanLuSrcData.firstHonkReport1;
        this.firstHonkReport2 = b2ShanLuSrcData.firstHonkReport2;
        this.secondHonkReport1 = b2ShanLuSrcData.secondHonkReport1;
        this.secondHonkReport2 = b2ShanLuSrcData.secondHonkReport2;
        this.firstHonk1 = b2ShanLuSrcData.firstHonk1;
        this.firstHonk2 = b2ShanLuSrcData.firstHonk2;
        this.secondHonk1 = b2ShanLuSrcData.secondHonk1;
        this.secondHonk2 = b2ShanLuSrcData.secondHonk2;
        this.lineWidth = b2ShanLuSrcData.lineWidth;
        this.time = b2ShanLuSrcData.time;
        this.name = b2ShanLuSrcData.name;
        this.fromLeft = b2ShanLuSrcData.fromLeft;
        Gps gps = b2ShanLuSrcData.start1;
        if (gps == null || b2ShanLuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2ShanLuSrcData.start2);
        }
    }
}
