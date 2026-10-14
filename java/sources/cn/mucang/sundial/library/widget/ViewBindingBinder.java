package cn.mucang.sundial.library.widget;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.viewbinding.a;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.b;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00050\u0004B\u0007¢\u0006\u0004\b\f\u0010\rJ%\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/widget/ViewBindingBinder;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/viewbinding/a;", "VB", "Lme/drakeet/multitype/b;", "Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "onCreateViewHolder", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class ViewBindingBinder<T, VB extends a> extends b<T, ViewBindingHolder<VB>> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public ViewBindingHolder<VB> onCreateViewHolder(LayoutInflater inflater, ViewGroup parent) {
        r.e(inflater, "inflater");
        r.e(parent, "parent");
        return new ViewBindingHolder<>(new ViewBindingCreator().onCreateView(getClass(), inflater, parent));
    }
}
