package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import androidx.lifecycle.k0;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getDeviceInfo", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/db/entity/DeviceInfo;", "deviceInfoData", "Landroidx/lifecycle/i0;", "getDeviceInfoData", "()Landroidx/lifecycle/i0;", "setDeviceInfoData", "(Landroidx/lifecycle/i0;)V", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class RegisterViewModel extends a {
    private i0<DeviceInfo> deviceInfoData;

    /* JADX INFO: renamed from: cn.mucang.sundial.library.viewmodel.RegisterViewModel$getDeviceInfo$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "cn.mucang.sundial.library.viewmodel.RegisterViewModel$getDeviceInfo$1", f = "RegisterViewModel.kt", l = {22}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super v>, Object> {
        int label;

        AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> completion) {
            r.e(completion, "completion");
            return RegisterViewModel.this.new AnonymousClass1(completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                CoroutineDispatcher coroutineDispatcherB = w0.b();
                RegisterViewModel$getDeviceInfo$1$deviceInfo$1 registerViewModel$getDeviceInfo$1$deviceInfo$1 = new RegisterViewModel$getDeviceInfo$1$deviceInfo$1(null);
                this.label = 1;
                obj = f.c(coroutineDispatcherB, registerViewModel$getDeviceInfo$1$deviceInfo$1, this);
                if (obj == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            RegisterViewModel.this.getDeviceInfoData().o((DeviceInfo) obj);
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegisterViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.deviceInfoData = new i0<>();
    }

    public final void getDeviceInfo() {
        g.b(k0.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final i0<DeviceInfo> getDeviceInfoData() {
        return this.deviceInfoData;
    }

    public final void setDeviceInfoData(i0<DeviceInfo> i0Var) {
        r.e(i0Var, "<set-?>");
        this.deviceInfoData = i0Var;
    }
}
