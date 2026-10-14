package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.annotation.SuppressLint;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteSelectOrderItemBinding;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.f1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0017R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SelectOrderItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteSelectOrderItemBinding;", "onChosen", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnChosen", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectOrderItemBinder extends ViewBindingBinder<StepOrderItem, RouteSelectOrderItemBinding> {
    private final Function1<StepOrderItem, v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectOrderItemBinder(Function1<? super StepOrderItem, v> onChosen) {
        r.e(onChosen, "onChosen");
        this.b = onChosen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SelectOrderItemBinder this$0, StepOrderItem item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<StepOrderItem, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RouteSelectOrderItemBinding> holder, final StepOrderItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((RouteSelectOrderItemBinding) holder.getViewBinding()).nameTv.setText(item.stepAliasName);
        ((RouteSelectOrderItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectOrderItemBinder.q(this.f4607a, item, view);
            }
        });
    }
}
