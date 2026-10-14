package cn.mucang.jiakaoyi.sundial.client;

import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.FrameCallback$capture$1", f = "FrameCallback.kt", l = {}, m = "invokeSuspend")
final class FrameCallback$capture$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ FrameCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FrameCallback$capture$1(FrameCallback frameCallback, Continuation<? super FrameCallback$capture$1> continuation) {
        super(2, continuation);
        this.this$0 = frameCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new FrameCallback$capture$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((FrameCallback$capture$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        String[] list = this.this$0.c.list();
        if (list != null) {
            FrameCallback frameCallback = this.this$0;
            for (String str : list) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Result.m139constructorimpl(kotlin.coroutines.jvm.internal.a.a(new File(frameCallback.c, str).delete()));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(kotlin.k.a(th));
                }
            }
        }
        cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "ai摄像头?:" + this.this$0.f9108a + ", 抓拍请求请求状态：" + this.this$0.f9109d.compareAndSet(false, true));
        return v.f15822a;
    }
}
