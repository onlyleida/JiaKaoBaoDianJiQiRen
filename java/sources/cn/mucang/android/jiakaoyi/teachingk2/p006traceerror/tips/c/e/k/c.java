package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.k;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f8123a = null;
    private cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.c b = null;

    private double e(List<TraceItemModel> list) {
        TraceItemModel traceItemModel = list.get(0);
        TraceItemModel traceItemModel2 = list.get(1);
        return Math.toDegrees(traceItemModel.distanceSquare(traceItemModel2) > 400.0d ? traceItemModel.angleTo(traceItemModel2) : traceItemModel.angleTo(list.get(2)));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void a(e eVar, TraceItemModel traceItemModel, List list, Pos pos, Pos pos2, TeachTypeData teachTypeData, b bVar, TeachModel teachModel, List list2) {
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
    public void d(e eVar, TraceItemModel traceItemModel, b bVar, TeachModel teachModel, List<TraceItemModel> list) {
        int i;
        if (eVar.d().h()) {
            int i2 = teachModel.step;
            Step step = Step.K2_CeFangTingChe;
            if ((i2 == step.type || i2 == Step.K2_DaoCheRuKu.type) && (i = teachModel.subStep) == 1) {
                if (this.b == null) {
                    this.b = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.c();
                    this.f8123a = new i(1000L);
                }
                if (this.b.a(eVar, bVar)) {
                    this.f8123a.a();
                    this.f8123a.f5996a = 1000L;
                    return;
                }
                Step stepFindWithType = Step.findWithType(teachModel.step);
                if (stepFindWithType == Step.K2_DaoCheRuKu || stepFindWithType == step) {
                    cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().b(stepFindWithType, i, list.get(0), e(list), eVar, bVar);
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d
    public /* synthetic */ boolean enable() {
        return cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.c.a(this);
    }
}
