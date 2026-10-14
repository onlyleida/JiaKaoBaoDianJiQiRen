package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.d;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
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
public class B2GaoSuSrcData extends K2SrcData implements Serializable, SourceData<B2GaoSuSrcData> {
    public boolean fromLeft = true;
    public Gps gps1;
    public Gps gps10;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public Gps gps9;
    public List<Gps> leftPoints;
    public Gps line0Gps1;
    public Gps line0Gps2;
    public Gps line100Gps1;
    public Gps line100Gps2;
    public Gps line150Gps1;
    public Gps line150Gps2;
    public Gps line200Gps1;
    public Gps line200Gps2;
    public Gps line50Gps1;
    public Gps line50Gps2;
    public List<Gps> middlePoints;
    public List<Gps> rightPoints;
    public Gps start1;
    public Gps start2;

    public B2GaoSuSrcData() {
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
        return this.leftPoints.get(0);
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
        return Step.B2_GaoSu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2GaoSuSrcData copy() {
        B2GaoSuSrcData b2GaoSuSrcData = new B2GaoSuSrcData();
        if (this.leftPoints != null) {
            b2GaoSuSrcData.leftPoints = new ArrayList();
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                b2GaoSuSrcData.leftPoints.add(new Gps(it.next()));
            }
        }
        if (this.middlePoints != null) {
            b2GaoSuSrcData.middlePoints = new ArrayList();
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                b2GaoSuSrcData.middlePoints.add(new Gps(it2.next()));
            }
        }
        if (this.rightPoints != null) {
            b2GaoSuSrcData.rightPoints = new ArrayList();
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                b2GaoSuSrcData.rightPoints.add(new Gps(it3.next()));
            }
        }
        b2GaoSuSrcData.gps1 = new Gps(this.gps1);
        b2GaoSuSrcData.gps2 = new Gps(this.gps2);
        Gps gps = this.gps3;
        if (gps != null) {
            b2GaoSuSrcData.gps3 = new Gps(gps);
        }
        Gps gps2 = this.gps4;
        if (gps2 != null) {
            b2GaoSuSrcData.gps4 = new Gps(gps2);
        }
        Gps gps3 = this.gps5;
        if (gps3 != null) {
            b2GaoSuSrcData.gps5 = new Gps(gps3);
        }
        if (this.gps5 != null) {
            this.gps5 = new Gps(b2GaoSuSrcData.gps5);
        }
        Gps gps4 = this.gps6;
        if (gps4 != null) {
            b2GaoSuSrcData.gps6 = new Gps(gps4);
        }
        Gps gps5 = this.gps7;
        if (gps5 != null) {
            b2GaoSuSrcData.gps7 = new Gps(gps5);
        }
        Gps gps6 = this.gps8;
        if (gps6 != null) {
            b2GaoSuSrcData.gps8 = new Gps(gps6);
        }
        b2GaoSuSrcData.gps9 = new Gps(this.gps9);
        b2GaoSuSrcData.gps10 = new Gps(this.gps10);
        Gps gps7 = this.line0Gps1;
        if (gps7 != null) {
            b2GaoSuSrcData.line0Gps1 = new Gps(gps7);
        }
        Gps gps8 = this.line0Gps2;
        if (gps8 != null) {
            b2GaoSuSrcData.line0Gps2 = new Gps(gps8);
        }
        Gps gps9 = this.line50Gps1;
        if (gps9 != null) {
            b2GaoSuSrcData.line50Gps1 = new Gps(gps9);
        }
        Gps gps10 = this.line50Gps2;
        if (gps10 != null) {
            b2GaoSuSrcData.line50Gps2 = new Gps(gps10);
        }
        Gps gps11 = this.line100Gps1;
        if (gps11 != null) {
            b2GaoSuSrcData.line100Gps1 = new Gps(gps11);
        }
        Gps gps12 = this.line100Gps2;
        if (gps12 != null) {
            b2GaoSuSrcData.line100Gps2 = new Gps(gps12);
        }
        Gps gps13 = this.line150Gps1;
        if (gps13 != null) {
            b2GaoSuSrcData.line150Gps1 = new Gps(gps13);
        }
        Gps gps14 = this.line150Gps2;
        if (gps14 != null) {
            b2GaoSuSrcData.line150Gps2 = new Gps(gps14);
        }
        Gps gps15 = this.line200Gps1;
        if (gps15 != null) {
            b2GaoSuSrcData.line200Gps1 = new Gps(gps15);
        }
        Gps gps16 = this.line200Gps2;
        if (gps16 != null) {
            b2GaoSuSrcData.line200Gps2 = new Gps(gps16);
        }
        b2GaoSuSrcData.lineWidth = this.lineWidth;
        b2GaoSuSrcData.fromLeft = this.fromLeft;
        b2GaoSuSrcData.name = this.name;
        b2GaoSuSrcData.time = this.time;
        Gps gps17 = this.start1;
        if (gps17 != null && this.start2 != null) {
            b2GaoSuSrcData.start1 = new Gps(gps17);
            b2GaoSuSrcData.start2 = new Gps(this.start2);
        }
        return b2GaoSuSrcData;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public d createCollision(a aVar, String str) {
        Pos pos;
        Pos pos2;
        Pos pos3;
        Pos pos4;
        Pos pos5;
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps9);
        Pos posA4 = aVar.a(this.gps10);
        d dVar = new d();
        dVar.f3655a = createKey();
        dVar.i = new ArrayList();
        dVar.k = new ArrayList();
        dVar.j = new ArrayList();
        if (g.d(this.leftPoints)) {
            Iterator<Gps> it = this.leftPoints.iterator();
            while (it.hasNext()) {
                dVar.i.add(aVar.a(it.next()));
            }
            dVar.i = cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.c(dVar.i, 35.0d);
        }
        if (g.d(this.middlePoints)) {
            Iterator<Gps> it2 = this.middlePoints.iterator();
            while (it2.hasNext()) {
                dVar.k.add(aVar.a(it2.next()));
            }
            dVar.k = cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.c(dVar.k, 35.0d);
        }
        if (g.d(this.rightPoints)) {
            Iterator<Gps> it3 = this.rightPoints.iterator();
            while (it3.hasNext()) {
                dVar.j.add(aVar.a(it3.next()));
            }
            dVar.j = cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.c(dVar.j, 35.0d);
        }
        t.h("TAG", "重采样时间 : " + ((System.nanoTime() - System.nanoTime()) / 1000000.0d));
        if (g.d(dVar.i) && g.d(dVar.j)) {
            ArrayList arrayList = new ArrayList();
            dVar.H = arrayList;
            arrayList.add(dVar.i.get(0));
            for (int i = 1; i < dVar.i.size(); i++) {
                Pos pos6 = dVar.i.get(i);
                List<Pos> list = dVar.H;
                if (pos6.distanceTo(list.get(list.size() - 1)) > 80.0d) {
                    dVar.H.add(dVar.i.get(i));
                }
            }
            ArrayList arrayList2 = new ArrayList(dVar.j);
            Collections.reverse(arrayList2);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                Pos pos7 = (Pos) arrayList2.get(i2);
                List<Pos> list2 = dVar.H;
                if (pos7.distanceTo(list2.get(list2.size() - 1)) > 80.0d) {
                    dVar.H.add((Pos) arrayList2.get(i2));
                }
            }
        }
        dVar.t = new Line(posA, posA2);
        dVar.u = new Line(posA3, posA4);
        dVar.F = new c(posA, posA2, posA4, posA3);
        Gps gps = this.line0Gps1;
        if (gps != null && this.line0Gps2 != null) {
            dVar.z = new Line(aVar.a(gps), aVar.a(this.line0Gps2));
        }
        Gps gps2 = this.line50Gps1;
        if (gps2 != null && this.line50Gps2 != null) {
            dVar.A = new Line(aVar.a(gps2), aVar.a(this.line50Gps2));
        }
        Gps gps3 = this.line100Gps1;
        if (gps3 != null && this.line100Gps2 != null) {
            dVar.B = new Line(aVar.a(gps3), aVar.a(this.line100Gps2));
        }
        Gps gps4 = this.line150Gps1;
        if (gps4 != null && this.line150Gps2 != null) {
            dVar.C = new Line(aVar.a(gps4), aVar.a(this.line150Gps2));
        }
        Gps gps5 = this.line200Gps1;
        if (gps5 != null && this.line200Gps2 != null) {
            dVar.D = new Line(aVar.a(gps5), aVar.a(this.line200Gps2));
        }
        dVar.v = new Line(dVar.i.get(0), dVar.j.get(0));
        List<Pos> list3 = dVar.j;
        Pos pos8 = list3.get(list3.size() - 1);
        List<Pos> list4 = dVar.i;
        dVar.w = new Line(pos8, list4.get(list4.size() - 1));
        dVar.b = str;
        ArrayList arrayList3 = new ArrayList();
        Gps gps6 = this.start1;
        if (gps6 != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps6);
            Pos posA6 = aVar.a(this.start2);
            if (posA5.distanceTo(posA6) > 50.0d) {
                arrayList3.add(posA5);
                arrayList3.add(posA6);
                dVar.x = new Line(posA5, posA6);
            }
        }
        Gps gps7 = this.gps3;
        if (gps7 != null) {
            dVar.r = aVar.a(gps7);
        }
        Gps gps8 = this.gps4;
        if (gps8 != null) {
            dVar.n = aVar.a(gps8);
        }
        Gps gps9 = this.gps5;
        if (gps9 != null) {
            dVar.o = aVar.a(gps9);
        }
        Gps gps10 = this.gps6;
        if (gps10 != null) {
            dVar.p = aVar.a(gps10);
        }
        Gps gps11 = this.gps7;
        if (gps11 != null) {
            dVar.q = aVar.a(gps11);
        }
        Gps gps12 = this.gps8;
        if (gps12 != null) {
            dVar.s = aVar.a(gps12);
        }
        Pos pos9 = dVar.n;
        if (pos9 != null && (pos3 = dVar.o) != null && (pos4 = dVar.p) != null && (pos5 = dVar.q) != null) {
            dVar.G = new c(pos9, pos3, pos4, pos5);
        }
        Pos pos10 = dVar.r;
        if (pos10 != null && (pos2 = dVar.n) != null) {
            dVar.I = new Line(pos10, pos2);
        }
        Pos pos11 = dVar.q;
        if (pos11 != null && (pos = dVar.s) != null) {
            dVar.J = new Line(pos11, pos);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList3);
        if (g.d(this.leftPoints) && g.d(this.rightPoints)) {
            cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(dVar.i);
            aVarB2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(dVar.j));
            aVarB.i(aVarB2);
        }
        Line line = dVar.x;
        if (line != null) {
            Pos pos12 = line.start;
            Pos pos13 = line.end;
            Line line2 = dVar.v;
            dVar.f3656d = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos12, pos13, line2.start, line2.end);
        }
        dVar.E = aVarB;
        return dVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2GaoSuSrcData b2GaoSuSrcData) {
        if (b2GaoSuSrcData.leftPoints != null) {
            this.leftPoints = new ArrayList();
            Iterator<Gps> it = b2GaoSuSrcData.leftPoints.iterator();
            while (it.hasNext()) {
                this.leftPoints.add(new Gps(it.next()));
            }
        } else {
            this.leftPoints = null;
        }
        if (b2GaoSuSrcData.middlePoints != null) {
            this.middlePoints = new ArrayList();
            Iterator<Gps> it2 = b2GaoSuSrcData.middlePoints.iterator();
            while (it2.hasNext()) {
                this.middlePoints.add(new Gps(it2.next()));
            }
        } else {
            this.middlePoints = null;
        }
        if (b2GaoSuSrcData.rightPoints != null) {
            this.rightPoints = new ArrayList();
            Iterator<Gps> it3 = b2GaoSuSrcData.rightPoints.iterator();
            while (it3.hasNext()) {
                this.rightPoints.add(new Gps(it3.next()));
            }
        } else {
            this.rightPoints = null;
        }
        this.gps1 = new Gps(b2GaoSuSrcData.gps1);
        this.gps2 = new Gps(b2GaoSuSrcData.gps2);
        Gps gps = b2GaoSuSrcData.gps3;
        if (gps != null) {
            this.gps3 = new Gps(gps);
        }
        Gps gps2 = b2GaoSuSrcData.gps4;
        if (gps2 != null) {
            this.gps4 = new Gps(gps2);
        }
        Gps gps3 = b2GaoSuSrcData.gps5;
        if (gps3 != null) {
            this.gps5 = new Gps(gps3);
        }
        Gps gps4 = b2GaoSuSrcData.gps5;
        if (gps4 != null) {
            this.gps5 = new Gps(gps4);
        }
        Gps gps5 = b2GaoSuSrcData.gps6;
        if (gps5 != null) {
            this.gps6 = new Gps(gps5);
        }
        Gps gps6 = b2GaoSuSrcData.gps7;
        if (gps6 != null) {
            this.gps7 = new Gps(gps6);
        }
        Gps gps7 = b2GaoSuSrcData.gps8;
        if (gps7 != null) {
            this.gps8 = new Gps(gps7);
        }
        this.gps9 = new Gps(b2GaoSuSrcData.gps9);
        this.gps10 = new Gps(b2GaoSuSrcData.gps10);
        Gps gps8 = b2GaoSuSrcData.line0Gps1;
        if (gps8 != null) {
            this.line0Gps1 = new Gps(gps8);
        }
        Gps gps9 = b2GaoSuSrcData.line0Gps2;
        if (gps9 != null) {
            this.line0Gps2 = new Gps(gps9);
        }
        Gps gps10 = b2GaoSuSrcData.line50Gps1;
        if (gps10 != null) {
            this.line50Gps1 = new Gps(gps10);
        }
        Gps gps11 = b2GaoSuSrcData.line50Gps2;
        if (gps11 != null) {
            this.line50Gps2 = new Gps(gps11);
        }
        Gps gps12 = b2GaoSuSrcData.line100Gps1;
        if (gps12 != null) {
            this.line100Gps1 = new Gps(gps12);
        }
        Gps gps13 = b2GaoSuSrcData.line100Gps2;
        if (gps13 != null) {
            this.line100Gps2 = new Gps(gps13);
        }
        Gps gps14 = b2GaoSuSrcData.line150Gps1;
        if (gps14 != null) {
            this.line150Gps1 = new Gps(gps14);
        }
        Gps gps15 = b2GaoSuSrcData.line150Gps2;
        if (gps15 != null) {
            this.line150Gps2 = new Gps(gps15);
        }
        Gps gps16 = b2GaoSuSrcData.line200Gps1;
        if (gps16 != null) {
            this.line200Gps1 = new Gps(gps16);
        }
        Gps gps17 = b2GaoSuSrcData.line200Gps2;
        if (gps17 != null) {
            this.line200Gps2 = new Gps(gps17);
        }
        this.lineWidth = b2GaoSuSrcData.lineWidth;
        this.time = b2GaoSuSrcData.time;
        this.name = b2GaoSuSrcData.name;
        this.fromLeft = b2GaoSuSrcData.fromLeft;
        Gps gps18 = b2GaoSuSrcData.start1;
        if (gps18 == null || b2GaoSuSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps18);
            this.start2 = new Gps(b2GaoSuSrcData.start2);
        }
    }
}
