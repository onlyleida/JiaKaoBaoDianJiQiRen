package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [R, E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "t1", "t2", "Lkotlin/Pair;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class ChannelsKt__Channels_commonKt$zip$1<E, R> extends Lambda implements Function2<E, R, Pair<? extends E, ? extends R>> {
    public static final ChannelsKt__Channels_commonKt$zip$1 INSTANCE = new ChannelsKt__Channels_commonKt$zip$1();

    ChannelsKt__Channels_commonKt$zip$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Pair<E, R> invoke(E e2, R r) {
        return kotlin.l.a(e2, r);
    }
}
