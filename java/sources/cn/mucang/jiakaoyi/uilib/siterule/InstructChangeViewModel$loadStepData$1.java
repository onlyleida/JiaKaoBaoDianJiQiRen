package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.siterule.InstructChangeViewModel$loadStepData$1", f = "InstructChangeViewModel.kt", l = {}, m = "invokeSuspend")
final class InstructChangeViewModel$loadStepData$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ InstructChangeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InstructChangeViewModel$loadStepData$1(InstructChangeViewModel instructChangeViewModel, Continuation<? super InstructChangeViewModel$loadStepData$1> continuation) {
        super(2, continuation);
        this.this$0 = instructChangeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new InstructChangeViewModel$loadStepData$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((InstructChangeViewModel$loadStepData$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        InstructResult instructResultM;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            ArrayList arrayList = new ArrayList();
            if (AppUtils.k()) {
                instructResultM = new RobotSiteInstructApi().m(ExamSiteUtil.n(KeMu.K2, -1L), 1);
            } else {
                if (AppUtils.l()) {
                    str = "B2";
                } else {
                    str = AppUtils.i() ? "MOTO" : "C1";
                }
                instructResultM = new SiteInstructApi().m(1, str);
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("加载的指令名称列表：", JSON.toJSONString(instructResultM)));
            if (instructResultM != null && n0.g(instructResultM.getContent())) {
                List array = JSON.parseArray(instructResultM.getContent(), StepAlias.class);
                kotlin.jvm.internal.r.d(array, "parseArray(\n            …                        )");
                arrayList.addAll(array);
            }
            this.this$0.j().l(arrayList);
            LoadingViewModel.h(this.this$0, false, null, 3, null);
        } catch (Exception unused) {
            LoadingViewModel.d(this.this$0, false, null, 3, null);
        }
        return kotlin.v.f15822a;
    }
}
