package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$deleteTeachItem$1", f = "K3TeachSettingViewModel.kt", l = {43}, m = "invokeSuspend")
final class K3TeachSettingViewModel$deleteTeachItem$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function0<kotlin.v> $callback;
    final /* synthetic */ TeachData $data;
    int label;
    final /* synthetic */ K3TeachSettingViewModel this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$deleteTeachItem$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$deleteTeachItem$1$1", f = "K3TeachSettingViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Function0<kotlin.v> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<kotlin.v> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, continuation);
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
            this.$callback.invoke();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3TeachSettingViewModel$deleteTeachItem$1(TeachData teachData, K3TeachSettingViewModel k3TeachSettingViewModel, Function0<kotlin.v> function0, Continuation<? super K3TeachSettingViewModel$deleteTeachItem$1> continuation) {
        super(2, continuation);
        this.$data = teachData;
        this.this$0 = k3TeachSettingViewModel;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3TeachSettingViewModel$deleteTeachItem$1(this.$data, this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3TeachSettingViewModel$deleteTeachItem$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        try {
            if (i == 0) {
                kotlin.k.b(obj);
                if (this.$data.id != null) {
                    K3TeachApi k3TeachApi = new K3TeachApi();
                    Long l = this.$data.id;
                    kotlin.jvm.internal.r.d(l, "data.id");
                    if (!k3TeachApi.n(l.longValue())) {
                        LoadingViewModel.d(this.this$0, false, null, 2, null);
                    }
                    return kotlin.v.f15822a;
                }
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, null);
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
            LoadingViewModel.h(this.this$0, false, null, 2, null);
        } catch (Exception e2) {
            e2.printStackTrace();
            LoadingViewModel.d(this.this$0, false, null, 2, null);
        }
        return kotlin.v.f15822a;
    }
}
