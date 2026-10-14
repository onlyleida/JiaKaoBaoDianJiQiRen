package cn.mucang.android.jiakaoyi.k3setting.teach.binder;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.teach.TeachStepItem;
import com.mucang.android.jiakaoyi.uilib.databinding.DeductSettingItemStepBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.z.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachStepItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/k3setting/teach/TeachStepItem;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemStepBinding;", "itemClick", "Lkotlin/Function2;", "", "", "(Lkotlin/jvm/functions/Function2;)V", "getItemClick", "()Lkotlin/jvm/functions/Function2;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachStepItemBinder extends ViewBindingBinder<TeachStepItem, DeductSettingItemStepBinding> {
    private final Function2<TeachStepItem, Integer, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public TeachStepItemBinder(Function2<? super TeachStepItem, ? super Integer, v> itemClick) {
        r.e(itemClick, "itemClick");
        this.b = itemClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(TeachStepItemBinder this$0, TeachStepItem item, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        r.e(holder, "$holder");
        this$0.n().invoke(item, Integer.valueOf(holder.getAdapterPosition()));
    }

    public final Function2<TeachStepItem, Integer, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<DeductSettingItemStepBinding> holder, final TeachStepItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setText(item.getName());
        ((DeductSettingItemStepBinding) holder.getViewBinding()).stepName.setSelected(item.getIsSelect());
        ((DeductSettingItemStepBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.z.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachStepItemBinder.q(this.f4692a, item, holder, view);
            }
        });
    }
}
