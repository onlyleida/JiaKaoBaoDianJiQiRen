package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.e;
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
public class B2HuaLuSrcData extends K2SrcData implements Serializable, SourceData<B2HuaLuSrcData> {
    public boolean fromLeft;
    public List<Gps> leftPoints;
    public List<Gps> middlePoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public B2HuaLuSrcData() {
        this.lineWidth = 15.0d;
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
        return Step.B2_ShiHuaLuMian.type;
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
    public B2HuaLuSrcData copy() {
        B2HuaLuSrcData b2HuaLuSrcData = new B2HuaLuSrcData();
        if (this.leftPoints != null) {
            b2HuaLuSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                b2HuaLuSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.middlePoints != null) {
            b2HuaLuSrcData.middlePoints = new ArrayList();
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                b2HuaLuSrcData.middlePoints.add(new Gps(it2.next()));
            }
        }
        if (this.rightPoints != null) {
            b2HuaLuSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                b2HuaLuSrcData.rightPoints.add(new Gps(it3.next()));
            }
        }
        b2HuaLuSrcData.lineWidth = this.lineWidth;
        b2HuaLuSrcData.fromLeft = this.fromLeft;
        b2HuaLuSrcData.name = this.name;
        b2HuaLuSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2HuaLuSrcData.start1 = new Gps(gps);
            b2HuaLuSrcData.start2 = new Gps(this.start2);
        }
        return b2HuaLuSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public e createCollision(a aVar, String str) {
        e eVar = new e();
        eVar.f3655a = createKey();
        eVar.i = new ArrayList();
        eVar.j = new ArrayList();
        eVar.k = new ArrayList();
        Iterator<Gps> it = this.leftPoints.iterator();
        while (it.hasNext()) {
            eVar.i.add(aVar.a(it.next()));
        }
        if (g.d(this.middlePoints)) {
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                eVar.j.add(aVar.a(it2.next()));
            }
            eVar.j = d.c(eVar.j, 35.0d);
        }
        Iterator<Gps> it3 = this.rightPoints.iterator();
        while (it3.hasNext()) {
            eVar.k.add(aVar.a(it3.next()));
        }
        long jNanoTime = System.nanoTime();
        eVar.i = d.c(eVar.i, 35.0d);
        if (g.d(eVar.j)) {
            eVar.j = d.c(eVar.j, 35.0d);
        }
        eVar.k = d.c(eVar.k, 35.0d);
        t.h("TAG", "曲线重采样时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        if (g.d(eVar.i) && g.d(eVar.k)) {
            ArrayList arrayList = new ArrayList();
            eVar.q = arrayList;
            arrayList.add(eVar.i.get(0));
            for (int i = 1; i < eVar.i.size(); i++) {
                Pos pos = eVar.i.get(i);
                List<Pos> list = eVar.q;
                if (pos.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                    eVar.q.add(eVar.i.get(i));
                }
            }
            ArrayList arrayList2 = new ArrayList(eVar.k);
            Collections.reverse(arrayList2);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                Pos pos2 = (Pos) arrayList2.get(i2);
                List<Pos> list2 = eVar.q;
                if (pos2.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                    eVar.q.add((Pos) arrayList2.get(i2));
                }
            }
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(eVar.i);
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(eVar.k));
        eVar.r = aVarB;
        eVar.l = new Line(eVar.i.get(0), eVar.k.get(0));
        List<Pos> list3 = eVar.k;
        Pos pos3 = list3.get(list3.size() - 1);
        List<Pos> list4 = eVar.i;
        Line line = new Line(pos3, list4.get(list4.size() - 1));
        eVar.m = line;
        eVar.b = str;
        Line line2 = eVar.l;
        eVar.p = c.d(line2.start, line2.end, line.start, line.end);
        ArrayList arrayList3 = new ArrayList();
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA = aVar.a(gps);
            Pos posA2 = aVar.a(this.start2);
            if (posA.distanceTo(posA2) > 50.0d) {
                arrayList3.add(posA);
                arrayList3.add(posA2);
                eVar.n = new Line(posA, posA2);
            }
        }
        if (eVar.n != null) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = eVar.a(new Line(eVar.i.get(2), eVar.i.get(0)), new Line(eVar.k.get(0), eVar.k.get(2)), eVar.n, eVar.l);
            eVar.f3656d = cVarA;
            arrayList3.add(cVarA.f5820a);
            arrayList3.add(eVar.f3656d.b);
            arrayList3.add(eVar.f3656d.c);
            arrayList3.add(eVar.f3656d.f5821d);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(eVar.i);
        aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(eVar.k));
        if (!arrayList3.isEmpty()) {
            aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3));
        }
        eVar.r = aVarB2;
        return eVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2HuaLuSrcData b2HuaLuSrcData) {
        if (b2HuaLuSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = b2HuaLuSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (b2HuaLuSrcData.middlePoints != null) {
            this.middlePoints = new ArrayList();
            Iterator<Gps> it2 = b2HuaLuSrcData.middlePoints.iterator();
            while (it2.hasNext()) {
                this.middlePoints.add(new Gps(it2.next()));
            }
        } else {
            this.middlePoints = null;
        }
        if (b2HuaLuSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it3 = b2HuaLuSrcData.rightPoints.iterator();
            while (it3.hasNext()) {
                this.rightPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.lineWidth = b2HuaLuSrcData.lineWidth;
        this.time = b2HuaLuSrcData.time;
        this.name = b2HuaLuSrcData.name;
        this.fromLeft = b2HuaLuSrcData.fromLeft;
        Gps gps = b2HuaLuSrcData.start1;
        if (gps == null || b2HuaLuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2HuaLuSrcData.start2);
        }
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }
}
