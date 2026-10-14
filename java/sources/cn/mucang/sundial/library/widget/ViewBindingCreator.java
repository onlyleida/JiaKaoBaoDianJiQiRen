package cn.mucang.sundial.library.widget;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import cn.mucang.android.core.utils.t;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0011*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001\u0011B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J+\u0010\r\u001a\u00028\u00002\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcn/mucang/sundial/library/widget/ViewBindingCreator;", "Landroidx/viewbinding/a;", "VB", "", "Ljava/lang/Class;", "clzArg", "getViewBindingType", "(Ljava/lang/Class;)Ljava/lang/Class;", "clz", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/a;", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ViewBindingCreator<VB extends a> {
    public static final String TAG = "ViewBindingCreator";

    private final Class<?> getViewBindingType(Class<?> clzArg) {
        while (clzArg != null) {
            Type genericSuperclass = clzArg.getGenericSuperclass();
            clzArg = clzArg.getSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                r.d(actualTypeArguments, "actualTypeArguments");
                if (!(actualTypeArguments.length == 0)) {
                    for (Type type : actualTypeArguments) {
                        if (type instanceof Class) {
                            Class<?> cls = (Class) type;
                            if (a.class.isAssignableFrom(cls)) {
                                return cls;
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

    public final VB onCreateView(Class<?> clz, LayoutInflater inflater, ViewGroup container) {
        r.e(clz, "clz");
        r.e(inflater, "inflater");
        try {
            Object objInvoke = getViewBindingType(clz).getDeclaredMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, inflater, container, Boolean.FALSE);
            if (objInvoke != null) {
                return (VB) objInvoke;
            }
            throw new NullPointerException("null cannot be cast to non-null type VB");
        } catch (Exception e2) {
            t.e(TAG, "创建ViewBinding失败", e2);
            throw new IllegalStateException("创建ViewBinding失败", e2);
        }
    }
}
