package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.i;
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
public class MotoTingCheSrcData extends K2SrcData implements Serializable, SourceData<MotoTingCheSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps start1;
    public Gps start2;

    public MotoTingCheSrcData() {
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
        return Step.Moto_TingChe.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoTingCheSrcData copy() {
        MotoTingCheSrcData motoTingCheSrcData = new MotoTingCheSrcData();
        motoTingCheSrcData.gps1 = new Gps(this.gps1);
        motoTingCheSrcData.gps2 = new Gps(this.gps2);
        motoTingCheSrcData.gps3 = new Gps(this.gps3);
        motoTingCheSrcData.gps4 = new Gps(this.gps4);
        motoTingCheSrcData.name = this.name;
        motoTingCheSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoTingCheSrcData.start1 = new Gps(gps);
            motoTingCheSrcData.start2 = new Gps(this.start2);
        }
        return motoTingCheSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public i createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        i iVar = new i();
        iVar.f3655a = createKey();
        iVar.i = new Line(posA, posA2);
        iVar.j = new Line(posA3, posA4);
        iVar.m = c.d(posA, posA2, posA3, posA4);
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            Pos posA5 = aVar.a(gps);
            Pos posA6 = aVar.a(this.start2);
            if (posA5.distanceTo(posA6) > 50.0d) {
                iVar.k = new Line(posA5, posA6);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(posA);
        arrayList.add(posA2);
        arrayList.add(posA3);
        arrayList.add(posA4);
        iVar.n = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        iVar.b = str;
        return iVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoTingCheSrcData motoTingCheSrcData) {
        this.gps1 = new Gps(motoTingCheSrcData.gps1);
        this.gps2 = new Gps(motoTingCheSrcData.gps2);
        this.gps3 = new Gps(motoTingCheSrcData.gps3);
        this.gps4 = new Gps(motoTingCheSrcData.gps4);
        this.name = motoTingCheSrcData.name;
        this.time = motoTingCheSrcData.time;
        Gps gps = motoTingCheSrcData.start1;
        if (gps == null || motoTingCheSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoTingCheSrcData.start2);
        }
    }
}
