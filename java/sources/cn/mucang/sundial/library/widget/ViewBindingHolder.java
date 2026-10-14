package cn.mucang.sundial.library.widget;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0004\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/sundial/library/widget/ViewBindingHolder;", "Landroidx/viewbinding/a;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$c0;", "viewBinding", "Landroidx/viewbinding/a;", "getViewBinding", "()Landroidx/viewbinding/a;", "<init>", "(Landroidx/viewbinding/a;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ViewBindingHolder<T extends a> extends RecyclerView.c0 {
    private final T viewBinding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewBindingHolder(T viewBinding) {
        super(viewBinding.getRoot());
        r.e(viewBinding, "viewBinding");
        this.viewBinding = viewBinding;
    }

    public final T getViewBinding() {
        return this.viewBinding;
    }
}
