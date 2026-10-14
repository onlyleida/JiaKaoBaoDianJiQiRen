package cn.mucang.jiakaoyi.sundial.client;

import cn.mucang.jiakaoyi.sundial.utils.MatUtils;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.FrameCallback$onFrame$1", f = "FrameCallback.kt", l = {}, m = "invokeSuspend")
final class FrameCallback$onFrame$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ byte[] $data;
    final /* synthetic */ int $height;
    final /* synthetic */ int $width;
    int label;
    final /* synthetic */ FrameCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FrameCallback$onFrame$1(FrameCallback frameCallback, byte[] bArr, int i, int i2, Continuation<? super FrameCallback$onFrame$1> continuation) {
        super(2, continuation);
        this.this$0 = frameCallback;
        this.$data = bArr;
        this.$width = i;
        this.$height = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new FrameCallback$onFrame$1(this.this$0, this.$data, this.$width, this.$height, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((FrameCallback$onFrame$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        File file = new File(this.this$0.c, System.currentTimeMillis() + "sundial_temp.jpg");
        MatUtils.f9098a.b(file, this.$data, this.$width, this.$height, this.this$0.f9108a);
        if (file.exists()) {
            this.this$0.f9109d.compareAndSet(true, false);
            this.this$0.b.invoke(file);
        }
        this.this$0.f9110e = false;
        return v.f15822a;
    }
}
