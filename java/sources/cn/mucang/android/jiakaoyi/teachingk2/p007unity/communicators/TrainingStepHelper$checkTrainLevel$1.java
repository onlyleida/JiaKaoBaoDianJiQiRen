package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.AppDataInLogin;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TrainStepLevel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainLevelModel;
import cn.mucang.android.jiakaoyi.unity.c.d;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.TrainingStepHelper$checkTrainLevel$1", f = "TrainingStepHelper.kt", l = {l.Receive_GEAR_DATA, 174}, m = "invokeSuspend")
final class TrainingStepHelper$checkTrainLevel$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Step $step;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrainingStepHelper$checkTrainLevel$1(Step step, Continuation<? super TrainingStepHelper$checkTrainLevel$1> continuation) {
        super(2, continuation);
        this.$step = step;
    }

    private static final String invokeSuspend$getDesc(int i) {
        if (i == 10) {
            String strA = k0.a(R.string.teachbase_strengthen_point_practice);
            r.d(strA, "getString(R.string.teach…trengthen_point_practice)");
            return strA;
        }
        if (i == 20) {
            String strA2 = k0.a(R.string.teachbase_key_points_strengthened);
            r.d(strA2, "getString(R.string.teach…_key_points_strengthened)");
            return strA2;
        }
        if (i != 30) {
            return "";
        }
        String strA3 = k0.a(R.string.teachbase_self_training);
        r.d(strA3, "getString(R.string.teachbase_self_training)");
        return strA3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TrainingStepHelper$checkTrainLevel$1(this.$step, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TrainingStepHelper$checkTrainLevel$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        String str2;
        Object objD = b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str3 = (String) this.L$0;
                k.b(obj);
                str2 = str3;
            }
            RobotTips.Y(str2, null, null, -1, null, 22, null);
            return v.f15822a;
        }
        k.b(obj);
        CoroutineDispatcher coroutineDispatcherB = w0.b();
        TrainingStepHelper$checkTrainLevel$1$recommend$1 trainingStepHelper$checkTrainLevel$1$recommend$1 = new TrainingStepHelper$checkTrainLevel$1$recommend$1(this.$step, null);
        this.label = 1;
        obj = f.c(coroutineDispatcherB, trainingStepHelper$checkTrainLevel$1$recommend$1, this);
        if (obj == objD) {
            return objD;
        }
        TrainStepLevel.StepLevel stepLevel = (TrainStepLevel.StepLevel) obj;
        if ((stepLevel != null ? a.d(stepLevel.getStep()) : null) != null) {
            Map<String, String> mapB = TeachConfig.b();
            if (stepLevel.getLevel() != l0.a() && mapB.containsKey(String.valueOf(stepLevel.getLevel()))) {
                AppDataInLogin.f7224a.e(this.$step.name(), a.a(true));
                String str4 = mapB.get(String.valueOf(stepLevel.getLevel()));
                if (TextUtils.isEmpty(str4)) {
                    str = "";
                } else {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                    String strA = k0.a(R.string.teachbase_is_mode);
                    r.d(strA, "getString(R.string.teachbase_is_mode)");
                    str = String.format(strA, Arrays.copyOf(new Object[]{str4}, 1));
                    r.d(str, "java.lang.String.format(format, *args)");
                }
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                String strA2 = k0.a(R.string.teachbase_auto_switch_for_you);
                r.d(strA2, "getString(R.string.teachbase_auto_switch_for_you)");
                String str5 = String.format(strA2, Arrays.copyOf(new Object[]{this.$step.stepName, invokeSuspend$getDesc(stepLevel.getLevel()), str}, 3));
                r.d(str5, "java.lang.String.format(format, *args)");
                l0.d(stepLevel.getLevel());
                TrainLevelModel trainLevelModel = new TrainLevelModel();
                trainLevelModel.level = String.valueOf(stepLevel.getLevel());
                trainLevelModel.list = mapB;
                v vVar = v.f15822a;
                d.d(30001, trainLevelModel, true);
                this.L$0 = str5;
                this.label = 2;
                if (s0.a(1000L, this) == objD) {
                    return objD;
                }
                str2 = str5;
                RobotTips.Y(str2, null, null, -1, null, 22, null);
            }
        }
        return v.f15822a;
    }
}
