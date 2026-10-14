package cn.mucang.android.jiakaoyi.mapcollect.manager.car;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.u;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarDataManagerActivity$loadCarData$2", f = "CarDataManagerActivity.kt", l = {115}, m = "invokeSuspend")
final class CarDataManagerActivity$loadCarData$2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ CarDataManagerActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarDataManagerActivity$loadCarData$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarDataManagerActivity$loadCarData$2$1", f = "CarDataManagerActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;
        final /* synthetic */ CarDataManagerActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CarDataManagerActivity carDataManagerActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = carDataManagerActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.this$0.g().pbCarData.setVisibility(8);
            this.this$0.z();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarDataManagerActivity$loadCarData$2(CarDataManagerActivity carDataManagerActivity, Continuation<? super CarDataManagerActivity$loadCarData$2> continuation) {
        super(2, continuation);
        this.this$0 = carDataManagerActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new CarDataManagerActivity$loadCarData$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CarDataManagerActivity$loadCarData$2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            try {
                this.this$0.b = new cn.mucang.android.jiakaoyi.mapcollect.collect.w0.a().s();
            } catch (Exception e2) {
                if (e2 instanceof ApiException) {
                    ApiResponse apiResponse = ((ApiException) e2).getApiResponse();
                    u.h(apiResponse == null ? null : apiResponse.getMessage());
                }
            }
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
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
        return v.f15822a;
    }
}
