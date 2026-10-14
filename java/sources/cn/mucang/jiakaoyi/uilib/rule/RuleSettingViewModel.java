package cn.mucang.jiakaoyi.uilib.rule;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\u001c\u0010&\u001a\u00020\u00072\u0012\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\fH\u0002J\u0016\u0010(\u001a\u00020\u00072\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0016\u0010*\u001a\u00020\u00072\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002JB\u0010+\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\f2\u0014\u0010,\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\f2\u0014\u0010-\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\fH\u0002J\u0016\u0010.\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\fH\u0007J\u0016\u0010/\u001a\u00020\u00072\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0010\u00100\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0006\u00101\u001a\u00020#J\u000e\u00102\u001a\u00020#2\u0006\u00103\u001a\u00020\u0018J\u001e\u00104\u001a\u00020#2\u0016\b\u0002\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020#\u0018\u000106J\b\u00107\u001a\u0004\u0018\u00010\u001aR(\u0010\t\u001a\u001c\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\f\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R#\u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\f0\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\f0\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0!X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "teaching", "", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V", "cacheMap", "", "", "", "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;", "", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "itemList", "Landroidx/lifecycle/MutableLiveData;", "getItemList", "()Landroidx/lifecycle/MutableLiveData;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "queryName", "", "ruleLevel", "Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;", "stepList", "Lcn/mucang/jiakaoyi/uilib/model/StepItem;", "getStepList", "getTeaching", "()Z", "tempList", "", "changeStep", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "checkParamValid", "list", "conditionLevel", "it", "conditionQuery", "createChangeList", "currentList", "sourceList", "getChangeList", "k3ConditionQuery", "loadItemList", "loadStep", "queryByName", Constant.PROTOCOL_WEBVIEW_NAME, "save", "callback", "Lkotlin/Function1;", "switchRuleLevel", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleSettingViewModel extends LoadingViewModel {
    private final ExamSiteModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final KeMu f9501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f9502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.lifecycle.z<List<StepItem>> f9503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.lifecycle.z<List<RuleConfig<Object>>> f9504g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<Integer, ? extends List<? extends RuleConfig<Object>>> f9505h;
    private String i;
    private RuleLevel j;
    private final List<StepItem> k;

    public /* synthetic */ RuleSettingViewModel(ExamSiteModel examSiteModel, KeMu keMu, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(examSiteModel, keMu, (i & 4) != 0 ? false : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean C(RuleConfig<Object> ruleConfig) {
        if (!this.f9502e) {
            return !K3StartVoice.f9515a.a(ruleConfig.ruleId);
        }
        K3TeachingRuleConfig k3TeachingRuleConfig = K3TeachingRuleConfig.f9517a;
        Step step = ruleConfig.step;
        kotlin.jvm.internal.r.d(step, "it.step");
        return k3TeachingRuleConfig.b(step, ruleConfig.ruleId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(Step step) {
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), w0.b(), null, new RuleSettingViewModel$loadItemList$1(this, step, null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void H(RuleSettingViewModel ruleSettingViewModel, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        ruleSettingViewModel.G(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean s(List<? extends RuleConfig<Object>> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            RuleConfig ruleConfig = (RuleConfig) it.next();
            if (ruleConfig instanceof StringValue) {
                if (n0.e((String) ((StringValue) ruleConfig).value)) {
                    cn.mucang.android.core.utils.u.h("设置不合法: " + ((Object) ruleConfig.step.stepName) + ' ' + ((Object) ruleConfig.name));
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置不合法 ", JSON.toJSON(ruleConfig)));
                    return false;
                }
            } else {
                if (ruleConfig instanceof RangeValue) {
                    RangeValue rangeValue = (RangeValue) ruleConfig;
                    T t = rangeValue.value;
                    kotlin.jvm.internal.r.d(t, "it.value");
                    if (((Number) t).intValue() >= 0) {
                        T t2 = rangeValue.value;
                        kotlin.jvm.internal.r.d(t2, "it.value");
                        if (((Number) t2).intValue() <= 10000) {
                            int i = rangeValue.value2;
                            if (i >= 0 && i <= 10000) {
                                T t3 = rangeValue.value;
                                kotlin.jvm.internal.r.d(t3, "it.value");
                                if (i <= ((Number) t3).intValue()) {
                                }
                            }
                            cn.mucang.android.core.utils.u.h("设置不合法: " + ((Object) ruleConfig.step.stepName) + ' ' + ((Object) ruleConfig.name));
                            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置不合法 ", JSON.toJSON(ruleConfig)));
                            return false;
                        }
                    }
                    cn.mucang.android.core.utils.u.h("设置不合法: " + ((Object) ruleConfig.step.stepName) + ' ' + ((Object) ruleConfig.name));
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置不合法 ", JSON.toJSON(ruleConfig)));
                    return false;
                }
                if (ruleConfig instanceof IntegerValue) {
                    int i2 = ruleConfig.ruleId;
                    int i3 = (i2 == 405113 || i2 == 405111) ? -500 : 0;
                    IntegerValue integerValue = (IntegerValue) ruleConfig;
                    T t4 = integerValue.value;
                    kotlin.jvm.internal.r.d(t4, "it.value");
                    if (((Number) t4).intValue() >= i3) {
                        T t5 = integerValue.value;
                        kotlin.jvm.internal.r.d(t5, "it.value");
                        if (((Number) t5).intValue() > 10000) {
                        }
                    }
                    cn.mucang.android.core.utils.u.h("设置不合法: " + ((Object) ruleConfig.step.stepName) + ' ' + ((Object) ruleConfig.name));
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置不合法 ", JSON.toJSON(ruleConfig)));
                    return false;
                }
                continue;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean t(RuleConfig<Object> ruleConfig) {
        return !AppUtils.h() || this.j.getType() == ruleConfig.level;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean u(RuleConfig<Object> ruleConfig) {
        String str = this.i;
        if (str == null || !n0.g(str)) {
            return true;
        }
        if (cn.mucang.android.core.utils.y.f(this.i) != null) {
            String strValueOf = String.valueOf(ruleConfig.ruleId);
            String str2 = this.i;
            kotlin.jvm.internal.r.c(str2);
            return StringsKt__StringsKt.G(strValueOf, str2, false, 2, null);
        }
        String str3 = ruleConfig.name;
        kotlin.jvm.internal.r.d(str3, "it.name");
        String str4 = this.i;
        kotlin.jvm.internal.r.c(str4);
        return StringsKt__StringsKt.G(str3, str4, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<RuleConfig<Object>> v(List<? extends RuleConfig<Object>> list, List<? extends RuleConfig<Object>> list2) {
        if (list == null || list2 == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            RuleConfig ruleConfig = (RuleConfig) it.next();
            map.put(Integer.valueOf(ruleConfig.ruleId), ruleConfig);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            RuleConfig ruleConfig2 = (RuleConfig) obj;
            RuleConfig ruleConfig3 = (RuleConfig) map.get(Integer.valueOf(ruleConfig2.ruleId));
            if (ruleConfig3 != null ? true ^ kotlin.jvm.internal.r.a(ruleConfig2, ruleConfig3) : true) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final androidx.lifecycle.z<List<StepItem>> A() {
        return this.f9503f;
    }

    /* JADX INFO: renamed from: B, reason: from getter */
    public final boolean getF9502e() {
        return this.f9502e;
    }

    public final void E() {
        this.f9505h = null;
        this.k.clear();
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), w0.b(), null, new RuleSettingViewModel$loadStep$1(this, null), 2, null);
    }

    public final void F(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        if (this.k.isEmpty()) {
            return;
        }
        for (StepItem stepItem : this.k) {
            if (stepItem.getIsSelect()) {
                this.i = name;
                D(stepItem.getStep());
                return;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public final void G(Function1<? super Boolean, kotlin.v> function1) {
        e(false, "保存中...");
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), w0.b(), null, new RuleSettingViewModel$save$1(this, function1, null), 2, null);
    }

    public final RuleLevel I() {
        if (this.k.isEmpty()) {
            return null;
        }
        for (StepItem stepItem : this.k) {
            if (stepItem.getIsSelect()) {
                RuleLevel ruleLevel = this.j;
                RuleLevel ruleLevel2 = RuleLevel.Normal;
                if (ruleLevel == ruleLevel2) {
                    ruleLevel2 = RuleLevel.High;
                }
                this.j = ruleLevel2;
                D(stepItem.getStep());
                return this.j;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public final void r(Step step) {
        kotlin.jvm.internal.r.e(step, "step");
        for (StepItem stepItem : this.k) {
            stepItem.e(stepItem.getStep().type == step.type);
        }
        this.f9503f.o(this.k);
        D(step);
    }

    public final List<RuleConfig<Object>> w() {
        Collection<? extends List<? extends RuleConfig<Object>>> collectionValues;
        ArrayList arrayList = new ArrayList();
        Map<Integer, ? extends List<? extends RuleConfig<Object>>> map = this.f9505h;
        if (map != null && (collectionValues = map.values()) != null) {
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.addAll((List) it.next());
            }
        }
        return v(arrayList, cn.mucang.jiakaoyi.uilib.m.b.l(this.c.examSiteId, this.f9501d));
    }

    /* JADX INFO: renamed from: x, reason: from getter */
    public final ExamSiteModel getC() {
        return this.c;
    }

    public final androidx.lifecycle.z<List<RuleConfig<Object>>> y() {
        return this.f9504g;
    }

    /* JADX INFO: renamed from: z, reason: from getter */
    public final KeMu getF9501d() {
        return this.f9501d;
    }

    public RuleSettingViewModel(ExamSiteModel examSite, KeMu keMu, boolean z) {
        kotlin.jvm.internal.r.e(examSite, "examSite");
        kotlin.jvm.internal.r.e(keMu, "keMu");
        this.c = examSite;
        this.f9501d = keMu;
        this.f9502e = z;
        this.f9503f = new androidx.lifecycle.z<>();
        this.f9504g = new androidx.lifecycle.z<>();
        this.j = RuleLevel.Normal;
        this.k = new ArrayList();
    }
}
