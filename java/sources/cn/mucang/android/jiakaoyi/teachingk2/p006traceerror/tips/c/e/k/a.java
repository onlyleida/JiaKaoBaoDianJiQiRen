package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.k;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.c;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f8121a = null;
    private cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.d b = null;

    private double e(List<TraceItemModel> list) {
        TraceItemModel traceItemModel = list.get(0);
        TraceItemModel traceItemModel2 = list.get(1);
        return Math.toDegrees(traceItemModel.distanceSquare(traceItemModel2) > 400.0d ? traceItemModel2.angleTo(traceItemModel) : list.get(2).angleTo(traceItemModel));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void a(e eVar, TraceItemModel traceItemModel, List list, Pos pos, Pos pos2, TeachTypeData teachTypeData, b bVar, TeachModel teachModel, List list2) {
        c.b(this, eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d
    public void d(e eVar, TraceItemModel traceItemModel, b bVar, TeachModel teachModel, List<TraceItemModel> list) {
        if ((bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) && eVar.d().h()) {
            if (this.b == null) {
                this.b = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.d();
            }
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            if (this.b.a(eVar, (cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar)) {
                i iVar = this.f8121a;
                if (iVar != null) {
                    iVar.a();
                }
            } else {
                if (this.f8121a == null) {
                    this.f8121a = new i(200L);
                }
                if (this.f8121a.c(eVar.d().L)) {
                    cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().b(Step.K2_CeFangTingChe, teachModel.subStep, list.get(0), e(list), eVar, bVar);
                }
            }
            f.o("侧方一次计算的时间是:" + ((SystemClock.elapsedRealtimeNanos() - jElapsedRealtimeNanos) * 0.001d));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.d
    public /* synthetic */ boolean enable() {
        return c.a(this);
    }
}
