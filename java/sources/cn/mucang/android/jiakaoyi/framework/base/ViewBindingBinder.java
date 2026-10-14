package cn.mucang.android.jiakaoyi.framework.base;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.viewbinding.a;
import com.noober.background.BackgroundLibrary;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u00042\b\u0012\u0004\u0012\u0002H\u00020\u0006B\u0005¢\u0006\u0002\u0010\u0007J\"\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0017¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", ExifInterface.GPS_DIRECTION_TRUE, "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/drakeet/multitype/ItemViewBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcn/mucang/android/jiakaoyi/framework/base/WithViewBinding;", "()V", "onCreateViewHolder", "inflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class ViewBindingBinder<T, VB extends androidx.viewbinding.a> extends com.drakeet.multitype.b<T, ViewBindingHolder<VB>> implements WithViewBinding<VB> {
    public VB l(Class<?> cls, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return (VB) WithViewBinding.a.a(this, cls, layoutInflater, viewGroup);
    }

    @Override // com.drakeet.multitype.b
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public ViewBindingHolder<VB> k(LayoutInflater inflater, ViewGroup parent) {
        r.e(inflater, "inflater");
        r.e(parent, "parent");
        BackgroundLibrary.inject(inflater.getContext());
        return new ViewBindingHolder<>(l(getClass(), inflater, parent));
    }
}
