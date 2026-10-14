package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.n;
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
public class MotoZuoZhuanSrcData extends K2SrcData implements Serializable, SourceData<MotoZuoZhuanSrcData> {
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
    public Gps start1;
    public Gps start2;

    public MotoZuoZhuanSrcData() {
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
        return Step.Moto_LuKouZuoZhuan.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoZuoZhuanSrcData copy() {
        MotoZuoZhuanSrcData motoZuoZhuanSrcData = new MotoZuoZhuanSrcData();
        motoZuoZhuanSrcData.gps1 = new Gps(this.gps1);
        motoZuoZhuanSrcData.gps2 = new Gps(this.gps2);
        motoZuoZhuanSrcData.gps3 = new Gps(this.gps3);
        motoZuoZhuanSrcData.gps4 = new Gps(this.gps4);
        Gps gps = this.gps5;
        if (gps != null && this.gps6 != null && this.gps7 != null && this.gps8 != null) {
            motoZuoZhuanSrcData.gps5 = new Gps(gps);
            motoZuoZhuanSrcData.gps6 = new Gps(this.gps6);
            motoZuoZhuanSrcData.gps7 = new Gps(this.gps7);
            motoZuoZhuanSrcData.gps8 = new Gps(this.gps8);
        }
        Gps gps2 = this.gps9;
        if (gps2 != null && this.gps10 != null) {
            motoZuoZhuanSrcData.gps9 = new Gps(gps2);
            motoZuoZhuanSrcData.gps10 = new Gps(this.gps10);
        }
        motoZuoZhuanSrcData.name = this.name;
        motoZuoZhuanSrcData.time = this.time;
        Gps gps3 = this.start1;
        if (gps3 != null && this.start2 != null) {
            motoZuoZhuanSrcData.start1 = new Gps(gps3);
            motoZuoZhuanSrcData.start2 = new Gps(this.start2);
        }
        return motoZuoZhuanSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public n createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        n nVar = new n();
        nVar.f3655a = createKey();
        nVar.i = new Line(posA, posA2);
        nVar.j = new Line(posA3, posA4);
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
            nVar.n = c.d(posA5, posA6, posA7, posA8);
            arrayList.add(posA5);
            arrayList.add(posA6);
            arrayList.add(posA7);
            arrayList.add(posA8);
        }
        Gps gps2 = this.gps9;
        if (gps2 != null && this.gps10 != null) {
            Pos posA9 = aVar.a(gps2);
            Pos posA10 = aVar.a(this.gps10);
            nVar.o = new Line(posA9, posA10);
            arrayList.add(posA9);
            arrayList.add(posA10);
        }
        Gps gps3 = this.start1;
        if (gps3 != null && this.start2 != null) {
            Pos posA11 = aVar.a(gps3);
            Pos posA12 = aVar.a(this.start2);
            if (posA11.distanceTo(posA12) > 50.0d) {
                nVar.k = new Line(posA11, posA12);
            }
        }
        nVar.p = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        nVar.b = str;
        return nVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoZuoZhuanSrcData motoZuoZhuanSrcData) {
        this.gps1 = new Gps(motoZuoZhuanSrcData.gps1);
        this.gps2 = new Gps(motoZuoZhuanSrcData.gps2);
        this.gps3 = new Gps(motoZuoZhuanSrcData.gps3);
        this.gps4 = new Gps(motoZuoZhuanSrcData.gps4);
        Gps gps = motoZuoZhuanSrcData.gps5;
        if (gps != null && motoZuoZhuanSrcData.gps6 != null && motoZuoZhuanSrcData.gps7 != null && motoZuoZhuanSrcData.gps8 != null) {
            this.gps5 = new Gps(gps);
            this.gps6 = new Gps(motoZuoZhuanSrcData.gps6);
            this.gps7 = new Gps(motoZuoZhuanSrcData.gps7);
            this.gps8 = new Gps(motoZuoZhuanSrcData.gps8);
        }
        Gps gps2 = motoZuoZhuanSrcData.gps9;
        if (gps2 != null && motoZuoZhuanSrcData.gps10 != null) {
            this.gps9 = new Gps(gps2);
            this.gps10 = new Gps(motoZuoZhuanSrcData.gps10);
        }
        this.name = motoZuoZhuanSrcData.name;
        this.time = motoZuoZhuanSrcData.time;
        Gps gps3 = motoZuoZhuanSrcData.start1;
        if (gps3 == null || motoZuoZhuanSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps3);
            this.start2 = new Gps(motoZuoZhuanSrcData.start2);
        }
    }
}
