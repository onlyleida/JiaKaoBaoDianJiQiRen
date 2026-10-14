package cn.mucang.android.jiakaoyi.teachingk2.setting;

import cn.mucang.android.jiakaoyi.teachingk2.push.AliPushUrl;
import cn.mucang.android.jiakaoyi.teachingk2.push.PushApi;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$init$6$result$1", f = "CameraPushSettingActivity.kt", l = {}, m = "invokeSuspend")
final class CameraPushSettingActivity$init$6$result$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super Result<? extends AliPushUrl>>, Object> {
    int label;

    CameraPushSettingActivity$init$6$result$1(Continuation<? super CameraPushSettingActivity$init$6$result$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CameraPushSettingActivity$init$6$result$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super Result<? extends AliPushUrl>> continuation) {
        return ((CameraPushSettingActivity$init$6$result$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM139constructorimpl;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(new PushApi().n());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        return Result.m138boximpl(objM139constructorimpl);
    }
}
