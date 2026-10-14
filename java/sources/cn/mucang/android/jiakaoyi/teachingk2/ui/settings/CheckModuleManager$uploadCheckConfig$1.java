package cn.mucang.android.jiakaoyi.teachingk2.ui.settings;

import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleManager$uploadCheckConfig$1", f = "CheckModuleManager.kt", l = {}, m = "invokeSuspend")
final class CheckModuleManager$uploadCheckConfig$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;

    CheckModuleManager$uploadCheckConfig$1(Continuation<? super CheckModuleManager$uploadCheckConfig$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new CheckModuleManager$uploadCheckConfig$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CheckModuleManager$uploadCheckConfig$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.b(DataProviderRegister.f3433a, TeachSafeProvider.class, null, 2, null);
        if (teachSafeProvider != null) {
            teachSafeProvider.uploadCheckConfig();
        }
        return v.f15822a;
    }
}
