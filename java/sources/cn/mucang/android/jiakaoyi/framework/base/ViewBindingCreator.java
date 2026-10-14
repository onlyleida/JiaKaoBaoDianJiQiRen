package cn.mucang.android.jiakaoyi.framework.base;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J)\u0010\u0005\u001a\u00028\u00002\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingCreator;", "VB", "Landroidx/viewbinding/ViewBinding;", "", "()V", "onCreateView", "clz", "Ljava/lang/Class;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ViewBindingCreator<VB extends androidx.viewbinding.a> {
    public final VB a(Class<?> clz, LayoutInflater inflater, ViewGroup viewGroup) {
        r.e(clz, "clz");
        r.e(inflater, "inflater");
        try {
            Method declaredMethod = i.a(clz).getDeclaredMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE);
            r.d(declaredMethod, "viewBindingType\n        …iveType\n                )");
            return (VB) declaredMethod.invoke(null, inflater, viewGroup, Boolean.FALSE);
        } catch (Exception e2) {
            throw new IllegalStateException("创建ViewBinding失败", e2);
        }
    }
}
