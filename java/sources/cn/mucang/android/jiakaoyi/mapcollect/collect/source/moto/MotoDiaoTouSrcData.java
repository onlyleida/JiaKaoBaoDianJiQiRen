package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.e;
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
public class MotoDiaoTouSrcData extends K2SrcData implements Serializable, SourceData<MotoDiaoTouSrcData> {
    public Gps gps1;
    public Gps gps10;
    public Gps gps11;
    public Gps gps12;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public Gps gps9;
    public Gps start1;
    public Gps start2;

    public MotoDiaoTouSrcData() {
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
        return Step.Moto_DiaoTou.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoDiaoTouSrcData copy() {
        MotoDiaoTouSrcData motoDiaoTouSrcData = new MotoDiaoTouSrcData();
        motoDiaoTouSrcData.gps1 = new Gps(this.gps1);
        motoDiaoTouSrcData.gps2 = new Gps(this.gps2);
        motoDiaoTouSrcData.gps3 = new Gps(this.gps3);
        motoDiaoTouSrcData.gps4 = new Gps(this.gps4);
        Gps gps = this.gps5;
        if (gps != null && this.gps6 != null && this.gps7 != null && this.gps8 != null) {
            motoDiaoTouSrcData.gps5 = new Gps(gps);
            motoDiaoTouSrcData.gps6 = new Gps(this.gps6);
            motoDiaoTouSrcData.gps7 = new Gps(this.gps7);
            motoDiaoTouSrcData.gps8 = new Gps(this.gps8);
        }
        Gps gps2 = this.gps9;
        if (gps2 != null && this.gps10 != null && this.gps11 != null && this.gps12 != null) {
            motoDiaoTouSrcData.gps9 = new Gps(gps2);
            motoDiaoTouSrcData.gps10 = new Gps(this.gps10);
            motoDiaoTouSrcData.gps11 = new Gps(this.gps11);
            motoDiaoTouSrcData.gps12 = new Gps(this.gps12);
        }
        motoDiaoTouSrcData.name = this.name;
        motoDiaoTouSrcData.time = this.time;
        Gps gps3 = this.start1;
        if (gps3 != null && this.start2 != null) {
            motoDiaoTouSrcData.start1 = new Gps(gps3);
            motoDiaoTouSrcData.start2 = new Gps(this.start2);
        }
        return motoDiaoTouSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public e createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        e eVar = new e();
        eVar.f3655a = createKey();
        eVar.i = new Line(posA, posA2);
        eVar.j = new Line(posA3, posA4);
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        Gps gps = this.gps5;
        if (gps != null && this.gps6 != null && this.gps7 != null && this.gps8 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.gps6);
            Pos posA7 = aVar.a(this.gps7);
            Pos posA8 = aVar.a(this.gps8);
            eVar.o = c.d(posA5, posA6, posA7, posA8);
            eVar.m = c.d(posA, posA2, posA5, posA6);
            eVar.n = c.d(posA3, posA4, posA5, posA6);
            arrayList.add(posA5);
            arrayList.add(posA6);
            arrayList.add(posA7);
            arrayList.add(posA8);
        }
        Gps gps2 = this.gps9;
        if (gps2 != null && this.gps10 != null && this.gps11 != null && this.gps12 != null) {
            Pos posA9 = aVar.a(gps2);
            Pos posA10 = aVar.a(this.gps10);
            Pos posA11 = aVar.a(this.gps11);
            Pos posA12 = aVar.a(this.gps12);
            eVar.p = c.d(posA9, posA10, posA11, posA12);
            arrayList.add(posA9);
            arrayList.add(posA10);
            arrayList.add(posA11);
            arrayList.add(posA12);
        }
        Gps gps3 = this.start1;
        if (gps3 != null && this.start2 != null) {
            Pos posA13 = aVar.a(gps3);
            Pos posA14 = aVar.a(this.start2);
            if (posA13.distanceTo(posA14) > 50.0d) {
                eVar.k = new Line(posA13, posA14);
            }
        }
        eVar.q = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        eVar.b = str;
        return eVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoDiaoTouSrcData motoDiaoTouSrcData) {
        this.gps1 = new Gps(motoDiaoTouSrcData.gps1);
        this.gps2 = new Gps(motoDiaoTouSrcData.gps2);
        this.gps3 = new Gps(motoDiaoTouSrcData.gps3);
        this.gps4 = new Gps(motoDiaoTouSrcData.gps4);
        Gps gps = motoDiaoTouSrcData.gps5;
        if (gps != null && motoDiaoTouSrcData.gps6 != null && motoDiaoTouSrcData.gps7 != null && motoDiaoTouSrcData.gps8 != null) {
            this.gps5 = new Gps(gps);
            this.gps6 = new Gps(motoDiaoTouSrcData.gps6);
            this.gps7 = new Gps(motoDiaoTouSrcData.gps7);
            this.gps8 = new Gps(motoDiaoTouSrcData.gps8);
        }
        Gps gps2 = motoDiaoTouSrcData.gps9;
        if (gps2 != null && motoDiaoTouSrcData.gps10 != null && motoDiaoTouSrcData.gps11 != null && motoDiaoTouSrcData.gps12 != null) {
            this.gps9 = new Gps(gps2);
            this.gps10 = new Gps(motoDiaoTouSrcData.gps10);
            this.gps11 = new Gps(motoDiaoTouSrcData.gps11);
            this.gps12 = new Gps(motoDiaoTouSrcData.gps12);
        }
        this.name = motoDiaoTouSrcData.name;
        this.time = motoDiaoTouSrcData.time;
        Gps gps3 = motoDiaoTouSrcData.start1;
        if (gps3 == null || motoDiaoTouSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps3);
            this.start2 = new Gps(motoDiaoTouSrcData.start2);
        }
    }
}
