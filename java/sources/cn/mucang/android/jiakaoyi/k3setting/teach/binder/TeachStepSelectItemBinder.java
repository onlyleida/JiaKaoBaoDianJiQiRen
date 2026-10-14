package cn.mucang.android.jiakaoyi.k3setting.teach.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.k3setting.databinding.TeachSpinnerItemBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.z.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachStepSelectItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSpinnerItemBinding;", "itemClick", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getItemClick", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachStepSelectItemBinder extends ViewBindingBinder<TeachData, TeachSpinnerItemBinding> {
    private final b<Integer> b;

    public TeachStepSelectItemBinder(b<Integer> itemClick) {
        r.e(itemClick, "itemClick");
        this.b = itemClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(TeachStepSelectItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        this$0.n().callback(Integer.valueOf(holder.getAdapterPosition()));
    }

    public final b<Integer> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<TeachSpinnerItemBinding> holder, TeachData item) {
        r.e(holder, "holder");
        r.e(item, "item");
        if (item.name != null) {
            ((TeachSpinnerItemBinding) holder.getViewBinding()).text1.setText(item.name);
        } else {
            ((TeachSpinnerItemBinding) holder.getViewBinding()).text1.setText("");
        }
        ((TeachSpinnerItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.z.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachStepSelectItemBinder.q(this.f4693a, holder, view);
            }
        });
    }
}
