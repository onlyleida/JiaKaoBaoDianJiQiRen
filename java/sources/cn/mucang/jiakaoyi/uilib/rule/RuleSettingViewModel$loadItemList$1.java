package cn.mucang.jiakaoyi.uilib.rule;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import com.alibaba.fastjson.JSON;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingViewModel$loadItemList$1", f = "RuleSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class RuleSettingViewModel$loadItemList$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Step $step;
    int label;
    final /* synthetic */ RuleSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RuleSettingViewModel$loadItemList$1(RuleSettingViewModel ruleSettingViewModel, Step step, Continuation<? super RuleSettingViewModel$loadItemList$1> continuation) {
        super(2, continuation);
        this.this$0 = ruleSettingViewModel;
        this.$step = step;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new RuleSettingViewModel$loadItemList$1(this.this$0, this.$step, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((RuleSettingViewModel$loadItemList$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ArrayList arrayList;
        ArrayList arrayList2;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (this.this$0.f9505h == null) {
                List<RuleConfig> listL = cn.mucang.jiakaoyi.uilib.m.b.l(this.this$0.getC().examSiteId, this.this$0.getF9501d());
                if (listL == null) {
                    return kotlin.v.f15822a;
                }
                HashMap map = new HashMap();
                for (RuleConfig it : listL) {
                    if (it.step != null && !kotlin.text.t.B(String.valueOf(it.ruleId), Constants.VIA_SHARE_TYPE_MINI_PROGRAM, false, 2, null)) {
                        List list = (List) map.get(kotlin.coroutines.jvm.internal.a.d(it.step.type));
                        if (list == null) {
                            ArrayList arrayList3 = new ArrayList();
                            kotlin.jvm.internal.r.d(it, "it");
                            arrayList3.add(it);
                            map.put(kotlin.coroutines.jvm.internal.a.d(it.step.type), arrayList3);
                        } else {
                            kotlin.jvm.internal.r.d(it, "it");
                            list.add(it);
                        }
                    }
                }
                this.this$0.f9505h = map;
            }
            HashMap map2 = new HashMap();
            Iterator it2 = this.this$0.k.iterator();
            while (true) {
                boolean z = true;
                if (!it2.hasNext()) {
                    break;
                }
                StepItem stepItem = (StepItem) it2.next();
                Map map3 = this.this$0.f9505h;
                List list2 = map3 == null ? null : (List) map3.get(kotlin.coroutines.jvm.internal.a.d(stepItem.getStep().type));
                if (list2 == null) {
                    arrayList2 = null;
                } else {
                    RuleSettingViewModel ruleSettingViewModel = this.this$0;
                    arrayList2 = new ArrayList();
                    for (Object obj2 : list2) {
                        RuleConfig ruleConfig = (RuleConfig) obj2;
                        if (ruleSettingViewModel.u(ruleConfig) && ruleSettingViewModel.t(ruleConfig)) {
                            arrayList2.add(obj2);
                        }
                    }
                }
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                map2.put(kotlin.coroutines.jvm.internal.a.d(stepItem.getStep().type), arrayList2);
                if (arrayList2.isEmpty()) {
                    z = false;
                }
                stepItem.d(z);
            }
            List list3 = (List) map2.get(kotlin.coroutines.jvm.internal.a.d(this.$step.type));
            if (list3 == null) {
                arrayList = null;
            } else {
                RuleSettingViewModel ruleSettingViewModel2 = this.this$0;
                arrayList = new ArrayList();
                for (Object obj3 : list3) {
                    if (AppUtils.g() ? ruleSettingViewModel2.C((RuleConfig) obj3) : true) {
                        arrayList.add(obj3);
                    }
                }
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            this.this$0.y().l(arrayList);
            this.this$0.A().l(this.this$0.k);
            LoadingViewModel.h(this.this$0, false, null, 3, null);
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("RuleSettingViewModel : 加载规则设置设置出错：" + ((Object) JSON.toJSONString(this.this$0.getC())) + ',' + ((Object) e2.getLocalizedMessage()));
            LoadingViewModel.d(this.this$0, false, null, 3, null);
        }
        return kotlin.v.f15822a;
    }
}
