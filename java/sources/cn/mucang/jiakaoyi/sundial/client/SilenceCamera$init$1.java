package cn.mucang.jiakaoyi.sundial.client;

import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Ljava/io/File;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class SilenceCamera$init$1 extends Lambda implements Function1<File, v> {
    final /* synthetic */ SilenceCamera this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SilenceCamera$init$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SilenceCamera$init$1$1", f = "SilenceCamera.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ File $it;
        int label;
        final /* synthetic */ SilenceCamera this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SilenceCamera silenceCamera, File file, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$it = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$it, continuation);
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
            SourceVideoStream sourceVideoStream = this.this$0.c;
            if (sourceVideoStream != null) {
                sourceVideoStream.stop();
            }
            SilenceCamera.a aVar = this.this$0.b;
            if (aVar != null) {
                aVar.a(this.$it);
            }
            return v.f15822a;
        }
    }

    SilenceCamera$init$1(SilenceCamera silenceCamera) {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(File file) {
        invoke2(file);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(File it) {
        r.e(it, "it");
        kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new AnonymousClass1(this.this$0, it, null), 3, null);
    }
}
