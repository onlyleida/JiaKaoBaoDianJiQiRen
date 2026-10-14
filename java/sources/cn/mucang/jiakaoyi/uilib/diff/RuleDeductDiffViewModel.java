package cn.mucang.jiakaoyi.uilib.diff;

import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import cn.mucang.jiakaoyi.uilib.rule.K3TeachingRuleConfig;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.w0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0002J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020!J\u0016\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010%\u001a\u00020&J\u000e\u0010'\u001a\u00020!2\u0006\u0010%\u001a\u00020&J*\u0010'\u001a\u00020!2 \u0010\u001a\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u000e\u0018\u00010\fH\u0002R\u001d\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u000e\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\nR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R#\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\nR(\u0010\u001a\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u000e\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\nR(\u0010\u001e\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u000e\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "examSiteId", "", "(J)V", "deductList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "getDeductList", "()Landroidx/lifecycle/MutableLiveData;", "deductMapCache", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "diffCountLiveData", "Lcn/mucang/jiakaoyi/uilib/diff/TabCount;", "getDiffCountLiveData", "diffJsonCache", "", "getExamSiteId", "()J", "ruleConfigList", "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;", "", "getRuleConfigList", "ruleConfigMapCache", "stepList", "Lcn/mucang/jiakaoyi/uilib/model/StepItem;", "getStepList", "teachRuleConfigMapCache", "getDiffData", "loadDeductByStep", "", "step", "loadDeducts", "loadRuleByStep", "teaching", "", "loadRuleConfigs", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleDeductDiffViewModel extends LoadingViewModel {
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<TabCount> f9291d = new z<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z<List<StepItem>> f9292e = new z<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z<List<RuleConfig<Object>>> f9293f = new z<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z<List<DeductEntity>> f9294g = new z<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f9295h;
    private Map<Step, List<DeductEntity>> i;
    private Map<Step, List<RuleConfig<Object>>> j;
    private Map<Step, List<RuleConfig<Object>>> k;

    public RuleDeductDiffViewModel(long j) {
        this.c = j;
    }

    private final String n() {
        if (this.f9295h == null) {
            this.f9295h = i0.g(j.a(this.c), "");
        }
        return this.f9295h;
    }

    private final void t(Map<Step, List<RuleConfig<Object>>> map) {
        if (map == null || map.isEmpty()) {
            this.f9292e.l(new ArrayList());
            this.f9291d.l(new TabCount(DataType.RULE.getType(), 0));
            return;
        }
        List listF0 = CollectionsKt___CollectionsKt.F0(map.keySet());
        ArrayList arrayList = new ArrayList();
        Iterator it = listF0.iterator();
        while (it.hasNext()) {
            arrayList.add(new StepItem((Step) it.next(), false, false, 4, null));
        }
        arrayList.get(0).e(true);
        p().l(arrayList);
        o().l(map.get(arrayList.get(0).getStep()));
        z<TabCount> zVarM = m();
        int type = DataType.RULE.getType();
        List<RuleConfig<Object>> list = map.get(arrayList.get(0).getStep());
        zVarM.l(new TabCount(type, list != null ? list.size() : 0));
    }

    public final z<List<DeductEntity>> l() {
        return this.f9294g;
    }

    public final z<TabCount> m() {
        return this.f9291d;
    }

    public final z<List<RuleConfig<Object>>> o() {
        return this.f9293f;
    }

    public final z<List<StepItem>> p() {
        return this.f9292e;
    }

    public final void q(Step step) {
        r.e(step, "step");
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new RuleDeductDiffViewModel$loadDeductByStep$1(this, step, null), 2, null);
    }

    public final void r() {
        if (this.i == null) {
            try {
                LoadingViewModel.f(this, false, null, 2, null);
                List<DeductEntity> array = JSON.parseArray(new JSONObject(n()).optString("judgeRuleList"), DeductEntity.class);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (array != null) {
                    for (DeductEntity it : array) {
                        Step step = Step.findWithType(it.getStepId());
                        if (linkedHashMap.get(step) == null) {
                            r.d(step, "step");
                            linkedHashMap.put(step, new ArrayList());
                        }
                        List list = (List) linkedHashMap.get(step);
                        if (list != null) {
                            r.d(it, "it");
                            list.add(it);
                        }
                    }
                }
                this.i = linkedHashMap;
                LoadingViewModel.h(this, false, null, 2, null);
            } catch (Exception e2) {
                e2.printStackTrace();
                LoadingViewModel.d(this, false, null, 2, null);
            }
        }
        Map<Step, List<DeductEntity>> map = this.i;
        if (map != null) {
            r.c(map);
            if (!map.isEmpty()) {
                Map<Step, List<DeductEntity>> map2 = this.i;
                if (map2 == null) {
                    return;
                }
                List listF0 = CollectionsKt___CollectionsKt.F0(map2.keySet());
                ArrayList arrayList = new ArrayList();
                Iterator it2 = listF0.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new StepItem((Step) it2.next(), false, false, 4, null));
                }
                arrayList.get(0).e(true);
                p().l(arrayList);
                l().l(map2.get(arrayList.get(0).getStep()));
                z<TabCount> zVarM = m();
                int type = DataType.DEDUCT.getType();
                List<DeductEntity> list2 = map2.get(arrayList.get(0).getStep());
                zVarM.l(new TabCount(type, list2 != null ? list2.size() : 0));
                return;
            }
        }
        this.f9292e.l(new ArrayList());
        this.f9291d.l(new TabCount(DataType.DEDUCT.getType(), 0));
    }

    public final void s(Step step, boolean z) {
        r.e(step, "step");
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new RuleDeductDiffViewModel$loadRuleByStep$1(this, z, step, null), 2, null);
    }

    public final void u(boolean z) {
        if (this.j == null || this.k == null) {
            try {
                LoadingViewModel.f(this, false, null, 2, null);
                List<RuleConfigEntity> array = JSON.parseArray(new JSONObject(n()).optString("instructionConfigList"), RuleConfigEntity.class);
                this.j = new LinkedHashMap();
                this.k = new LinkedHashMap();
                for (RuleConfigEntity ruleConfigEntity : array) {
                    Step step = Step.findWithType(ruleConfigEntity.getStepId());
                    K3TeachingRuleConfig k3TeachingRuleConfig = K3TeachingRuleConfig.f9517a;
                    r.d(step, "step");
                    if (k3TeachingRuleConfig.b(step, ruleConfigEntity.getRuleId())) {
                        Map<Step, List<RuleConfig<Object>>> map = this.k;
                        r.c(map);
                        if (map.get(step) == null) {
                            Map<Step, List<RuleConfig<Object>>> map2 = this.k;
                            r.c(map2);
                            map2.put(step, new ArrayList());
                        }
                        Map<Step, List<RuleConfig<Object>>> map3 = this.k;
                        r.c(map3);
                        List<RuleConfig<Object>> list = map3.get(step);
                        if (list != null) {
                            RuleConfig<Object> ruleConfigTransform = ruleConfigEntity.transform();
                            r.d(ruleConfigTransform, "ruleConfigEntity.transform()");
                            list.add(ruleConfigTransform);
                        }
                    } else {
                        Map<Step, List<RuleConfig<Object>>> map4 = this.j;
                        r.c(map4);
                        if (map4.get(step) == null) {
                            Map<Step, List<RuleConfig<Object>>> map5 = this.j;
                            r.c(map5);
                            map5.put(step, new ArrayList());
                        }
                        Map<Step, List<RuleConfig<Object>>> map6 = this.j;
                        r.c(map6);
                        List<RuleConfig<Object>> list2 = map6.get(step);
                        if (list2 != null) {
                            RuleConfig<Object> ruleConfigTransform2 = ruleConfigEntity.transform();
                            r.d(ruleConfigTransform2, "ruleConfigEntity.transform()");
                            list2.add(ruleConfigTransform2);
                        }
                    }
                }
                LoadingViewModel.h(this, false, null, 2, null);
            } catch (Exception e2) {
                e2.printStackTrace();
                LoadingViewModel.d(this, false, null, 2, null);
            }
        }
        if (z) {
            t(this.k);
        } else {
            t(this.j);
        }
    }
}
