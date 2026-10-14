package cn.mucang.jiakaoyi.uilib.rule;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingViewModel$save$1", f = "RuleSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class RuleSettingViewModel$save$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function1<Boolean, kotlin.v> $callback;
    int label;
    final /* synthetic */ RuleSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RuleSettingViewModel$save$1(RuleSettingViewModel ruleSettingViewModel, Function1<? super Boolean, kotlin.v> function1, Continuation<? super RuleSettingViewModel$save$1> continuation) {
        super(2, continuation);
        this.this$0 = ruleSettingViewModel;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new RuleSettingViewModel$save$1(this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((RuleSettingViewModel$save$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ArrayList<RuleConfigEntity> arrayList;
        Collection collectionValues;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (this.this$0.f9505h == null) {
            this.this$0.c(false, "源数据null,保存失败");
            return kotlin.v.f15822a;
        }
        ArrayList arrayList2 = new ArrayList();
        Map map = this.this$0.f9505h;
        if (map != null && (collectionValues = map.values()) != null) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList2.addAll((List) it.next());
            }
        }
        if (!this.this$0.s(arrayList2)) {
            this.this$0.c(false, "参数设置不合法");
            return kotlin.v.f15822a;
        }
        List<RuleConfig> listL = cn.mucang.jiakaoyi.uilib.m.b.l(this.this$0.getC().examSiteId, this.this$0.getF9501d());
        if (listL == null || listL.isEmpty()) {
            this.this$0.c(false, "查询本地数据为null, 保存失败");
            return kotlin.v.f15822a;
        }
        List listV = this.this$0.v(arrayList2, listL);
        if (listV == null) {
            arrayList = null;
        } else {
            ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(listV, 10));
            Iterator it2 = listV.iterator();
            while (it2.hasNext()) {
                arrayList3.add(cn.mucang.jiakaoyi.uilib.f.c((RuleConfig) it2.next()));
            }
            arrayList = arrayList3;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            this.this$0.c(false, "没有修改过数据");
            return kotlin.v.f15822a;
        }
        RuleSettingViewModel ruleSettingViewModel = this.this$0;
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((RuleConfigEntity) it3.next()).setExamSiteId(ruleSettingViewModel.getC().examSiteId);
        }
        try {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("syncBatch rule ： ", JSON.toJSON(arrayList)));
            if (RuleSyncManager.f9550a.d(arrayList, this.this$0.getF9501d())) {
                RuleSettingViewModel ruleSettingViewModel2 = this.this$0;
                for (RuleConfigEntity ruleConfigEntity : arrayList) {
                    cn.mucang.jiakaoyi.uilib.m.b.w(ruleConfigEntity, ruleSettingViewModel2.getC().examSiteId);
                    if (ruleConfigEntity.getValueType() == 2 && n0.g(ruleConfigEntity.getValue())) {
                        TtsManager.f3517a.E(ruleConfigEntity.getValue());
                    }
                }
                ActionLog.f3431a.n(String.valueOf(ExamSiteUtil.e(0L)), arrayList);
                this.this$0.g(false, "保存成功");
                Function1<Boolean, kotlin.v> function1 = this.$callback;
                if (function1 != null) {
                    function1.invoke(kotlin.coroutines.jvm.internal.a.a(true));
                }
            } else {
                this.this$0.g(false, "上传保存数据失败");
                Function1<Boolean, kotlin.v> function2 = this.$callback;
                if (function2 != null) {
                    function2.invoke(kotlin.coroutines.jvm.internal.a.a(false));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Function1<Boolean, kotlin.v> function3 = this.$callback;
            if (function3 != null) {
                function3.invoke(kotlin.coroutines.jvm.internal.a.a(false));
            }
        }
        return kotlin.v.f15822a;
    }
}
