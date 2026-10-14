package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.jiakaoyi.exam.k3.collision.result.LeftRightLinesResult;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HpLeftRightLinesCalculator {
    private List<K3CollisionModel> allLines = new ArrayList();

    public HpLeftRightLinesCalculator(List<K3CollisionModel> list, List<K3CollisionModel> list2, List<K3CollisionModel> list3, List<K3CollisionModel> list4, List<K3CollisionModel> list5) {
        if (!list.isEmpty()) {
            this.allLines.addAll(list);
        }
        if (!list2.isEmpty()) {
            this.allLines.addAll(list2);
        }
        if (!list3.isEmpty()) {
            this.allLines.addAll(list3);
        }
        if (!list4.isEmpty()) {
            this.allLines.addAll(list4);
        }
        if (list5.isEmpty()) {
            return;
        }
        this.allLines.addAll(list5);
    }

    private List<K3CollisionModel> getCalculateLines(e eVar, List<K3CollisionModel> list) {
        ArrayList arrayList = new ArrayList();
        for (K3CollisionModel k3CollisionModel : list) {
            if (k3CollisionModel instanceof j) {
                j jVar = (j) k3CollisionModel;
                if (!jVar.j) {
                    if (cn.mucang.android.jiakaoyi.k3collect.collision.a.c(eVar.c().bigBound, jVar.f3922h)) {
                        arrayList.add(k3CollisionModel);
                    }
                } else if (!jVar.c.h(eVar.c().bigBound)) {
                    arrayList.add(k3CollisionModel);
                }
            } else if (k3CollisionModel instanceof i) {
                i iVar = (i) k3CollisionModel;
                if (iVar.f3917h) {
                    if (!iVar.c.h(eVar.c().bigBound)) {
                        arrayList.add(k3CollisionModel);
                    }
                } else if (cn.mucang.android.jiakaoyi.k3collect.collision.a.c(eVar.c().bigBound, iVar.f3916g) || cn.mucang.android.jiakaoyi.k3collect.collision.a.c(eVar.c().bigBound, iVar.f3915f)) {
                    arrayList.add(k3CollisionModel);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x010f A[PHI: r7 r9
      0x010f: PHI (r7v9 boolean) = (r7v5 boolean), (r7v12 boolean) binds: [B:36:0x0102, B:30:0x00d9] A[DONT_GENERATE, DONT_INLINE]
      0x010f: PHI (r9v6 boolean) = (r9v3 boolean), (r9v8 boolean) binds: [B:36:0x0102, B:30:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    public LeftRightLinesResult getLeftRightLines(e eVar) {
        boolean zF;
        boolean zF2;
        boolean zF3;
        List<K3CollisionModel> list = this.allLines;
        if (list == null || list.isEmpty()) {
            return new LeftRightLinesResult(null, null);
        }
        List<K3CollisionModel> calculateLines = getCalculateLines(eVar, this.allLines);
        if (calculateLines.isEmpty()) {
            return new LeftRightLinesResult(null, null);
        }
        c cVar = eVar.c().carRect;
        Pos posMeanWith = new Pos(cVar.f5821d).meanWith(cVar.f5820a);
        Pos posMeanWith2 = new Pos(cVar.c).meanWith(cVar.b);
        c cVar2 = new c(cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.c, cVar.b, 300.0d), cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.f5821d, cVar.f5820a, 300.0d), posMeanWith, posMeanWith2);
        c cVar3 = new c(cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.b, cVar.c, 300.0d), cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.f5820a, cVar.f5821d, 300.0d), posMeanWith, posMeanWith2);
        if (calculateLines.size() <= 0) {
            return new LeftRightLinesResult(null, null);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < calculateLines.size(); i++) {
            K3CollisionModel k3CollisionModel = calculateLines.get(i);
            if (k3CollisionModel instanceof j) {
                j jVar = (j) k3CollisionModel;
                if (jVar.j) {
                    zF2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(cVar3, jVar.f3919e, false);
                    zF = cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(cVar2, jVar.f3919e, false);
                } else {
                    Line line = jVar.f3922h;
                    zF2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar3, line.start, line.end);
                    Line line2 = jVar.f3922h;
                    zF = cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar2, line2.start, line2.end);
                }
            } else if (k3CollisionModel instanceof i) {
                i iVar = (i) k3CollisionModel;
                if (iVar.f3917h) {
                    zF2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(cVar3, iVar.f3913d, false);
                    if (!zF2) {
                        zF2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(cVar3, iVar.f3914e, false);
                    }
                    zF3 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(cVar2, iVar.f3913d, false);
                    if (zF3) {
                        zF = zF3;
                    } else {
                        zF = cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(cVar2, iVar.f3914e, false);
                    }
                } else {
                    Line line3 = iVar.f3915f;
                    zF2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar3, line3.start, line3.end);
                    if (!zF2) {
                        Line line4 = iVar.f3916g;
                        zF2 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar3, line4.start, line4.end);
                    }
                    Line line5 = iVar.f3915f;
                    zF3 = cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar2, line5.start, line5.end);
                    if (zF3) {
                        zF = zF3;
                    } else {
                        Line line6 = iVar.f3916g;
                        zF = cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar2, line6.start, line6.end);
                    }
                }
            } else {
                zF = false;
                zF2 = false;
            }
            if (zF2) {
                arrayList.add(k3CollisionModel);
            } else if (zF) {
                arrayList2.add(k3CollisionModel);
            }
        }
        return new LeftRightLinesResult(arrayList, arrayList2);
    }
}
