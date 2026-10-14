package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.k;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.e;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.j;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.k;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f8122a = null;
    private k b = null;
    private j c = null;

    private double e(List<TraceItemModel> list) {
        TraceItemModel traceItemModel = list.get(0);
        TraceItemModel traceItemModel2 = list.get(1);
        return Math.toDegrees(traceItemModel.distanceSquare(traceItemModel2) > 400.0d ? traceItemModel2.angleTo(traceItemModel) : list.get(2).angleTo(traceItemModel));
    }

    private double f(c cVar) {
        return Math.toDegrees(cVar.m.middle().angleTo(cVar.k.middle()));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, TraceItemModel traceItemModel, List list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List list2) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.c.b(this, eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        a.a(this, teachTypeData);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d
    public void d(cn.mucang.android.jiakaoyi.signal.c.e eVar, TraceItemModel traceItemModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list) {
        if ((bVar instanceof c) && eVar.d().h()) {
            c cVar = (c) bVar;
            int i = teachModel.subStep;
            if (i == 2 || i == 4) {
                if (this.f8122a == null) {
                    this.f8122a = new e();
                    this.c = new j();
                }
                if (this.c.a(eVar, cVar) || !this.f8122a.a(eVar, cVar)) {
                    cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().b(Step.K2_DaoCheRuKu, i, list.get(0), e(list), eVar, bVar);
                    return;
                }
                if (this.b == null) {
                    this.b = new k();
                }
                if (this.b.a(eVar, cVar)) {
                    cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().b(Step.K2_DaoCheRuKu, i == 2 ? 3 : 5, list.get(list.size() - 1), f(cVar), eVar, bVar);
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d
    public /* synthetic */ boolean enable() {
        return cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.c.a(this);
    }
}
