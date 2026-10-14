package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.siterule.InstructChangeViewModel$save$1", f = "InstructChangeViewModel.kt", l = {}, m = "invokeSuspend")
final class InstructChangeViewModel$save$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ List<StepAlias> $dataList;
    int label;
    final /* synthetic */ InstructChangeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InstructChangeViewModel$save$1(List<StepAlias> list, InstructChangeViewModel instructChangeViewModel, Continuation<? super InstructChangeViewModel$save$1> continuation) {
        super(2, continuation);
        this.$dataList = list;
        this.this$0 = instructChangeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new InstructChangeViewModel$save$1(this.$dataList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((InstructChangeViewModel$save$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        boolean zN;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            String jsonStr = JSON.toJSONString(this.$dataList);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("修改后的指令列表：", jsonStr));
            if (AppUtils.k()) {
                RobotSiteInstructApi robotSiteInstructApi = new RobotSiteInstructApi();
                kotlin.jvm.internal.r.d(jsonStr, "jsonStr");
                zN = robotSiteInstructApi.n(jsonStr, ExamSiteUtil.n(KeMu.K2, -1L), 1);
            } else {
                if (AppUtils.l()) {
                    str = "B2";
                } else {
                    str = AppUtils.i() ? "MOTO" : "C1";
                }
                SiteInstructApi siteInstructApi = new SiteInstructApi();
                kotlin.jvm.internal.r.d(jsonStr, "jsonStr");
                zN = siteInstructApi.n(1, str, jsonStr);
            }
            if (zN) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("指令修改成功");
                this.this$0.g(false, "保存成功!");
                this.this$0.k().l(kotlin.coroutines.jvm.internal.a.a(false));
                cn.mucang.android.jiakaoyi.engine.k.a.f(this.$dataList);
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("指令修改失败");
                this.this$0.c(false, "保存失败!");
            }
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("修改指令异常：", e2.getLocalizedMessage()));
            InstructChangeViewModel instructChangeViewModel = this.this$0;
            String message = e2.getMessage();
            if (message == null) {
                message = "服务异常";
            }
            instructChangeViewModel.c(false, message);
        }
        return kotlin.v.f15822a;
    }
}
