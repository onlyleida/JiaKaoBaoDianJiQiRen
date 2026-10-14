package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "index", "", "element", "invoke", "(ILjava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
final class SequencesKt___SequencesKt$onEachIndexed$1<T> extends Lambda implements Function2<Integer, T, T> {
    final /* synthetic */ Function2 $action;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$onEachIndexed$1(Function2 function2) {
        super(2);
        this.$action = function2;
    }

    public final T invoke(int i, T t) {
        this.$action.invoke(Integer.valueOf(i), t);
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, Object obj) {
        return invoke(num.intValue(), obj);
    }
}
