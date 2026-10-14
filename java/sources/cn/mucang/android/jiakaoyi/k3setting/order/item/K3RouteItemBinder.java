package cn.mucang.android.jiakaoyi.k3setting.order.item;

import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderItemBinding;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.b2.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u001c\u0010\u000f\u001a\u00020\u00062\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/item/K3RouteItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;", "callback", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getCallback", "()Lkotlin/jvm/functions/Function1;", "delAction", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "setDeleteAction", AuthActivity.ACTION_KEY, "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3RouteItemBinder extends ViewBindingBinder<StepOrderItem, LightOrderItemBinding> {
    private final Function1<StepOrderItem, v> b;
    private Function1<? super StepOrderItem, v> c;

    /* JADX WARN: Multi-variable type inference failed */
    public K3RouteItemBinder(Function1<? super StepOrderItem, v> callback) {
        r.e(callback, "callback");
        this.b = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(View view) {
        u.h("长按图标拖动排序");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K3RouteItemBinder this$0, StepOrderItem item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(K3RouteItemBinder this$0, StepOrderItem item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        Function1<? super StepOrderItem, v> function1 = this$0.c;
        if (function1 == null) {
            return;
        }
        function1.invoke(item);
    }

    public final Function1<StepOrderItem, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<LightOrderItemBinding> holder, final StepOrderItem item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((LightOrderItemBinding) holder.getViewBinding()).iconIv.setImageResource(StepGetter.f9318a.g(Step.findWithType(item.stepId)));
        ((LightOrderItemBinding) holder.getViewBinding()).titleTv.setText(((Object) item.stepAliasName) + " (考试项目：" + ((Object) item.name) + ')');
        ((LightOrderItemBinding) holder.getViewBinding()).descTv.setText(String.valueOf(item.content));
        ((LightOrderItemBinding) holder.getViewBinding()).sortTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteItemBinder.s(view);
            }
        });
        ((LightOrderItemBinding) holder.getViewBinding()).editTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteItemBinder.t(this.f4400a, item, view);
            }
        });
        if (this.c == null) {
            return;
        }
        ((LightOrderItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteItemBinder.u(this.f4398a, item, view);
            }
        });
    }

    public final void v(Function1<? super StepOrderItem, v> function1) {
        this.c = function1;
    }
}
