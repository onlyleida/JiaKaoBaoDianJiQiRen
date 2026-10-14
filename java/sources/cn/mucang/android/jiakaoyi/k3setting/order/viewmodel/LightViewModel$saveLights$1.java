package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.k3setting.order.LightApi;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel$saveLights$1", f = "LightViewModel.kt", l = {}, m = "invokeSuspend")
final class LightViewModel$saveLights$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ b<Boolean> $callback;
    int label;
    final /* synthetic */ LightViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LightViewModel$saveLights$1(LightViewModel lightViewModel, b<Boolean> bVar, Continuation<? super LightViewModel$saveLights$1> continuation) {
        super(2, continuation);
        this.this$0 = lightViewModel;
        this.$callback = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LightViewModel$saveLights$1(this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LightViewModel$saveLights$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            LightApi lightApi = new LightApi();
            StringBuilder sb = new StringBuilder();
            List list = (List) this.this$0.p().e();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    sb.append(String.valueOf(((LightExamModel) it.next()).examProgramId));
                    sb.append(",");
                }
            }
            String string = sb.toString();
            r.d(string, "ids.toString()");
            if (lightApi.B(string)) {
                f.o(r.m("保存灯光指令成功 ", sb));
                this.$callback.callback(a.a(true));
                this.this$0.g(false, "保存成功");
            } else {
                ActionLog.f3431a.m("保存灯光指令顺序失败");
                this.this$0.c(false, "保存失败");
            }
        } catch (Exception unused) {
            ActionLog.f3431a.m("保存灯光指令顺序失败");
            this.this$0.c(false, "保存失败");
        }
        return v.f15822a;
    }
}
