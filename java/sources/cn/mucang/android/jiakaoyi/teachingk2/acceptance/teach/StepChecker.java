package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0012J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\rJ\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0012J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\tJ\u001e\u0010\u001d\u001a\u00020\u001b2\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000eR6\u0010\u0005\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\nX\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepChecker;", "", "onlyNormalBoundary", "", "(Z)V", "stepMap", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "Lkotlin/collections/HashMap;", "triggerBoundarySet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "getTriggerBoundarySet", "()Ljava/util/HashSet;", "filterSteps", "", "noPassSteps", "", "getBoundaryPoint", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "stepKey", "getResult", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepResultModel;", "onStepStart", "", "boundDetector", "setInitSet", "set", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> f6070a = new HashMap<>();
    private final HashSet<String> b = new HashSet<>();

    public StepChecker(boolean z) {
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        Objects.requireNonNull(fVarA, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.mapcollect.poshandle.K2Data");
        Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> map = ((j) fVarA).f4723d;
        r.d(map, "data.collisions");
        for (Map.Entry<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> entry : map.entrySet()) {
            if (cn.mucang.android.core.utils.g.d(entry.getValue())) {
                ArrayList arrayList = new ArrayList();
                List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> value = entry.getValue();
                r.d(value, "it.value");
                arrayList.addAll(value);
                HashMap<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> map2 = this.f6070a;
                Step key = entry.getKey();
                r.d(key, "it.key");
                map2.put(key, arrayList);
            }
        }
        if (z) {
            for (Map.Entry<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> entry2 : this.f6070a.entrySet()) {
                Set<String> set = n.b().k.get(entry2.getKey());
                Iterator<cn.mucang.android.jiakaoyi.hpmap.a.a.b> it = entry2.getValue().iterator();
                while (it.hasNext()) {
                    cn.mucang.android.jiakaoyi.hpmap.a.a.b next = it.next();
                    if (next.r()) {
                        it.remove();
                    } else {
                        boolean z2 = false;
                        if (set != null && set.contains(next.getKey())) {
                            z2 = true;
                        }
                        if (z2) {
                            it.remove();
                        }
                    }
                }
            }
        }
    }

    public final List<Step> a(List<Integer> noPassSteps) {
        r.e(noPassSteps, "noPassSteps");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>>> it = this.f6070a.entrySet().iterator();
        while (it.hasNext()) {
            Step key = it.next().getKey();
            if (!noPassSteps.contains(Integer.valueOf(key.type))) {
                it.remove();
                arrayList.add(key);
            }
        }
        return arrayList;
    }

    public final Pos b(String stepKey) {
        r.e(stepKey, "stepKey");
        Iterator<Map.Entry<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>>> it = this.f6070a.entrySet().iterator();
        while (it.hasNext()) {
            for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : it.next().getValue()) {
                if (r.a(bVar.getKey(), stepKey)) {
                    Pos posN = bVar.n();
                    r.d(posN, "boundary.center()");
                    return posN;
                }
            }
        }
        return new Pos();
    }

    public final List<StepResultModel> c() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> entry : this.f6070a.entrySet()) {
            Step key = entry.getKey();
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> value = entry.getValue();
            int size = value.size();
            int i = 0;
            Iterator<cn.mucang.android.jiakaoyi.hpmap.a.a.b> it = value.iterator();
            while (it.hasNext()) {
                if (d().contains(it.next().getKey())) {
                    i++;
                    it.remove();
                }
            }
            StepResultModel stepResultModel = new StepResultModel();
            stepResultModel.setStep(key.type);
            stepResultModel.setStepName(key.stepName);
            stepResultModel.setTotalCount(size);
            stepResultModel.setDoneCount(i);
            arrayList.add(stepResultModel);
        }
        return arrayList;
    }

    public final HashSet<String> d() {
        return this.b;
    }

    public final void e(cn.mucang.android.jiakaoyi.hpmap.a.a.b boundDetector) {
        r.e(boundDetector, "boundDetector");
        this.b.add(boundDetector.getKey());
    }

    public final void f(HashSet<String> set) {
        r.e(set, "set");
        this.b.addAll(set);
    }
}
