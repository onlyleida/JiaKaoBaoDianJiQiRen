package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.g;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class MotoQiDianSrcData extends K2SrcData implements Serializable, SourceData<MotoQiDianSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps start1;
    public Gps start2;

    public MotoQiDianSrcData() {
        this.stepId = stepId();
        this.lineWidth = 15.0d;
        this.time = System.currentTimeMillis();
    }

    private void wrap(Gps gps, Gps gps2) {
        Gps gps3 = new Gps(gps);
        gps.setGps(gps2);
        gps2.setGps(gps3);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public boolean canTurnOrientation() {
        return true;
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
        return Step.Moto_QiDianQuYu.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoQiDianSrcData copy() {
        MotoQiDianSrcData motoQiDianSrcData = new MotoQiDianSrcData();
        motoQiDianSrcData.gps1 = new Gps(this.gps1);
        motoQiDianSrcData.gps2 = new Gps(this.gps2);
        motoQiDianSrcData.gps3 = new Gps(this.gps3);
        motoQiDianSrcData.gps4 = new Gps(this.gps4);
        motoQiDianSrcData.name = this.name;
        motoQiDianSrcData.time = this.time;
        motoQiDianSrcData.lineWidth = this.lineWidth;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoQiDianSrcData.start1 = new Gps(gps);
            motoQiDianSrcData.start2 = new Gps(this.start2);
        }
        return motoQiDianSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public g createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        g gVar = new g();
        gVar.f3655a = createKey();
        gVar.i = new Line(posA, posA2);
        gVar.j = new Line(posA2, posA3);
        gVar.k = new Line(posA3, posA4);
        gVar.l = new Line(posA4, posA);
        gVar.o = new c(posA, posA2, posA3, posA4);
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.start2);
            arrayList.add(posA5);
            arrayList.add(posA6);
            if (posA5.distanceTo(posA6) > 50.0d) {
                gVar.m = new Line(posA5, posA6);
            }
        }
        gVar.n = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        gVar.b = str;
        return gVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoQiDianSrcData motoQiDianSrcData) {
        this.gps1 = new Gps(motoQiDianSrcData.gps1);
        this.gps2 = new Gps(motoQiDianSrcData.gps2);
        this.gps3 = new Gps(motoQiDianSrcData.gps3);
        this.gps4 = new Gps(motoQiDianSrcData.gps4);
        this.name = motoQiDianSrcData.name;
        this.time = motoQiDianSrcData.time;
        this.lineWidth = motoQiDianSrcData.lineWidth;
        Gps gps = motoQiDianSrcData.start1;
        if (gps == null || motoQiDianSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoQiDianSrcData.start2);
        }
    }
}
