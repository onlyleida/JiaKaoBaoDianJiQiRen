package cn.mucang.android.jiakaoyi.teachingk2.exe;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class j implements cn.mucang.android.jiakaoyi.hpmap.a.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> f7117a;
    private final List<TeachModel> b;
    private final Map<String, Boolean> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f7118d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f7119e = new Pos();

    public j(cn.mucang.android.jiakaoyi.framework.h.b<FormModel> bVar, List<TeachModel> list) {
        this.f7117a = bVar;
        this.b = list;
    }

    private void b(TeachModel teachModel, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        CarPos carPosC;
        Pos pos;
        NormalVariable normalVariable = teachModel.getNormalVariable();
        if (normalVariable == null || !eVar.d().h() || (carPosC = eVar.c()) == null || (pos = carPosC.rearAxlePoint) == null) {
            return;
        }
        double dDistanceSquare = normalVariable.posOnLine.distanceSquare(pos);
        if (dDistanceSquare > 250000.0d || (dDistanceSquare > 90000.0d && !cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(carPosC.carRect, normalVariable.p1, normalVariable.p2))) {
            this.c.put(teachModel.teachModelId, Boolean.FALSE);
        }
    }

    private boolean c(cn.mucang.android.jiakaoyi.signal.c.e eVar, TeachModel teachModel) {
        NormalVariable normalVariable = teachModel.getNormalVariable();
        if (normalVariable == null || !eVar.d().h()) {
            return false;
        }
        eVar.getCurrentPosition().c();
        CarPos carPosC = eVar.c();
        if (carPosC == null || carPosC.rearAxlePoint == null) {
            return false;
        }
        if (normalVariable.isRange) {
            return normalVariable.direCarDot == eVar.d().F.direction && carPosC.rearAxlePoint.vectorTo(carPosC.center, this.f7118d).dot(normalVariable.posOnLine.vectorTo(normalVariable.forwardPoint, this.f7119e)) > 0.0d && carPosC.rearAxlePoint.distanceTo(normalVariable.posOnLine) <= ((double) normalVariable.width);
        }
        return normalVariable.direCarDot == eVar.d().F.direction && carPosC.rearAxlePoint.vectorTo(carPosC.center, this.f7118d).dot(normalVariable.posOnLine.vectorTo(normalVariable.forwardPoint, this.f7119e)) > 0.0d && cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPosC.rearAxlePoint, carPosC.center, normalVariable.p1, normalVariable.p2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(TeachModel teachModel) {
        if (cn.mucang.android.core.utils.g.b(teachModel.data)) {
            return;
        }
        for (FormModel formModel : teachModel.data) {
            formModel.tm = teachModel;
            this.f7117a.callback(formModel);
        }
    }

    private void f(final TeachModel teachModel) {
        if (this.f7117a == null) {
            return;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.exe.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f7108a.e(teachModel);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.d
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        if (cn.mucang.android.core.utils.g.b(this.b)) {
            return;
        }
        for (TeachModel teachModel : this.b) {
            Boolean bool = this.c.get(teachModel.teachModelId);
            if (bool != null && bool.booleanValue()) {
                b(teachModel, eVar);
            }
        }
        if (examProcessor.v()) {
            return;
        }
        for (TeachModel teachModel2 : this.b) {
            Boolean bool2 = this.c.get(teachModel2.teachModelId);
            if (bool2 == null || !bool2.booleanValue()) {
                if (c(eVar, teachModel2)) {
                    this.c.put(teachModel2.teachModelId, Boolean.TRUE);
                    f(teachModel2);
                }
            }
        }
    }
}
