package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.m;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class MotoZhuangKaoSrcData extends K2SrcData implements Serializable, SourceData<MotoZhuangKaoSrcData> {
    public Gps gps1;
    public Gps gps10;
    public Gps gps11;
    public Gps gps12;
    public Gps gps13;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gpsB5;
    public Gps gpsB6;
    public Gps gpsB7;
    public Gps gpsB8;
    public Gps gpsB9;
    public Gps start1;
    public Gps start2;
    public float poleRadius = 1.75f;
    public boolean cheKuIsLeft = true;

    public MotoZhuangKaoSrcData() {
        this.lineWidth = 15.0d;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
    }

    public static c createZhuangKaoRect(Pos pos, Pos pos2, Pos pos3, Pos pos4, Pos pos5, Pos pos6, Pos pos7, Pos pos8) {
        Pos posMeanWith = new Pos(pos).meanWith(pos2);
        Pos posMeanWith2 = new Pos(pos7).meanWith(pos8);
        Pos posN = a.n(posMeanWith, pos3, pos5);
        Pos posN2 = a.n(posMeanWith, pos4, pos6);
        Pos posN3 = a.n(posMeanWith2, pos4, pos6);
        Pos posN4 = a.n(posMeanWith2, pos3, pos5);
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(a.s(posN2, posN, 0.0d), a.s(posN, posN2, 0.0d), a.s(posN3, posN4, 0.0d), a.s(posN4, posN3, 0.0d));
    }

    private void swap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }

    private double trimWidth(double d2) {
        if (d2 < 10.0d) {
            return 10.0d;
        }
        if (d2 > 30.0d) {
            return 30.0d;
        }
        return d2;
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
        return Step.Moto_ZhuangKao.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoZhuangKaoSrcData copy() {
        MotoZhuangKaoSrcData motoZhuangKaoSrcData = new MotoZhuangKaoSrcData();
        motoZhuangKaoSrcData.gps1 = new Gps(this.gps1);
        motoZhuangKaoSrcData.gps2 = new Gps(this.gps2);
        motoZhuangKaoSrcData.gps3 = new Gps(this.gps3);
        motoZhuangKaoSrcData.gps4 = new Gps(this.gps4);
        motoZhuangKaoSrcData.gps10 = new Gps(this.gps10);
        motoZhuangKaoSrcData.gps11 = new Gps(this.gps11);
        motoZhuangKaoSrcData.gps12 = new Gps(this.gps12);
        motoZhuangKaoSrcData.gps13 = new Gps(this.gps13);
        motoZhuangKaoSrcData.gpsB5 = new Gps(this.gpsB5);
        motoZhuangKaoSrcData.gpsB6 = new Gps(this.gpsB6);
        motoZhuangKaoSrcData.gpsB7 = new Gps(this.gpsB7);
        motoZhuangKaoSrcData.gpsB8 = new Gps(this.gpsB8);
        motoZhuangKaoSrcData.gpsB9 = new Gps(this.gpsB9);
        motoZhuangKaoSrcData.poleRadius = this.poleRadius;
        motoZhuangKaoSrcData.name = this.name;
        motoZhuangKaoSrcData.time = this.time;
        motoZhuangKaoSrcData.cheKuIsLeft = this.cheKuIsLeft;
        motoZhuangKaoSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoZhuangKaoSrcData.start1 = new Gps(gps);
            motoZhuangKaoSrcData.start2 = new Gps(this.start2);
        }
        return motoZhuangKaoSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public m createCollision(cn.mucang.android.jiakaoyi.signal.i.a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        Pos posA5 = aVar.a(this.gps10);
        Pos posA6 = aVar.a(this.gps11);
        Pos posA7 = aVar.a(this.gps12);
        Pos posA8 = aVar.a(this.gps13);
        Pos posA9 = aVar.a(this.gpsB5);
        Pos posA10 = aVar.a(this.gpsB6);
        Pos posA11 = aVar.a(this.gpsB7);
        Pos posA12 = aVar.a(this.gpsB8);
        Pos posA13 = aVar.a(this.gpsB9);
        m mVar = new m();
        mVar.f3655a = createKey();
        mVar.i = new Line(posA, posA2);
        mVar.j = new Line(posA7, posA8);
        mVar.m = new Line(posA3, posA4);
        mVar.z = this.poleRadius;
        mVar.k = new Line(posA3, posA5);
        mVar.l = new Line(posA4, posA6);
        mVar.v = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(posA, posA2, posA3, posA4);
        mVar.w = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(posA3, posA4, posA6, posA5);
        mVar.x = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(posA5, posA6, a.s(posA8, posA7, 100.0d), a.s(posA7, posA8, 100.0d));
        mVar.y = createZhuangKaoRect(posA, posA2, posA3, posA4, posA5, posA6, posA7, posA8);
        mVar.n = posA9;
        mVar.o = posA10;
        mVar.p = posA11;
        mVar.q = posA12;
        mVar.r = posA13;
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        arrayList.add(posA5);
        arrayList.add(posA6);
        arrayList.add(posA7);
        arrayList.add(posA8);
        arrayList.add(posA9);
        arrayList.add(posA10);
        arrayList.add(posA11);
        arrayList.add(posA12);
        arrayList.add(posA13);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA14 = aVar.a(gps);
            Pos posA15 = aVar.a(this.start2);
            if (posA14.distanceTo(posA15) > 50.0d) {
                mVar.s = new Line(posA14, posA15);
            }
        }
        if (mVar.s != null) {
            Line line = mVar.l;
            c cVarA = mVar.a(new Line(line.end, line.start), mVar.k, mVar.s, mVar.i);
            mVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(mVar.f3656d.b);
            arrayList.add(mVar.f3656d.c);
            arrayList.add(mVar.f3656d.f5821d);
        }
        mVar.u = a.b(arrayList);
        mVar.b = str;
        return mVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoZhuangKaoSrcData motoZhuangKaoSrcData) {
        this.gps1 = new Gps(motoZhuangKaoSrcData.gps1);
        this.gps2 = new Gps(motoZhuangKaoSrcData.gps2);
        this.gps3 = new Gps(motoZhuangKaoSrcData.gps3);
        this.gps4 = new Gps(motoZhuangKaoSrcData.gps4);
        this.gps10 = new Gps(motoZhuangKaoSrcData.gps10);
        this.gps11 = new Gps(motoZhuangKaoSrcData.gps11);
        this.gps12 = new Gps(motoZhuangKaoSrcData.gps12);
        this.gps13 = new Gps(motoZhuangKaoSrcData.gps13);
        this.gpsB5 = new Gps(motoZhuangKaoSrcData.gpsB5);
        this.gpsB6 = new Gps(motoZhuangKaoSrcData.gpsB6);
        this.gpsB7 = new Gps(motoZhuangKaoSrcData.gpsB7);
        this.gpsB8 = new Gps(motoZhuangKaoSrcData.gpsB8);
        this.gpsB9 = new Gps(motoZhuangKaoSrcData.gpsB9);
        this.poleRadius = motoZhuangKaoSrcData.poleRadius;
        this.name = motoZhuangKaoSrcData.name;
        this.time = motoZhuangKaoSrcData.time;
        this.cheKuIsLeft = motoZhuangKaoSrcData.cheKuIsLeft;
        this.lineWidth = motoZhuangKaoSrcData.lineWidth;
        Gps gps = motoZhuangKaoSrcData.start1;
        if (gps == null || motoZhuangKaoSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoZhuangKaoSrcData.start2);
        }
    }
}
