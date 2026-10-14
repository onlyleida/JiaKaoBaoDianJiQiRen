package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.k3setting.order.LightApi;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightAddViewModel$save$1", f = "LightAddViewModel.kt", l = {}, m = "invokeSuspend")
final class LightAddViewModel$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ String $name;
    int label;
    final /* synthetic */ LightAddViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LightAddViewModel$save$1(LightAddViewModel lightAddViewModel, String str, Continuation<? super LightAddViewModel$save$1> continuation) {
        super(2, continuation);
        this.this$0 = lightAddViewModel;
        this.$name = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LightAddViewModel$save$1(this.this$0, this.$name, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LightAddViewModel$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean zM;
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        LightApi lightApi = new LightApi();
        try {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = "";
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = "";
            List<LightExamModel> list = (List) this.this$0.k().e();
            if (list != null) {
                for (LightExamModel lightExamModel : list) {
                    ref$ObjectRef.element = ((String) ref$ObjectRef.element) + lightExamModel.examProgramId + ',';
                    ref$ObjectRef2.element = ((String) ref$ObjectRef2.element) + lightExamModel + ',';
                }
            }
            if (this.this$0.c > 0) {
                ActionLog.f3431a.m("编辑灯光组合 assembleId:" + this.this$0.c + ",lights:" + ((String) ref$ObjectRef2.element));
                zM = lightApi.s(this.this$0.c, this.$name, (String) ref$ObjectRef.element);
            } else {
                ActionLog.f3431a.m("添加灯光组合 assembleId:" + this.this$0.c + ",lights:" + ((String) ref$ObjectRef2.element));
                zM = lightApi.m(this.$name, (String) ref$ObjectRef.element);
            }
            if (zM) {
                this.this$0.g(false, "保存成功");
            } else {
                this.this$0.c(false, "保存失败");
            }
        } catch (Exception unused) {
            this.this$0.c(false, "保存失败");
        }
        return v.f15822a;
    }
}
