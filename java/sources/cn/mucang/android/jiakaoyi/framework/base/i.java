package cn.mucang.android.jiakaoyi.framework.base;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¨\u0006\u0003"}, d2 = {"getViewBindingType", "Ljava/lang/Class;", "clzParam", "framework_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class i {
    public static final Class<?> a(Class<?> clzParam) {
        r.e(clzParam, "clzParam");
        Type genericSuperclass = clzParam.getGenericSuperclass();
        while (!(genericSuperclass instanceof ParameterizedType)) {
            clzParam = clzParam.getSuperclass();
            r.d(clzParam, "clz.superclass");
            genericSuperclass = clzParam.getGenericSuperclass();
        }
        Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        r.d(actualTypeArguments, "genericType as Parameter…Type).actualTypeArguments");
        int i = 0;
        if (!(actualTypeArguments.length == 0)) {
            int length = actualTypeArguments.length;
            while (i < length) {
                Type type = actualTypeArguments[i];
                i++;
                if (type instanceof Class) {
                    Class<?> cls = (Class) type;
                    if (androidx.viewbinding.a.class.isAssignableFrom(cls)) {
                        return cls;
                    }
                }
            }
        }
        throw new IllegalStateException("找不到ViewBinding Type");
    }
}
