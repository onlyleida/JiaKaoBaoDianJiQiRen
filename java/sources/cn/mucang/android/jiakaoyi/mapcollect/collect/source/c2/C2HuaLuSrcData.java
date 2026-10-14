package cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.f;
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
public class C2HuaLuSrcData extends K2SrcData implements Serializable, SourceData<C2HuaLuSrcData> {
    public boolean fromLeft;
    public List<Gps> leftPoints;
    public List<Gps> middlePoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public C2HuaLuSrcData() {
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
        return Step.K2_ShiHuaLuMian.type;
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
    public C2HuaLuSrcData copy() {
        C2HuaLuSrcData c2HuaLuSrcData = new C2HuaLuSrcData();
        if (this.leftPoints != null) {
            c2HuaLuSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                c2HuaLuSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.middlePoints != null) {
            c2HuaLuSrcData.middlePoints = new ArrayList();
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                c2HuaLuSrcData.middlePoints.add(new Gps(it2.next()));
            }
        }
        if (this.rightPoints != null) {
            c2HuaLuSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                c2HuaLuSrcData.rightPoints.add(new Gps(it3.next()));
            }
        }
        c2HuaLuSrcData.lineWidth = this.lineWidth;
        c2HuaLuSrcData.fromLeft = this.fromLeft;
        c2HuaLuSrcData.name = this.name;
        c2HuaLuSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            c2HuaLuSrcData.start1 = new Gps(gps);
            c2HuaLuSrcData.start2 = new Gps(this.start2);
        }
        return c2HuaLuSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public f createCollision(a aVar, String str) {
        f fVar = new f();
        fVar.f3655a = createKey();
        fVar.i = new ArrayList();
        fVar.j = new ArrayList();
        fVar.k = new ArrayList();
        Iterator<Gps> it = this.leftPoints.iterator();
        while (it.hasNext()) {
            fVar.i.add(aVar.a(it.next()));
        }
        if (g.d(this.middlePoints)) {
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                fVar.j.add(aVar.a(it2.next()));
            }
            fVar.j = d.c(fVar.j, 35.0d);
        }
        Iterator<Gps> it3 = this.rightPoints.iterator();
        while (it3.hasNext()) {
            fVar.k.add(aVar.a(it3.next()));
        }
        long jNanoTime = System.nanoTime();
        List<Pos> listC = d.c(fVar.i, 35.0d);
        fVar.i = listC;
        if (g.d(listC)) {
            Pos pos = fVar.i.get(0);
            List<Pos> list = fVar.i;
            fVar.s = new Line(pos, list.get(list.size() - 1));
        }
        if (g.d(fVar.j)) {
            List<Pos> listC2 = d.c(fVar.j, 35.0d);
            fVar.j = listC2;
            Pos pos2 = listC2.get(0);
            List<Pos> list2 = fVar.j;
            fVar.t = new Line(pos2, list2.get(list2.size() - 1));
        }
        List<Pos> listC3 = d.c(fVar.k, 35.0d);
        fVar.k = listC3;
        if (g.d(listC3)) {
            Pos pos3 = fVar.k.get(0);
            List<Pos> list3 = fVar.k;
            fVar.u = new Line(pos3, list3.get(list3.size() - 1));
        }
        if (g.d(fVar.i) && g.d(fVar.k)) {
            ArrayList arrayList = new ArrayList();
            fVar.q = arrayList;
            arrayList.add(fVar.i.get(0));
            for (int i = 1; i < fVar.i.size(); i++) {
                Pos pos4 = fVar.i.get(i);
                List<Pos> list4 = fVar.q;
                if (pos4.distanceTo(list4.get(list4.size() - 1)) > 80.0d) {
                    fVar.q.add(fVar.i.get(i));
                }
            }
            ArrayList arrayList2 = new ArrayList(fVar.k);
            Collections.reverse(arrayList2);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                Pos pos5 = (Pos) arrayList2.get(i2);
                List<Pos> list5 = fVar.q;
                if (pos5.distanceTo(list5.get(list5.size() - 1)) > 80.0d) {
                    fVar.q.add((Pos) arrayList2.get(i2));
                }
            }
        }
        t.h("TAG", "曲线重采样时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(fVar.i);
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(fVar.k));
        fVar.r = aVarB;
        fVar.l = new Line(fVar.i.get(0), fVar.k.get(0));
        List<Pos> list6 = fVar.i;
        Pos pos6 = list6.get(list6.size() - 1);
        List<Pos> list7 = fVar.k;
        fVar.m = new Line(pos6, list7.get(list7.size() - 1));
        fVar.b = str;
        ArrayList arrayList3 = new ArrayList();
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA = aVar.a(gps);
            Pos posA2 = aVar.a(this.start2);
            if (posA.distanceTo(posA2) > 50.0d) {
                arrayList3.add(posA);
                arrayList3.add(posA2);
                fVar.n = new Line(posA, posA2);
            }
        }
        if (fVar.n != null) {
            c cVarA = fVar.a(new Line(fVar.i.get(2), fVar.i.get(0)), new Line(fVar.k.get(0), fVar.k.get(2)), fVar.n, fVar.l);
            fVar.f3656d = cVarA;
            arrayList3.add(cVarA.f5820a);
            arrayList3.add(fVar.f3656d.b);
            arrayList3.add(fVar.f3656d.c);
            arrayList3.add(fVar.f3656d.f5821d);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(fVar.i);
        aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(fVar.k));
        if (!arrayList3.isEmpty()) {
            aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3));
        }
        fVar.r = aVarB2;
        return fVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(C2HuaLuSrcData c2HuaLuSrcData) {
        if (c2HuaLuSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = c2HuaLuSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (c2HuaLuSrcData.middlePoints != null) {
            this.middlePoints = new ArrayList();
            Iterator<Gps> it2 = c2HuaLuSrcData.middlePoints.iterator();
            while (it2.hasNext()) {
                this.middlePoints.add(new Gps(it2.next()));
            }
        } else {
            this.middlePoints = null;
        }
        if (c2HuaLuSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it3 = c2HuaLuSrcData.rightPoints.iterator();
            while (it3.hasNext()) {
                this.rightPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.lineWidth = c2HuaLuSrcData.lineWidth;
        this.time = c2HuaLuSrcData.time;
        this.name = c2HuaLuSrcData.name;
        this.fromLeft = c2HuaLuSrcData.fromLeft;
        Gps gps = c2HuaLuSrcData.start1;
        if (gps == null || c2HuaLuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(c2HuaLuSrcData.start2);
        }
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }
}
