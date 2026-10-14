package cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.l;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c implements cn.mucang.android.jiakaoyi.teachingk2.safe.c0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f7630a = null;
    private Map<String, cn.mucang.android.jiakaoyi.signal.pos.c> b = new HashMap();

    private cn.mucang.android.jiakaoyi.signal.pos.c b(l lVar) {
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.b.get(lVar.f3655a);
        if (cVar != null) {
            return cVar;
        }
        Line line = lVar.l;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = lVar.m;
        cn.mucang.android.jiakaoyi.signal.pos.c cVarD = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos, pos2, line2.start, line2.end);
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVarD.f5821d, cVarD.f5820a, 75.0d);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVarD.c, cVarD.b, 75.0d);
        Pos posS3 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVarD.b, cVarD.c, 75.0d);
        Pos posS4 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVarD.f5820a, cVarD.f5821d, 75.0d);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = new cn.mucang.android.jiakaoyi.signal.pos.c(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS2, posS, 200.0d), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS, posS2, 200.0d), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS4, posS3, 200.0d), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS3, posS4, 200.0d));
        this.b.put(lVar.f3655a, cVar2);
        return cVar2;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.c0.a
    public boolean a(e eVar) {
        cn.mucang.android.jiakaoyi.signal.pos.c cVar;
        j jVar = n.b().c;
        if (jVar == null) {
            return false;
        }
        if (eVar.c() == null || (cVar = eVar.c().carRect) == null) {
            return true;
        }
        List<l> list = jVar.o;
        if (g.b(list)) {
            return true;
        }
        l lVar = this.f7630a;
        if (lVar != null) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(b(lVar), cVar)) {
                return false;
            }
            this.f7630a = null;
        }
        for (l lVar2 : list) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(b(lVar2), cVar)) {
                this.f7630a = lVar2;
                return false;
            }
        }
        return true;
    }
}
