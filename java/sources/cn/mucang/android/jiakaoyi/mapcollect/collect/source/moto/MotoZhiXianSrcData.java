package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.k;
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
public class MotoZhiXianSrcData extends K2SrcData implements Serializable, SourceData<MotoZhiXianSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps start1;
    public Gps start2;

    public MotoZhiXianSrcData() {
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
        return Step.Moto_ZhiXian.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoZhiXianSrcData copy() {
        MotoZhiXianSrcData motoZhiXianSrcData = new MotoZhiXianSrcData();
        motoZhiXianSrcData.gps1 = new Gps(this.gps1);
        motoZhiXianSrcData.gps2 = new Gps(this.gps2);
        motoZhiXianSrcData.gps3 = new Gps(this.gps3);
        motoZhiXianSrcData.gps4 = new Gps(this.gps4);
        motoZhiXianSrcData.name = this.name;
        motoZhiXianSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoZhiXianSrcData.start1 = new Gps(gps);
            motoZhiXianSrcData.start2 = new Gps(this.start2);
        }
        return motoZhiXianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public k createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        k kVar = new k();
        kVar.f3655a = createKey();
        kVar.i = new Line(posA, posA2);
        kVar.j = new Line(posA3, posA4);
        kVar.m = c.d(posA, posA2, posA3, posA4);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.start2);
            if (posA5.distanceTo(posA6) > 50.0d) {
                kVar.k = new Line(posA5, posA6);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        kVar.n = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        kVar.b = str;
        return kVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoZhiXianSrcData motoZhiXianSrcData) {
        this.gps1 = new Gps(motoZhiXianSrcData.gps1);
        this.gps2 = new Gps(motoZhiXianSrcData.gps2);
        this.gps3 = new Gps(motoZhiXianSrcData.gps3);
        this.gps4 = new Gps(motoZhiXianSrcData.gps4);
        this.name = motoZhiXianSrcData.name;
        this.time = motoZhiXianSrcData.time;
        Gps gps = motoZhiXianSrcData.start1;
        if (gps == null || motoZhiXianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoZhiXianSrcData.start2);
        }
    }
}
