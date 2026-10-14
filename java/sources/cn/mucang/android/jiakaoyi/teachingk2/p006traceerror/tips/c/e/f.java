package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class f implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8104a = 0;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        if (bVar instanceof k) {
            k kVar = (k) bVar;
            Pos pos3 = eVar.c().wheelRightBack;
            Line line = kVar.s;
            int iK = (int) a.k(pos3, line.start, line.end);
            Pos pos4 = eVar.c().wheelRightFront;
            Line line2 = kVar.s;
            int i = (Math.max(iK, (int) a.k(pos4, line2.start, line2.end)) >= teachTypeData.data1 || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), kVar.s)) ? 2 : 1;
            if (i != this.f8104a) {
                teachTypeData.triggerState = i == 1 ? (byte) 1 : (byte) 2;
                c(teachTypeData);
            }
            this.f8104a = i;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
    }
}
