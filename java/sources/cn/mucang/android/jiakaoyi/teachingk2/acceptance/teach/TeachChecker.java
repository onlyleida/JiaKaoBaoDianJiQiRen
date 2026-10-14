package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003¢\u0006\u0002\u0010\u0007J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachChecker;", "", "teachData", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "(Ljava/util/Map;)V", "modelSet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "getResult", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;", "onTeachTrigger", "", "tm", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Step, List<TeachModel>> f6071a;
    private final HashSet<String> b;

    /* JADX WARN: Multi-variable type inference failed */
    public TeachChecker(Map<Step, ? extends List<? extends TeachModel>> teachData) {
        r.e(teachData, "teachData");
        this.f6071a = teachData;
        this.b = new HashSet<>();
    }

    public final List<TeachResultModel> a() {
        ArrayList arrayList = new ArrayList();
        ArrayList<TeachModel> arrayList2 = new ArrayList();
        Iterator<T> it = this.f6071a.values().iterator();
        while (it.hasNext()) {
            arrayList2.addAll((List) it.next());
        }
        for (TeachModel teachModel : arrayList2) {
            if (!teachModel.isTraceTeach()) {
                TeachResultModel teachResultModel = new TeachResultModel();
                teachResultModel.setTeachModelId(teachModel.teachModelId);
                teachResultModel.setStep(teachModel.step);
                teachResultModel.setSubStep(teachModel.subStep);
                teachResultModel.setStepName(Step.findWithType(teachModel.step).stepName);
                teachResultModel.setSubStepName(TeachCollectHelper.g(teachModel.step, teachModel.stepDirection, teachModel.subStep));
                teachResultModel.setPlayText(teachModel.getPlayText());
                teachResultModel.setGrade(teachModel.grade);
                teachResultModel.setHasTrigger(this.b.contains(teachModel.teachModelId));
                v vVar = v.f15822a;
                arrayList.add(teachResultModel);
            }
        }
        return arrayList;
    }

    public final void b(TeachModel tm) {
        r.e(tm, "tm");
        this.b.add(tm.teachModelId);
    }
}
