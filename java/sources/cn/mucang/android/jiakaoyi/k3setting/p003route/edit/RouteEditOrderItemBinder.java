package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditOrderItemBinding;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.b1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0017R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;", "onSwitch", "Lkotlin/Function1;", "", "onDelete", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getOnDelete", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditOrderItemBinder extends ViewBindingBinder<RouteSpotNode, RouteEditOrderItemBinding> {
    private final Function1<RouteSpotNode, v> b;
    private final Function1<RouteSpotNode, v> c;

    /* JADX WARN: Multi-variable type inference failed */
    public RouteEditOrderItemBinder(Function1<? super RouteSpotNode, v> onSwitch, Function1<? super RouteSpotNode, v> onDelete) {
        r.e(onSwitch, "onSwitch");
        r.e(onDelete, "onDelete");
        this.b = onSwitch;
        this.c = onDelete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RouteEditOrderItemBinder this$0, RouteSpotNode item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.b.invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RouteEditOrderItemBinder this$0, RouteSpotNode item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<RouteSpotNode, v> n() {
        return this.c;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RouteEditOrderItemBinding> holder, final RouteSpotNode item) {
        r.e(holder, "holder");
        r.e(item, "item");
        Step stepFindWithType = Step.findWithType(item.getStepId());
        TextView textView = ((RouteEditOrderItemBinding) holder.getViewBinding()).indexTv;
        StringBuilder sb = new StringBuilder();
        sb.append(holder.getAdapterPosition() + 1);
        sb.append('.');
        textView.setText(sb.toString());
        ((RouteEditOrderItemBinding) holder.getViewBinding()).iconIv.setImageResource(StepGetter.f9318a.g(stepFindWithType));
        ((RouteEditOrderItemBinding) holder.getViewBinding()).nameTv.setText(stepFindWithType.getStepName());
        ((RouteEditOrderItemBinding) holder.getViewBinding()).switchTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditOrderItemBinder.r(this.f4572a, item, view);
            }
        });
        ((RouteEditOrderItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditOrderItemBinder.s(this.f4568a, item, view);
            }
        });
    }
}
