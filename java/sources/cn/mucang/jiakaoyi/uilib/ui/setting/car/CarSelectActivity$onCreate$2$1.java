package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.manager.SignalValueManager;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$onCreate$2$1", f = "CarSelectActivity.kt", l = {130}, m = "invokeSuspend")
final class CarSelectActivity$onCreate$2$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ CarSelectActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$onCreate$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$onCreate$2$1$1", f = "CarSelectActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Ref$ObjectRef<Boolean> $result;
        int label;
        final /* synthetic */ CarSelectActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<Boolean> ref$ObjectRef, CarSelectActivity carSelectActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = ref$ObjectRef;
            this.this$0 = carSelectActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            Ref$ObjectRef<Boolean> ref$ObjectRef = this.$result;
            Boolean bool = ref$ObjectRef.element;
            if (bool != null) {
                CarSelectActivity carSelectActivity = this.this$0;
                bool.booleanValue();
                if (ref$ObjectRef.element.booleanValue()) {
                    CarSelectViewModel carSelectViewModel = carSelectActivity.f9907e;
                    if (carSelectViewModel == null) {
                        kotlin.jvm.internal.r.u("viewModel");
                        throw null;
                    }
                    carSelectViewModel.g(false, "车型默认信号更新成功！");
                } else {
                    CarSelectViewModel carSelectViewModel2 = carSelectActivity.f9907e;
                    if (carSelectViewModel2 == null) {
                        kotlin.jvm.internal.r.u("viewModel");
                        throw null;
                    }
                    carSelectViewModel2.c(false, "获取数据失败");
                }
            }
            this.this$0.i();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarSelectActivity$onCreate$2$1(CarSelectActivity carSelectActivity, Continuation<? super CarSelectActivity$onCreate$2$1> continuation) {
        super(2, continuation);
        this.this$0 = carSelectActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CarSelectActivity$onCreate$2$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CarSelectActivity$onCreate$2$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Type inference failed for: r7v10, types: [T, java.lang.Boolean] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            boolean zK = cn.mucang.android.jiakaoyi.signal.center.config.a.h().k();
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            if (!zK) {
                CarSelectViewModel carSelectViewModel = this.this$0.f9907e;
                if (carSelectViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                LoadingViewModel.f(carSelectViewModel, false, null, 2, null);
                ref$ObjectRef.element = kotlin.coroutines.jvm.internal.a.a(SignalValueManager.f9459a.b());
            }
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef, this.this$0, null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
