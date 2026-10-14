package cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.m;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.b;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class B2XianKuanSrcData extends K2SrcData implements Serializable, SourceData<B2XianKuanSrcData> {
    public Gps gps1;
    public Gps gps10;
    public Gps gps2;
    public Gps gps9;
    public Gps gpsB3;
    public Gps gpsB4;
    public Gps gpsB5;
    public Gps gpsB6;
    public Gps gpsB7;
    public Gps gpsB8;
    public float poleRadius = 1.75f;
    public Gps start1;
    public Gps start2;

    public B2XianKuanSrcData() {
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
        String str = this.gpsB3.latitude + "," + this.gpsB3.longitude;
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
        return Step.B2_XianKuan.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public B2XianKuanSrcData copy() {
        B2XianKuanSrcData b2XianKuanSrcData = new B2XianKuanSrcData();
        b2XianKuanSrcData.gps1 = new Gps(this.gps1);
        b2XianKuanSrcData.gps2 = new Gps(this.gps2);
        b2XianKuanSrcData.gpsB3 = new Gps(this.gpsB3);
        b2XianKuanSrcData.gpsB4 = new Gps(this.gpsB4);
        b2XianKuanSrcData.gpsB5 = new Gps(this.gpsB5);
        b2XianKuanSrcData.gpsB6 = new Gps(this.gpsB6);
        b2XianKuanSrcData.gpsB7 = new Gps(this.gpsB7);
        b2XianKuanSrcData.gpsB8 = new Gps(this.gpsB8);
        b2XianKuanSrcData.gps9 = new Gps(this.gps9);
        b2XianKuanSrcData.gps10 = new Gps(this.gps10);
        b2XianKuanSrcData.poleRadius = this.poleRadius;
        b2XianKuanSrcData.name = this.name;
        b2XianKuanSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            b2XianKuanSrcData.start1 = new Gps(gps);
            b2XianKuanSrcData.start2 = new Gps(this.start2);
        }
        return b2XianKuanSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public m createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gpsB3);
        Pos posA4 = aVar.a(this.gpsB4);
        Pos posA5 = aVar.a(this.gpsB5);
        Pos posA6 = aVar.a(this.gpsB6);
        Pos posA7 = aVar.a(this.gpsB7);
        Pos posA8 = aVar.a(this.gpsB8);
        Pos posA9 = aVar.a(this.gps9);
        Pos posA10 = aVar.a(this.gps10);
        m mVar = new m();
        mVar.f3655a = createKey();
        mVar.i = new Line(posA, posA2);
        mVar.j = new Line(posA9, posA10);
        mVar.n = new Line(posA, posA10);
        mVar.o = new Line(posA2, posA9);
        mVar.k = new Line(posA3, posA4);
        mVar.l = new Line(posA5, posA6);
        mVar.m = new Line(posA7, posA8);
        float f2 = this.poleRadius;
        mVar.t = f2;
        new b(posA3, f2);
        new b(posA4, this.poleRadius);
        new b(posA5, this.poleRadius);
        new b(posA6, this.poleRadius);
        new b(posA7, this.poleRadius);
        new b(posA8, this.poleRadius);
        mVar.r = new c(posA, posA2, posA9, posA10);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA11 = aVar.a(gps);
            Pos posA12 = aVar.a(this.start2);
            if (posA11.distanceTo(posA12) > 50.0d) {
                mVar.p = new Line(posA11, posA12);
            }
        }
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
        if (mVar.p != null) {
            Line line = mVar.n;
            c cVarA = mVar.a(new Line(line.end, line.start), mVar.o, mVar.p, mVar.i);
            mVar.f3656d = cVarA;
            arrayList.add(cVarA.f5820a);
            arrayList.add(mVar.f3656d.b);
            arrayList.add(mVar.f3656d.c);
            arrayList.add(mVar.f3656d.f5821d);
        }
        mVar.s = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        mVar.b = str;
        return mVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(B2XianKuanSrcData b2XianKuanSrcData) {
        this.gps1 = new Gps(b2XianKuanSrcData.gps1);
        this.gps2 = new Gps(b2XianKuanSrcData.gps2);
        this.gpsB3 = new Gps(b2XianKuanSrcData.gpsB3);
        this.gpsB4 = new Gps(b2XianKuanSrcData.gpsB4);
        this.gpsB5 = new Gps(b2XianKuanSrcData.gpsB5);
        this.gpsB6 = new Gps(b2XianKuanSrcData.gpsB6);
        this.gpsB7 = new Gps(b2XianKuanSrcData.gpsB7);
        this.gpsB8 = new Gps(b2XianKuanSrcData.gpsB8);
        this.gps9 = new Gps(b2XianKuanSrcData.gps9);
        this.gps10 = new Gps(b2XianKuanSrcData.gps10);
        this.poleRadius = b2XianKuanSrcData.poleRadius;
        this.name = b2XianKuanSrcData.name;
        this.time = b2XianKuanSrcData.time;
        Gps gps = b2XianKuanSrcData.start1;
        if (gps == null || b2XianKuanSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(b2XianKuanSrcData.start2);
        }
    }
}
