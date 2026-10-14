package cn.mucang.android.jiakaoyi.teachingk2.setting;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.setting.FaceSettingActivity$faceCheckListener$1$onCheckFace$1", f = "FaceSettingActivity.kt", l = {}, m = "invokeSuspend")
final class FaceSettingActivity$faceCheckListener$1$onCheckFace$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ FaceSettingActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceSettingActivity$faceCheckListener$1$onCheckFace$1(FaceSettingActivity faceSettingActivity, Continuation<? super FaceSettingActivity$faceCheckListener$1$onCheckFace$1> continuation) {
        super(2, continuation);
        this.this$0 = faceSettingActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new FaceSettingActivity$faceCheckListener$1$onCheckFace$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FaceSettingActivity$faceCheckListener$1$onCheckFace$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        this.this$0.g().tvFps.setText(kotlin.jvm.internal.r.m("fps：", kotlin.coroutines.jvm.internal.a.d(this.this$0.f7915e)));
        return kotlin.v.f15822a;
    }
}
