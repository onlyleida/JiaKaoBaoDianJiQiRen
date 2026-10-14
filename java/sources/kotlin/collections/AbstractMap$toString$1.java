package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010&\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "it", "", "invoke"}, k = 3, mv = {1, 5, 1})
final class AbstractMap$toString$1<K, V> extends Lambda implements Function1<Map.Entry<? extends K, ? extends V>, CharSequence> {
    final /* synthetic */ AbstractMap this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractMap$toString$1(AbstractMap abstractMap) {
        super(1);
        this.this$0 = abstractMap;
    }

    @Override // kotlin.jvm.functions.Function1
    public final CharSequence invoke(Map.Entry<? extends K, ? extends V> it) {
        kotlin.jvm.internal.r.e(it, "it");
        return this.this$0.e(it);
    }
}
