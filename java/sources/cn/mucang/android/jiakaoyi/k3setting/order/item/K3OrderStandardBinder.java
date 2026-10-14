package cn.mucang.android.jiakaoyi.k3setting.order.item;

import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightStandardItemBinding;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.b2.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/item/K3OrderStandardBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "stepType", "", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;I)V", "getCallback", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "setCallback", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getStepType", "()I", "setStepType", "(I)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3OrderStandardBinder extends ViewBindingBinder<StepOrderItem, LightStandardItemBinding> {
    private b<StepOrderItem> b;
    private int c;

    public K3OrderStandardBinder(b<StepOrderItem> bVar, int i) {
        this.b = bVar;
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K3OrderStandardBinder this$0, StepOrderItem item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        b<StepOrderItem> bVarN = this$0.n();
        if (bVarN == null) {
            return;
        }
        bVarN.callback(item);
    }

    public final b<StepOrderItem> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<LightStandardItemBinding> holder, final StepOrderItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((LightStandardItemBinding) holder.getViewBinding()).iconIv.setImageResource(StepGetter.f9318a.g(Step.findWithType(item.stepId)));
        ((LightStandardItemBinding) holder.getViewBinding()).titleTv.setText(item.name);
        ((LightStandardItemBinding) holder.getViewBinding()).selectedIv.setSelected(this.c == item.stepId);
        ((LightStandardItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3OrderStandardBinder.q(this.f4397a, item, view);
            }
        });
    }
}
