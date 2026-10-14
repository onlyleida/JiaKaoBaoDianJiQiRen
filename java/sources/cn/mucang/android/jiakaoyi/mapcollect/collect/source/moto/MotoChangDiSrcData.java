package cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.c;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MotoChangDiSrcData extends K2SrcData implements Serializable, SourceData<MotoChangDiSrcData> {
    public boolean fromLeft;
    public Gps start1;
    public Gps start2;
    public final List<List<Gps>> solidLines = new ArrayList();
    public final List<List<Gps>> dashLines = new ArrayList();

    public MotoChangDiSrcData() {
        this.lineWidth = 15.0d;
        this.fromLeft = true;
        this.stepId = stepId();
        this.time = System.currentTimeMillis();
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
        return new Gps();
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
        return Step.Moto_ChangDi.type;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void turnOrientation() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public MotoChangDiSrcData copy() {
        MotoChangDiSrcData motoChangDiSrcData = new MotoChangDiSrcData();
        motoChangDiSrcData.solidLines.clear();
        for (List<Gps> list : this.solidLines) {
            ArrayList arrayList = new ArrayList();
            Iterator<Gps> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Gps(it.next()));
            }
            motoChangDiSrcData.solidLines.add(arrayList);
        }
        motoChangDiSrcData.dashLines.clear();
        for (List<Gps> list2 : this.dashLines) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new Gps(it2.next()));
            }
            motoChangDiSrcData.dashLines.add(arrayList2);
        }
        motoChangDiSrcData.lineWidth = this.lineWidth;
        motoChangDiSrcData.fromLeft = this.fromLeft;
        motoChangDiSrcData.name = this.name;
        motoChangDiSrcData.time = this.time;
        Gps gps = this.start1;
        if (gps != null && this.start2 != null) {
            motoChangDiSrcData.start1 = new Gps(gps);
            motoChangDiSrcData.start2 = new Gps(this.start2);
        }
        return motoChangDiSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public c createCollision(a aVar, String str) {
        c cVar = new c();
        cVar.f3655a = createKey();
        for (List<Gps> list : this.solidLines) {
            ArrayList arrayList = new ArrayList();
            Iterator<Gps> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(aVar.a(it.next()));
            }
            cVar.i.add(arrayList);
        }
        for (List<Gps> list2 : this.dashLines) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(aVar.a(it2.next()));
            }
            cVar.j.add(arrayList2);
        }
        cVar.k = new cn.mucang.android.jiakaoyi.signal.pos.a();
        ArrayList arrayList3 = new ArrayList();
        Iterator<List<Pos>> it3 = cVar.i.iterator();
        while (it3.hasNext()) {
            List<Pos> listC = d.c(it3.next(), 35.0d);
            arrayList3.add(listC);
            cn.mucang.android.jiakaoyi.signal.pos.a aVar2 = cVar.k;
            aVar2.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(listC));
            cVar.k = aVar2;
        }
        cVar.i.clear();
        cVar.i.addAll(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        Iterator<List<Pos>> it4 = cVar.j.iterator();
        while (it4.hasNext()) {
            List<Pos> listC2 = d.c(it4.next(), 35.0d);
            arrayList4.add(listC2);
            cn.mucang.android.jiakaoyi.signal.pos.a aVar3 = cVar.k;
            aVar3.i(cn.mucang.android.jiakaoyi.hpmap.d.a.b(listC2));
            cVar.k = aVar3;
        }
        cVar.j.clear();
        cVar.j.addAll(arrayList4);
        cVar.b = str;
        return cVar;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData
    public void set(MotoChangDiSrcData motoChangDiSrcData) {
        this.solidLines.clear();
        for (List<Gps> list : motoChangDiSrcData.solidLines) {
            ArrayList arrayList = new ArrayList();
            Iterator<Gps> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Gps(it.next()));
            }
            this.solidLines.add(arrayList);
        }
        this.dashLines.clear();
        for (List<Gps> list2 : motoChangDiSrcData.dashLines) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new Gps(it2.next()));
            }
            this.dashLines.add(arrayList2);
        }
        this.lineWidth = motoChangDiSrcData.lineWidth;
        this.time = motoChangDiSrcData.time;
        this.name = motoChangDiSrcData.name;
        this.fromLeft = motoChangDiSrcData.fromLeft;
        Gps gps = motoChangDiSrcData.start1;
        if (gps == null || motoChangDiSrcData.start2 == null) {
            this.start1 = null;
            this.start2 = null;
        } else {
            this.start1 = new Gps(gps);
            this.start2 = new Gps(motoChangDiSrcData.start2);
        }
    }
}
