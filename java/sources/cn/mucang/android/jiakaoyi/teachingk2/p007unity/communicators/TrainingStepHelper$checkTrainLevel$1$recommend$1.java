package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TrainStepLevel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.UserDataApi;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.TrainingStepHelper$checkTrainLevel$1$recommend$1", f = "TrainingStepHelper.kt", l = {}, m = "invokeSuspend")
final class TrainingStepHelper$checkTrainLevel$1$recommend$1 extends SuspendLambda implements Function2<i0, Continuation<? super TrainStepLevel.StepLevel>, Object> {
    final /* synthetic */ Step $step;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrainingStepHelper$checkTrainLevel$1$recommend$1(Step step, Continuation<? super TrainingStepHelper$checkTrainLevel$1$recommend$1> continuation) {
        super(2, continuation);
        this.$step = step;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TrainingStepHelper$checkTrainLevel$1$recommend$1(this.$step, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super TrainStepLevel.StepLevel> continuation) {
        return ((TrainingStepHelper$checkTrainLevel$1$recommend$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM139constructorimpl;
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        Step step = this.$step;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(new UserDataApi().r(step.type));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        TrainStepLevel trainStepLevel = (TrainStepLevel) objM139constructorimpl;
        if (trainStepLevel == null) {
            return null;
        }
        return trainStepLevel.getValue();
    }
}
