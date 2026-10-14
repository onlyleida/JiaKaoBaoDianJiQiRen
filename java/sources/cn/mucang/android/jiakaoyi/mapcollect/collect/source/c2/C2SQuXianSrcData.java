package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.j;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.c;
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
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class C2SQuXianSrcData extends K2SrcData implements Serializable, SourceData<C2SQuXianSrcData> {
    public boolean fromLeft;
    public List<Gps> leftPoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public C2SQuXianSrcData() {
        this.lineWidth = 15.0d;
        this.fromLeft = true;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    private void swap(List<Gps> list) {
        int size = list.size();
        for (int i = 0; i < size / 2; i++) {
            swap(list.get(i), list.get((size - 1) - i));
        }
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
        return this.leftPoints.get(3);
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
        return Step.K2_SQuXian.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
        List<Gps> list = this.leftPoints;
        List<Gps> list2 = this.rightPoints;
        this.leftPoints = list2;
        this.rightPoints = list;
        swap(list2);
        swap(this.rightPoints);
        this.fromLeft = !this.fromLeft;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public C2SQuXianSrcData copy() {
        C2SQuXianSrcData c2SQuXianSrcData = new C2SQuXianSrcData();
        if (this.leftPoints != null) {
            c2SQuXianSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                c2SQuXianSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.rightPoints != null) {
            c2SQuXianSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it2 = this.rightPoints.iterator();
            while (it2.hasNext()) {
                c2SQuXianSrcData.rightPoints.add(new Gps(it2.next()));
            }
        }
        c2SQuXianSrcData.lineWidth = this.lineWidth;
        c2SQuXianSrcData.fromLeft = this.fromLeft;
        c2SQuXianSrcData.name = this.name;
        c2SQuXianSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2SQuXianSrcData.start1 = new Gps(gps);
            c2SQuXianSrcData.start2 = new Gps(this.start2);
        }
        return c2SQuXianSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public j createCollision(a aVar, String str) {
        j jVar = new j();
        jVar.f3655a = createKey();
        jVar.i = new ArrayList();
        jVar.j = new ArrayList();
        Iterator<Gps> it = this.leftPoints.iterator();
        while (it.hasNext()) {
            jVar.i.add(aVar.a(it.next()));
        }
        Iterator<Gps> it2 = this.rightPoints.iterator();
        while (it2.hasNext()) {
            jVar.j.add(aVar.a(it2.next()));
        }
        long jNanoTime = System.nanoTime();
        jVar.i = d.c(jVar.i, 35.0d);
        jVar.j = d.c(jVar.j, 35.0d);
        ArrayList arrayList = new ArrayList();
        jVar.v = arrayList;
        arrayList.add(jVar.i.get(0));
        for (int i = 1; i < jVar.i.size(); i++) {
            Pos pos = jVar.i.get(i);
            List<Pos> list = jVar.v;
            if (pos.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                jVar.v.add(jVar.i.get(i));
            }
        }
        ArrayList arrayList2 = new ArrayList(jVar.j);
        Collections.reverse(arrayList2);
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            Pos pos2 = (Pos) arrayList2.get(i2);
            List<Pos> list2 = jVar.v;
            if (pos2.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                jVar.v.add((Pos) arrayList2.get(i2));
            }
        }
        if (AppUtils.k()) {
            jVar.q = new Pos();
            jVar.r = new Pos();
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            if (!c.a(jVar.i, jVar.j, jVar.q, jVar.r, 20.0d, 5, atomicBoolean) && !c.a(jVar.i, jVar.j, jVar.q, jVar.r, 50.0d, 10, atomicBoolean)) {
                u.h("曲线数据有问题");
            }
            jVar.p = !atomicBoolean.get();
        }
        t.h("TAG", "曲线重采样时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA = aVar.a(gps);
            Pos posA2 = aVar.a(this.start2);
            if (posA.distanceTo(posA2) > 50.0d) {
                jVar.m = new Line(posA, posA2);
            }
        }
        int size = jVar.i.size();
        int size2 = jVar.j.size();
        if (g.d(jVar.i)) {
            jVar.t = new Line(jVar.i.get(0), jVar.i.get(size - 1));
        }
        if (g.d(jVar.j)) {
            jVar.u = new Line(jVar.j.get(0), jVar.j.get(size2 - 1));
        }
        jVar.k = new Line(jVar.i.get(0), jVar.j.get(0));
        jVar.l = new Line(jVar.i.get(size - 1), jVar.j.get(size2 - 1));
        ArrayList arrayList3 = new ArrayList();
        if (jVar.m != null) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = jVar.a(new Line(jVar.i.get(2), jVar.i.get(0)), new Line(jVar.j.get(0), jVar.j.get(2)), jVar.m, jVar.k);
            jVar.f3656d = cVarA;
            arrayList3.add(cVarA.f5820a);
            arrayList3.add(jVar.f3656d.b);
            arrayList3.add(jVar.f3656d.c);
            arrayList3.add(jVar.f3656d.f5821d);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(jVar.i);
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(jVar.j));
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3));
        jVar.o = aVarB;
        jVar.b = str;
        return jVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2SQuXianSrcData c2SQuXianSrcData) {
        if (c2SQuXianSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = c2SQuXianSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (c2SQuXianSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it2 = c2SQuXianSrcData.rightPoints.iterator();
            while (it2.hasNext()) {
                this.rightPoints.add(new Gps(it2.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.lineWidth = c2SQuXianSrcData.lineWidth;
        this.time = c2SQuXianSrcData.time;
        this.name = c2SQuXianSrcData.name;
        this.fromLeft = c2SQuXianSrcData.fromLeft;
        Gps gps = c2SQuXianSrcData.start1;
        if (gps == null || c2SQuXianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2SQuXianSrcData.start2);
        }
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }
}
