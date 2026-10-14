package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.b;
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
public class B2ChunHuaLuSrcData extends K2SrcData implements Serializable, SourceData<B2ChunHuaLuSrcData> {
    public boolean fromLeft;
    public List<Gps> leftPoints;
    public List<Gps> middlePoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public B2ChunHuaLuSrcData() {
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
        return Step.B2_ChunHuaLu.type;
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
    public B2ChunHuaLuSrcData copy() {
        B2ChunHuaLuSrcData b2ChunHuaLuSrcData = new B2ChunHuaLuSrcData();
        if (this.leftPoints != null) {
            b2ChunHuaLuSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                b2ChunHuaLuSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.middlePoints != null) {
            b2ChunHuaLuSrcData.middlePoints = new ArrayList();
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                b2ChunHuaLuSrcData.middlePoints.add(new Gps(it2.next()));
            }
        }
        if (this.rightPoints != null) {
            b2ChunHuaLuSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                b2ChunHuaLuSrcData.rightPoints.add(new Gps(it3.next()));
            }
        }
        b2ChunHuaLuSrcData.lineWidth = this.lineWidth;
        b2ChunHuaLuSrcData.fromLeft = this.fromLeft;
        b2ChunHuaLuSrcData.name = this.name;
        b2ChunHuaLuSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2ChunHuaLuSrcData.start1 = new Gps(gps);
            b2ChunHuaLuSrcData.start2 = new Gps(this.start2);
        }
        return b2ChunHuaLuSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public b createCollision(a aVar, String str) {
        b bVar = new b();
        bVar.f3655a = createKey();
        bVar.i = new ArrayList();
        bVar.j = new ArrayList();
        bVar.k = new ArrayList();
        Iterator<Gps> it = this.leftPoints.iterator();
        while (it.hasNext()) {
            bVar.i.add(aVar.a(it.next()));
        }
        if (g.d(this.middlePoints)) {
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                bVar.j.add(aVar.a(it2.next()));
            }
            bVar.j = d.c(bVar.j, 35.0d);
        }
        Iterator<Gps> it3 = this.rightPoints.iterator();
        while (it3.hasNext()) {
            bVar.k.add(aVar.a(it3.next()));
        }
        long jNanoTime = System.nanoTime();
        bVar.i = d.c(bVar.i, 35.0d);
        if (g.d(bVar.j)) {
            bVar.j = d.c(bVar.j, 35.0d);
        }
        bVar.k = d.c(bVar.k, 35.0d);
        t.h("TAG", "纯湿滑路面采样时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        if (g.d(bVar.i) && g.d(bVar.k)) {
            ArrayList arrayList = new ArrayList();
            bVar.q = arrayList;
            arrayList.add(bVar.i.get(0));
            for (int i = 1; i < bVar.i.size(); i++) {
                Pos pos = bVar.i.get(i);
                List<Pos> list = bVar.q;
                if (pos.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                    bVar.q.add(bVar.i.get(i));
                }
            }
            ArrayList arrayList2 = new ArrayList(bVar.k);
            Collections.reverse(arrayList2);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                Pos pos2 = (Pos) arrayList2.get(i2);
                List<Pos> list2 = bVar.q;
                if (pos2.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                    bVar.q.add((Pos) arrayList2.get(i2));
                }
            }
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(bVar.i);
        aVarB.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(bVar.k));
        bVar.r = aVarB;
        bVar.l = new Line(bVar.i.get(0), bVar.k.get(0));
        List<Pos> list3 = bVar.k;
        Pos pos3 = list3.get(list3.size() - 1);
        List<Pos> list4 = bVar.i;
        Line line = new Line(pos3, list4.get(list4.size() - 1));
        bVar.m = line;
        bVar.b = str;
        Line line2 = bVar.l;
        bVar.p = c.d(line2.start, line2.end, line.start, line.end);
        ArrayList arrayList3 = new ArrayList();
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA = aVar.a(gps);
            Pos posA2 = aVar.a(this.start2);
            if (posA.distanceTo(posA2) > 50.0d) {
                arrayList3.add(posA);
                arrayList3.add(posA2);
                bVar.n = new Line(posA, posA2);
            }
        }
        if (bVar.n != null) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVarA = bVar.a(new Line(bVar.i.get(2), bVar.i.get(0)), new Line(bVar.k.get(0), bVar.k.get(2)), bVar.n, bVar.l);
            bVar.f3656d = cVarA;
            arrayList3.add(cVarA.f5820a);
            arrayList3.add(bVar.f3656d.b);
            arrayList3.add(bVar.f3656d.c);
            arrayList3.add(bVar.f3656d.f5821d);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(bVar.i);
        aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(bVar.k));
        if (!arrayList3.isEmpty()) {
            aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3));
        }
        bVar.r = aVarB2;
        return bVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2ChunHuaLuSrcData b2ChunHuaLuSrcData) {
        if (b2ChunHuaLuSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = b2ChunHuaLuSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (b2ChunHuaLuSrcData.middlePoints != null) {
            this.middlePoints = new ArrayList();
            Iterator<Gps> it2 = b2ChunHuaLuSrcData.middlePoints.iterator();
            while (it2.hasNext()) {
                this.middlePoints.add(new Gps(it2.next()));
            }
        } else {
            this.middlePoints = null;
        }
        if (b2ChunHuaLuSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it3 = b2ChunHuaLuSrcData.rightPoints.iterator();
            while (it3.hasNext()) {
                this.rightPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.lineWidth = b2ChunHuaLuSrcData.lineWidth;
        this.time = b2ChunHuaLuSrcData.time;
        this.name = b2ChunHuaLuSrcData.name;
        this.fromLeft = b2ChunHuaLuSrcData.fromLeft;
        Gps gps = b2ChunHuaLuSrcData.start1;
        if (gps == null || b2ChunHuaLuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2ChunHuaLuSrcData.start2);
        }
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }
}
