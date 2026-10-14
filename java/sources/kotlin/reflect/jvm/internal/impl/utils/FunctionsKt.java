package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class FunctionsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function1<Object, Boolean> f15745a;
    private static final Function3<Object, Object, Object, v> b;

    static {
        FunctionsKt$IDENTITY$1 functionsKt$IDENTITY$1 = new Function1<Object, Object>() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$IDENTITY$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return obj;
            }
        };
        f15745a = new Function1<Object, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$ALWAYS_TRUE$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                return Boolean.TRUE;
            }
        };
        FunctionsKt$ALWAYS_NULL$1 functionsKt$ALWAYS_NULL$1 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$ALWAYS_NULL$1
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(Object obj) {
                return null;
            }
        };
        FunctionsKt$DO_NOTHING$1 functionsKt$DO_NOTHING$1 = new Function1<Object, v>() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$DO_NOTHING$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Object obj) {
                invoke2(obj);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object obj) {
            }
        };
        FunctionsKt$DO_NOTHING_2$1 functionsKt$DO_NOTHING_2$1 = new Function2<Object, Object, v>() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$DO_NOTHING_2$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2) {
                invoke2(obj, obj2);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object obj, Object obj2) {
            }
        };
        b = new Function3<Object, Object, Object, v>() { // from class: kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$DO_NOTHING_3$1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2, Object obj3) {
                invoke2(obj, obj2, obj3);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Object obj, Object obj2, Object obj3) {
            }
        };
    }

    public static final <T> Function1<T, Boolean> a() {
        return (Function1<T, Boolean>) f15745a;
    }

    public static final Function3<Object, Object, Object, v> b() {
        return b;
    }
}
