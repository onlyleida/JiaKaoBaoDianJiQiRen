package cn.mucang.android.jiakaoyi.framework.base;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u0000*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003J-\u0010\u0004\u001a\u00028\u00002\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/WithViewBinding;", "VB", "Landroidx/viewbinding/ViewBinding;", "", "onCreateViewBinding", "clz", "Ljava/lang/Class;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface WithViewBinding<VB extends androidx.viewbinding.a> {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.j$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public static <VB extends androidx.viewbinding.a> VB a(WithViewBinding<VB> withViewBinding, Class<?> clz, LayoutInflater inflater, ViewGroup viewGroup) {
            r.e(withViewBinding, "this");
            r.e(clz, "clz");
            r.e(inflater, "inflater");
            return (VB) new ViewBindingCreator().a(clz, inflater, viewGroup);
        }
    }
}
