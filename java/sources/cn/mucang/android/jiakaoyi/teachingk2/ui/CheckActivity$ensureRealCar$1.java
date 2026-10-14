package cn.mucang.android.jiakaoyi.teachingk2.ui;

import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.CarSelectModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$ensureRealCar$1", f = "CheckActivity.kt", l = {}, m = "invokeSuspend")
final class CheckActivity$ensureRealCar$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;

    CheckActivity$ensureRealCar$1(Continuation<? super CheckActivity$ensureRealCar$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CheckActivity$ensureRealCar$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CheckActivity$ensureRealCar$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            Result.Companion companion = Result.INSTANCE;
            String strG = SelectCarManager.g();
            for (CarSelectModel carSelectModel : new GeneralBusinessApi().p()) {
                List<CarItemModel> configList = carSelectModel.getConfigList();
                if (configList != null) {
                    for (CarItemModel carItemModel : configList) {
                        if (kotlin.jvm.internal.r.a(strG, String.valueOf(carItemModel.getCode()))) {
                            final LocalCarModel localCarModel = new LocalCarModel();
                            localCarModel.setModelName(carSelectModel.getModelName());
                            localCarModel.setConfig(new CarItemModel());
                            CarItemModel config = localCarModel.getConfig();
                            if (config != null) {
                                config.setCode(carItemModel.getUniversalModelNum());
                            }
                            CarItemModel config2 = localCarModel.getConfig();
                            if (config2 != null) {
                                config2.setUniversalModelNum(carItemModel.getUniversalModelNum());
                            }
                            CarItemModel config3 = localCarModel.getConfig();
                            if (config3 != null) {
                                config3.setUniversalModelName(carItemModel.getUniversalModelName());
                            }
                            CarItemModel config4 = localCarModel.getConfig();
                            if (config4 != null) {
                                config4.setModelType(carItemModel.getModelType());
                            }
                            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.e
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RealCarSelectManager.c(localCarModel);
                                }
                            });
                            return kotlin.v.f15822a;
                        }
                    }
                }
            }
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
        return kotlin.v.f15822a;
    }
}
