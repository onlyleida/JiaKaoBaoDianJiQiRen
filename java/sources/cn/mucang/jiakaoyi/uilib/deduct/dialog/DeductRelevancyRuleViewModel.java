package cn.mucang.jiakaoyi.uilib.deduct.dialog;

import androidx.lifecycle.z;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012R#\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "ruleList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;", "", "getRuleList", "()Landroidx/lifecycle/MutableLiveData;", "checkParamValid", "", "list", "load", "", "idStr", "", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "save", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductRelevancyRuleViewModel extends LoadingViewModel {
    private final z<List<RuleConfig<Object>>> c = new z<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean j(List<? extends RuleConfig<Object>> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            RuleConfig ruleConfig = (RuleConfig) it.next();
            if (ruleConfig instanceof StringValue) {
                if (n0.e((String) ((StringValue) ruleConfig).value)) {
                    if (MucangConfig.v()) {
                        u.h(r.m("设置不合法 ", Integer.valueOf(ruleConfig.ruleId)));
                    }
                    return false;
                }
            } else {
                if (ruleConfig instanceof RangeValue) {
                    RangeValue rangeValue = (RangeValue) ruleConfig;
                    T t = rangeValue.value;
                    r.d(t, "it.value");
                    if (((Number) t).intValue() >= 0) {
                        T t2 = rangeValue.value;
                        r.d(t2, "it.value");
                        if (((Number) t2).intValue() <= 10000) {
                            int i = rangeValue.value2;
                            if (i >= 0 && i <= 10000) {
                                T t3 = rangeValue.value;
                                r.d(t3, "it.value");
                                if (i <= ((Number) t3).intValue()) {
                                }
                            }
                            if (MucangConfig.v()) {
                                u.h(r.m("设置不合法 ", Integer.valueOf(ruleConfig.ruleId)));
                            }
                        }
                    }
                    return false;
                }
                if (ruleConfig instanceof IntegerValue) {
                    int i2 = ruleConfig.ruleId;
                    int i3 = (i2 == 405113 || i2 == 405111) ? -500 : 0;
                    IntegerValue integerValue = (IntegerValue) ruleConfig;
                    T t4 = integerValue.value;
                    r.d(t4, "it.value");
                    if (((Number) t4).intValue() >= i3) {
                        T t5 = integerValue.value;
                        r.d(t5, "it.value");
                        if (((Number) t5).intValue() > 10000) {
                        }
                    }
                    if (MucangConfig.v()) {
                        u.h(r.m("设置不合法 ", Integer.valueOf(ruleConfig.ruleId)));
                    }
                    return false;
                }
                continue;
            }
        }
        return true;
    }

    public final z<List<RuleConfig<Object>>> k() {
        return this.c;
    }

    public final void l(String idStr, KeMu keMu) {
        r.e(idStr, "idStr");
        r.e(keMu, "keMu");
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new DeductRelevancyRuleViewModel$load$1(StringsKt__StringsKt.p0(idStr, new String[]{"&"}, false, 0, 6, null), keMu, this, null), 3, null);
    }

    public final void m(KeMu keMu) {
        r.e(keMu, "keMu");
        e(false, "保存中...");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new DeductRelevancyRuleViewModel$save$1(this, keMu, null), 3, null);
    }
}
