package cn.mucang.jiakaoyi.sundial.client;

import android.content.Intent;
import cn.mucang.android.core.utils.u;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.CameraTestActivity$init$2$1", f = "CameraTestActivity.kt", l = {55}, m = "invokeSuspend")
final class CameraTestActivity$init$2$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ String $filePath;
    int label;
    final /* synthetic */ CameraTestActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraTestActivity$init$2$1(String str, CameraTestActivity cameraTestActivity, Continuation<? super CameraTestActivity$init$2$1> continuation) {
        super(2, continuation);
        this.$filePath = str;
        this.this$0 = cameraTestActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new CameraTestActivity$init$2$1(this.$filePath, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CameraTestActivity$init$2$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            CameraTestActivity$init$2$1$ok$1 cameraTestActivity$init$2$1$ok$1 = new CameraTestActivity$init$2$1$ok$1(this.$filePath, null);
            this.label = 1;
            obj = kotlinx.coroutines.f.c(coroutineDispatcherB, cameraTestActivity$init$2$1$ok$1, this);
            if (obj == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            u.h(r.m("下载成功", this.$filePath));
            Intent intentPutExtra = new Intent().putExtra("file_path", this.$filePath);
            r.d(intentPutExtra, "Intent().putExtra(Whats.…eKey.FILE_PATH, filePath)");
            this.this$0.setResult(-1, intentPutExtra);
        }
        this.this$0.finish();
        return v.f15822a;
    }
}
