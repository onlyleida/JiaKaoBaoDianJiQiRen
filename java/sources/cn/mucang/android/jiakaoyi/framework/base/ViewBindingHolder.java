package cn.mucang.android.jiakaoyi.framework.base;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/viewbinding/ViewBinding;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewBinding", "(Landroidx/viewbinding/ViewBinding;)V", "getViewBinding", "()Landroidx/viewbinding/ViewBinding;", "Landroidx/viewbinding/ViewBinding;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ViewBindingHolder<T extends androidx.viewbinding.a> extends RecyclerView.c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f3418a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewBindingHolder(T t) {
        super(t.getRoot());
        r.c(t);
        this.f3418a = t;
    }

    public final T getViewBinding() {
        return this.f3418a;
    }
}
