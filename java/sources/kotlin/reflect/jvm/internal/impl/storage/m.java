package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public interface m {
    <K, V> a<K, V> a();

    <T> h<T> b(Function0<? extends T> function0, T t);

    <T> h<T> c(Function0<? extends T> function0);

    <T> T d(Function0<? extends T> function0);

    <T> i<T> e(Function0<? extends T> function0);

    <T> h<T> f(Function0<? extends T> function0, Function1<? super Boolean, ? extends T> function1, Function1<? super T, v> function2);

    <K, V> g<K, V> g(Function1<? super K, ? extends V> function1);

    <K, V> b<K, V> h();

    <K, V> f<K, V> i(Function1<? super K, ? extends V> function1);
}
