package androidx.core.util;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "K", "", "it"}, k = 3, mv = {1, 5, 1}, xi = 48)
public final class LruCacheKt$lruCache$2<K, V> extends Lambda implements Function1<K, V> {
    public static final LruCacheKt$lruCache$2 INSTANCE = new LruCacheKt$lruCache$2();

    public LruCacheKt$lruCache$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final V invoke(K it) {
        r.e(it, "it");
        return null;
    }
}
