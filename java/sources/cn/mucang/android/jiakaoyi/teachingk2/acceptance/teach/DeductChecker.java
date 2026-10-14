package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/DeductChecker;", "", "()V", "currentBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "deductList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;", "getDeductList", "()Ljava/util/List;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "setCurrentBoundary", "boundDetector", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<TeachDeductModel> f6069a = new ArrayList();
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b b;

    public final List<TeachDeductModel> a() {
        return this.f6069a;
    }

    public final void b(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
        Step stepS;
        Step stepS2;
        r.e(deduct, "deduct");
        TeachDeductModel teachDeductModel = new TeachDeductModel();
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.b;
        String str = null;
        teachDeductModel.setBoundaryKey(bVar == null ? null : bVar.getKey());
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.b;
        teachDeductModel.setBoundaryName(bVar2 == null ? null : bVar2.t());
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = this.b;
        int i = 0;
        if (bVar3 != null && (stepS2 = bVar3.s()) != null) {
            i = stepS2.type;
        }
        teachDeductModel.setStepId(i);
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar4 = this.b;
        if (bVar4 != null && (stepS = bVar4.s()) != null) {
            str = stepS.stepName;
        }
        teachDeductModel.setStepName(str);
        teachDeductModel.setScore(deduct.f3102a.deductScore);
        teachDeductModel.setDesc(deduct.f3102a.desc);
        teachDeductModel.setCode(deduct.f3102a.code);
        teachDeductModel.setTime(deduct.b);
        this.f6069a.add(teachDeductModel);
    }

    public final void c(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        this.b = bVar;
    }
}
