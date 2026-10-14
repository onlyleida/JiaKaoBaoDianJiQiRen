package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips$exeOnStarted$1", f = "RobotTips.kt", l = {621}, m = "invokeSuspend")
final class RobotTips$exeOnStarted$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function3<TipsArguments, t, t, v> $action;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RobotTips$exeOnStarted$1(Function3<? super TipsArguments, ? super t, ? super t, v> function3, Continuation<? super RobotTips$exeOnStarted$1> continuation) {
        super(2, continuation);
        this.$action = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        RobotTips$exeOnStarted$1 robotTips$exeOnStarted$1 = new RobotTips$exeOnStarted$1(this.$action, continuation);
        robotTips$exeOnStarted$1.L$0 = obj;
        return robotTips$exeOnStarted$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RobotTips$exeOnStarted$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        i0 i0Var;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            i0Var = (i0) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i0Var = (i0) this.L$0;
            kotlin.k.b(obj);
        }
        while (j0.g(i0Var) && (RobotTips.c == null || RobotTips.f7186e == null || RobotTips.f7187f == null)) {
            this.L$0 = i0Var;
            this.label = 1;
            if (s0.a(1000L, this) == objD) {
                return objD;
            }
        }
        Function3<TipsArguments, t, t, v> function3 = this.$action;
        TipsArguments tipsArguments = RobotTips.c;
        kotlin.jvm.internal.r.c(tipsArguments);
        t tVar = RobotTips.f7186e;
        kotlin.jvm.internal.r.c(tVar);
        t tVar2 = RobotTips.f7187f;
        kotlin.jvm.internal.r.c(tVar2);
        function3.invoke(tipsArguments, tVar, tVar2);
        return v.f15822a;
    }
}
