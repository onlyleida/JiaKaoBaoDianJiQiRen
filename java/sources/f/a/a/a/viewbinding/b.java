package f.a.a.a.viewbinding;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.library.widget.ViewBindingCreator;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class b<VB extends a> {
    private Class<?> a(Class<?> cls) {
        while (cls != null) {
            Type genericSuperclass = cls.getGenericSuperclass();
            cls = cls.getSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                if (actualTypeArguments.length >= 1) {
                    for (Type type : actualTypeArguments) {
                        if (type instanceof Class) {
                            Class<?> cls2 = (Class) type;
                            if (a.class.isAssignableFrom(cls2)) {
                                return cls2;
                            }
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        throw new IllegalStateException("找不到ViewBinding Type");
    }

    public VB b(Class<?> cls, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        try {
            return (VB) a(cls).getDeclaredMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflater, viewGroup, Boolean.FALSE);
        } catch (Exception e2) {
            t.e(ViewBindingCreator.TAG, "创建ViewBinding失败", e2);
            throw new IllegalStateException("创建ViewBinding失败", e2);
        }
    }
}
