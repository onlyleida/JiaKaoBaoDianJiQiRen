package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.i;
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
public class B2SQuXianSrcData extends K2SrcData implements Serializable, SourceData<B2SQuXianSrcData> {
    public boolean fromLeft;
    public List<Gps> leftPoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public B2SQuXianSrcData() {
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
        return Step.B2_SQuXian.type;
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
    public B2SQuXianSrcData copy() {
        B2SQuXianSrcData b2SQuXianSrcData = new B2SQuXianSrcData();
        if (this.leftPoints != null) {
            b2SQuXianSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                b2SQuXianSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.rightPoints != null) {
            b2SQuXianSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it2 = this.rightPoints.iterator();
            while (it2.hasNext()) {
                b2SQuXianSrcData.rightPoints.add(new Gps(it2.next()));
            }
        }
        b2SQuXianSrcData.lineWidth = this.lineWidth;
        b2SQuXianSrcData.fromLeft = this.fromLeft;
        b2SQuXianSrcData.name = this.name;
        b2SQuXianSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2SQuXianSrcData.start1 = new Gps(gps);
            b2SQuXianSrcData.start2 = new Gps(this.start2);
        }
        return b2SQuXianSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public i createCollision(a aVar, String str) {
        i iVar = new i();
        iVar.f3655a = createKey();
        iVar.i = new ArrayList();
        iVar.j = new ArrayList();
        Iterator<Gps> it = this.leftPoints.iterator();
        while (it.hasNext()) {
            iVar.i.add(aVar.a(it.next()));
        }
        Iterator<Gps> it2 = this.rightPoints.iterator();
        while (it2.hasNext()) {
            iVar.j.add(aVar.a(it2.next()));
        }
        long jNanoTime = System.nanoTime();
        iVar.i = d.c(iVar.i, 35.0d);
        iVar.j = d.c(iVar.j, 35.0d);
        if (AppUtils.k()) {
            iVar.p = new Pos();
            iVar.q = new Pos();
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            if (!c.a(iVar.i, iVar.j, iVar.p, iVar.q, 20.0d, 5, atomicBoolean)) {
                c.a(iVar.i, iVar.j, iVar.p, iVar.q, 50.0d, 10, atomicBoolean);
            }
            atomicBoolean.get();
        }
        t.h("TAG", "曲线重采样时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        ArrayList arrayList = new ArrayList();
        iVar.r = arrayList;
        arrayList.add(iVar.i.get(0));
        for (int i = 1; i < iVar.i.size(); i++) {
            Pos pos = iVar.i.get(i);
            List<Pos> list = iVar.r;
            if (pos.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                iVar.r.add(iVar.i.get(i));
            }
        }
        ArrayList arrayList2 = new ArrayList(iVar.j);
        Collections.reverse(arrayList2);
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            Pos pos2 = (Pos) arrayList2.get(i2);
            List<Pos> list2 = iVar.r;
            if (pos2.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                iVar.r.add((Pos) arrayList2.get(i2));
            }
        }
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA = aVar.a(gps);
            Pos posA2 = aVar.a(this.start2);
            if (posA.distanceTo(posA2) > 50.0d) {
                iVar.m = new Line(posA, posA2);
            }
        }
        iVar.k = new Line(iVar.i.get(0), iVar.j.get(0));
        List<Pos> list3 = iVar.j;
        Pos pos3 = list3.get(list3.size() - 1);
        List<Pos> list4 = iVar.i;
        iVar.l = new Line(pos3, list4.get(list4.size() - 1));
        ArrayList arrayList3 = new ArrayList();
        if (iVar.m != null) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = iVar.a(new Line(iVar.i.get(2), iVar.i.get(0)), new Line(iVar.j.get(0), iVar.j.get(2)), iVar.m, iVar.k);
            iVar.f3656d = cVarA;
            arrayList3.add(cVarA.f5820a);
            arrayList3.add(iVar.f3656d.b);
            arrayList3.add(iVar.f3656d.c);
            arrayList3.add(iVar.f3656d.f5821d);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(iVar.i);
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(iVar.j));
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3));
        iVar.o = aVarB;
        iVar.b = str;
        return iVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2SQuXianSrcData b2SQuXianSrcData) {
        if (b2SQuXianSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = b2SQuXianSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (b2SQuXianSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it2 = b2SQuXianSrcData.rightPoints.iterator();
            while (it2.hasNext()) {
                this.rightPoints.add(new Gps(it2.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.lineWidth = b2SQuXianSrcData.lineWidth;
        this.time = b2SQuXianSrcData.time;
        this.name = b2SQuXianSrcData.name;
        this.fromLeft = b2SQuXianSrcData.fromLeft;
        Gps gps = b2SQuXianSrcData.start1;
        if (gps == null || b2SQuXianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2SQuXianSrcData.start2);
        }
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }
}
