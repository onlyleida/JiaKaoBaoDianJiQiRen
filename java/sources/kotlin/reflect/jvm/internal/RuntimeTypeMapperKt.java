package kotlin.reflect.jvm.internal;

import com.tencent.open.SocialOperation;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {SocialOperation.GAME_SIGNATURE, "", "Ljava/lang/reflect/Method;", "getSignature", "(Ljava/lang/reflect/Method;)Ljava/lang/String;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class RuntimeTypeMapperKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        kotlin.jvm.internal.r.d(parameterTypes, "parameterTypes");
        sb.append(ArraysKt___ArraysKt.N(parameterTypes, "", "(", ")", 0, null, new Function1<Class<?>, CharSequence>() { // from class: kotlin.reflect.jvm.internal.RuntimeTypeMapperKt$signature$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Class<?> it) {
                kotlin.jvm.internal.r.d(it, "it");
                return ReflectClassUtilKt.b(it);
            }
        }, 24, null));
        Class<?> returnType = method.getReturnType();
        kotlin.jvm.internal.r.d(returnType, "returnType");
        sb.append(ReflectClassUtilKt.b(returnType));
        return sb.toString();
    }
}
