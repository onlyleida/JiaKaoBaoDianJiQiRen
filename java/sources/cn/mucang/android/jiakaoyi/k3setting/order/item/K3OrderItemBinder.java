package cn.mucang.android.jiakaoyi.k3setting.order.item;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.StepSettingItemBinding;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.K3OrderItem;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.b2.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/item/K3OrderItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/StepSettingItemBinding;", "()V", "changeStatus", "", "item", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "onBindViewHolder", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3OrderItemBinder extends ViewBindingBinder<K3OrderItem, StepSettingItemBinding> {
    private final void n(K3OrderItem k3OrderItem, ViewBindingHolder<StepSettingItemBinding> viewBindingHolder) {
        if (k3OrderItem.getShowInRoute()) {
            ((StepSettingItemBinding) viewBindingHolder.getViewBinding()).collectTv.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_choice_selected, 0, 0, 0);
        } else {
            ((StepSettingItemBinding) viewBindingHolder.getViewBinding()).collectTv.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_choice_default, 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K3OrderItem item, K3OrderItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(item, "$item");
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        item.setShowInRoute(!item.getShowInRoute());
        this$0.n(item, holder);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<StepSettingItemBinding> holder, final K3OrderItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((StepSettingItemBinding) holder.getViewBinding()).iconIv.setImageResource(StepGetter.f9318a.g(item.getStep()));
        ((StepSettingItemBinding) holder.getViewBinding()).titleTv.setText(item.getStep().getStepName());
        ((StepSettingItemBinding) holder.getViewBinding()).collectTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3OrderItemBinder.q(item, this, holder, view);
            }
        });
        n(item, holder);
    }
}
