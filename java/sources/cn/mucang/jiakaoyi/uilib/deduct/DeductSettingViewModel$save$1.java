package cn.mucang.jiakaoyi.uilib.deduct;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
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
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingViewModel$save$1", f = "DeductSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class DeductSettingViewModel$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function1<Boolean, kotlin.v> $callback;
    int label;
    final /* synthetic */ DeductSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DeductSettingViewModel$save$1(DeductSettingViewModel deductSettingViewModel, Function1<? super Boolean, kotlin.v> function1, Continuation<? super DeductSettingViewModel$save$1> continuation) {
        super(2, continuation);
        this.this$0 = deductSettingViewModel;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new DeductSettingViewModel$save$1(this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((DeductSettingViewModel$save$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Collection collectionValues;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        List<DeductEntity> listH = cn.mucang.jiakaoyi.uilib.m.a.h(this.this$0.getC().examSiteId, this.this$0.getF9229d());
        if (listH == null || this.this$0.f9232g == null) {
            this.this$0.c(false, "本地没有查询到扣分数据");
            return kotlin.v.f15822a;
        }
        ArrayList<DeductEntity> arrayList = new ArrayList();
        Map map = this.this$0.f9232g;
        if (map != null && (collectionValues = map.values()) != null) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.addAll((List) it.next());
            }
        }
        for (DeductEntity deductEntity : arrayList) {
            if (deductEntity.getDeductScore() != 5 && deductEntity.getDeductScore() != 10 && deductEntity.getDeductScore() != 100) {
                cn.mucang.android.core.utils.u.h("分值只能设置为5，10，100");
                this.this$0.c(false, "保存失败");
                return kotlin.v.f15822a;
            }
        }
        List<? extends DeductEntity> listS = this.this$0.s(arrayList, listH);
        if (listS != null) {
            DeductSettingViewModel deductSettingViewModel = this.this$0;
            Iterator<T> it2 = listS.iterator();
            while (it2.hasNext()) {
                ((DeductEntity) it2.next()).setExamSiteId(deductSettingViewModel.getC().examSiteId);
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("syncBatch deduct ： ", JSON.toJSON(listS)));
        if (DeductSyncManager.f9236a.d(listS, this.this$0.getF9229d())) {
            if (listS != null) {
                DeductSettingViewModel deductSettingViewModel2 = this.this$0;
                for (DeductEntity deductEntity2 : listS) {
                    cn.mucang.jiakaoyi.uilib.m.a.u(deductEntity2, deductSettingViewModel2.getC().examSiteId);
                    Deduct deductTransform = deductEntity2.transform();
                    if (deductTransform != null) {
                        TtsManager ttsManager = TtsManager.f3517a;
                        ttsManager.E(deductTransform.name);
                        ttsManager.E(deductTransform.desc);
                    }
                }
            }
            ActionLog.f3431a.l(String.valueOf(ExamSiteUtil.e(0L)), listS);
            this.this$0.g(false, "保存成功");
            Function1<Boolean, kotlin.v> function1 = this.$callback;
            if (function1 != null) {
                function1.invoke(kotlin.coroutines.jvm.internal.a.a(true));
            }
        } else {
            this.this$0.g(false, "上传扣分到服务器失败");
            Function1<Boolean, kotlin.v> function2 = this.$callback;
            if (function2 != null) {
                function2.invoke(kotlin.coroutines.jvm.internal.a.a(false));
            }
        }
        return kotlin.v.f15822a;
    }
}
