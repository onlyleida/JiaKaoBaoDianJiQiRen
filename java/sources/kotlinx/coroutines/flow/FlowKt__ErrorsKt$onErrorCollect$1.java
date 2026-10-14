package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "invoke", "(Ljava/lang/Throwable;)Z", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class FlowKt__ErrorsKt$onErrorCollect$1 extends Lambda implements Function1<Throwable, Boolean> {
    public static final FlowKt__ErrorsKt$onErrorCollect$1 INSTANCE = new FlowKt__ErrorsKt$onErrorCollect$1();

    FlowKt__ErrorsKt$onErrorCollect$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Throwable th) {
        return Boolean.valueOf(invoke2(th));
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final boolean invoke2(Throwable th) {
        return true;
    }
}
