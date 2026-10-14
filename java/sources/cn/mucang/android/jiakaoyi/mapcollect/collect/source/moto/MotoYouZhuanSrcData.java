package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.j;
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
public class MotoYouZhuanSrcData extends K2SrcData implements Serializable, SourceData<MotoYouZhuanSrcData> {
    public Gps gps1;
    public Gps gps2;
    public Gps gps3;
    public Gps gps4;
    public Gps gps5;
    public Gps gps6;
    public Gps gps7;
    public Gps gps8;
    public Gps start1;
    public Gps start2;

    public MotoYouZhuanSrcData() {
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
        return Step.Moto_LuKouYouZhuan.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoYouZhuanSrcData copy() {
        MotoYouZhuanSrcData motoYouZhuanSrcData = new MotoYouZhuanSrcData();
        motoYouZhuanSrcData.gps1 = new Gps(this.gps1);
        motoYouZhuanSrcData.gps2 = new Gps(this.gps2);
        motoYouZhuanSrcData.gps3 = new Gps(this.gps3);
        motoYouZhuanSrcData.gps4 = new Gps(this.gps4);
        Gps gps = this.gps5;
        if (gps != null && this.gps6 != null && this.gps7 != null && this.gps8 != null) {
            motoYouZhuanSrcData.gps5 = new Gps(gps);
            motoYouZhuanSrcData.gps6 = new Gps(this.gps6);
            motoYouZhuanSrcData.gps7 = new Gps(this.gps7);
            motoYouZhuanSrcData.gps8 = new Gps(this.gps8);
        }
        motoYouZhuanSrcData.name = this.name;
        motoYouZhuanSrcData.time = this.time;
        Gps gps2 = this.start1;
        if (gps2 != null && this.start2 != null) {
            motoYouZhuanSrcData.start1 = new Gps(gps2);
            motoYouZhuanSrcData.start2 = new Gps(this.start2);
        }
        return motoYouZhuanSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public j createCollision(a aVar, String str) {
        Pos posA = aVar.a(this.gps1);
        Pos posA2 = aVar.a(this.gps2);
        Pos posA3 = aVar.a(this.gps3);
        Pos posA4 = aVar.a(this.gps4);
        j jVar = new j();
        jVar.f3655a = createKey();
        jVar.i = new Line(posA, posA2);
        jVar.j = new Line(posA3, posA4);
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
            jVar.n = c.d(posA5, posA6, posA7, posA8);
            arrayList.add(posA5);
            arrayList.add(posA6);
            arrayList.add(posA7);
            arrayList.add(posA8);
        }
        Gps gps2 = this.start1;
        if (gps2 != null && this.start2 != null) {
            Pos posA9 = aVar.a(gps2);
            Pos posA10 = aVar.a(this.start2);
            if (posA9.distanceTo(posA10) > 50.0d) {
                jVar.k = new Line(posA9, posA10);
            }
        }
        jVar.o = cn.mucang.android.jiakaoyi.hpmap.d.a.b(arrayList);
        jVar.b = str;
        return jVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoYouZhuanSrcData motoYouZhuanSrcData) {
        this.gps1 = new Gps(motoYouZhuanSrcData.gps1);
        this.gps2 = new Gps(motoYouZhuanSrcData.gps2);
        this.gps3 = new Gps(motoYouZhuanSrcData.gps3);
        this.gps4 = new Gps(motoYouZhuanSrcData.gps4);
        Gps gps = motoYouZhuanSrcData.gps5;
        if (gps != null && motoYouZhuanSrcData.gps6 != null && motoYouZhuanSrcData.gps7 != null && motoYouZhuanSrcData.gps8 != null) {
            this.gps5 = new Gps(gps);
            this.gps6 = new Gps(motoYouZhuanSrcData.gps6);
            this.gps7 = new Gps(motoYouZhuanSrcData.gps7);
            this.gps8 = new Gps(motoYouZhuanSrcData.gps8);
        }
        this.name = motoYouZhuanSrcData.name;
        this.time = motoYouZhuanSrcData.time;
        Gps gps2 = motoYouZhuanSrcData.start1;
        if (gps2 == null || motoYouZhuanSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps2);
            this.start2 = new Gps(motoYouZhuanSrcData.start2);
        }
    }
}
