package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.k3setting.databinding.TeachSpinnerItemBinding;
import cn.mucang.jiakaoyi.uilib.model.TeachPlan;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.e1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachStepItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSpinnerItemBinding;", "itemClick", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getItemClick", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteTeachStepItemBinder extends ViewBindingBinder<TeachPlan, TeachSpinnerItemBinding> {
    private final b<TeachPlan> b;

    public RouteTeachStepItemBinder(b<TeachPlan> itemClick) {
        r.e(itemClick, "itemClick");
        this.b = itemClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RouteTeachStepItemBinder this$0, TeachPlan item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().callback(item);
    }

    public final b<TeachPlan> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<TeachSpinnerItemBinding> holder, final TeachPlan item) {
        r.e(holder, "holder");
        r.e(item, "item");
        TextView textView = ((TeachSpinnerItemBinding) holder.getViewBinding()).text1;
        String stepName = item.getStepName();
        if (stepName == null) {
            stepName = "";
        }
        textView.setText(stepName);
        ((TeachSpinnerItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteTeachStepItemBinder.q(this.f4605a, item, view);
            }
        });
    }
}
