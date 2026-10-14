package com.drakeet.multitype;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\b\u001a\u0014\u0012\u0010\b\u0001\u0012\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u00050\u0004\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "position", "item", "Ljava/lang/Class;", "Lcom/drakeet/multitype/c;", "invoke", "(ILjava/lang/Object;)Ljava/lang/Class;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class OneToManyEndpoint$withKotlinClassLinker$1<T> extends Lambda implements Function2<Integer, T, Class<? extends c<T, ?>>> {
    final /* synthetic */ d $classLinker;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OneToManyEndpoint$withKotlinClassLinker$1(d dVar) {
        super(2);
        this.$classLinker = dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, Object obj) {
        return invoke(num.intValue(), obj);
    }

    public final Class<? extends c<T, ?>> invoke(int i, T t) {
        return kotlin.jvm.a.b(this.$classLinker.a(i, t));
    }
}
