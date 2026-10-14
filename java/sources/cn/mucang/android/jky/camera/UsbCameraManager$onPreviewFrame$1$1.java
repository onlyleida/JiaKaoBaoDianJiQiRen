package cn.mucang.android.jky.camera;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jky.camera.UsbCameraManager$onPreviewFrame$1$1", f = "UsbCameraManager.kt", l = {}, m = "invokeSuspend")
final class UsbCameraManager$onPreviewFrame$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ byte[] $data;
    final /* synthetic */ CameraIntent $intent;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UsbCameraManager$onPreviewFrame$1$1(CameraIntent cameraIntent, byte[] bArr, Continuation<? super UsbCameraManager$onPreviewFrame$1$1> continuation) {
        super(2, continuation);
        this.$intent = cameraIntent;
        this.$data = bArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new UsbCameraManager$onPreviewFrame$1$1(this.$intent, this.$data, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((UsbCameraManager$onPreviewFrame$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        List list = (List) UsbCameraManager.listeners.get(this.$intent);
        if (list != null) {
            byte[] bArr = this.$data;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((UsbCameraManager.UsbCameraListener) it.next()).onPreviewFrame(bArr);
            }
        }
        return kotlin.v.f15822a;
    }
}
