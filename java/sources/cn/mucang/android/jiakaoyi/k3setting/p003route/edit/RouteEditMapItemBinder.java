package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditMapItemBinding;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.a1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u001e\u0010\f\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0017R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;", "onFuncClick", "Lkotlin/Function2;", "", "", "(Lkotlin/jvm/functions/Function2;)V", "getOnFuncClick", "()Lkotlin/jvm/functions/Function2;", "selectIndex", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditMapItemBinder extends ViewBindingBinder<RouteSpotNode, RouteEditMapItemBinding> {
    private final Function2<RouteSpotNode, Integer, v> b;
    private int c;

    /* JADX WARN: Multi-variable type inference failed */
    public RouteEditMapItemBinder(Function2<? super RouteSpotNode, ? super Integer, v> onFuncClick) {
        r.e(onFuncClick, "onFuncClick");
        this.b = onFuncClick;
        this.c = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RouteEditMapItemBinder this$0, ViewBindingHolder holder, RouteSpotNode item, View view) {
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        r.e(item, "$item");
        this$0.c = holder.getAdapterPosition();
        this$0.n().invoke(item, Integer.valueOf(holder.getAdapterPosition()));
    }

    public final Function2<RouteSpotNode, Integer, v> n() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<RouteEditMapItemBinding> holder, final RouteSpotNode item) {
        r.e(holder, "holder");
        r.e(item, "item");
        Step stepFindWithType = Step.findWithType(item.getStepId());
        TextView textView = ((RouteEditMapItemBinding) holder.getViewBinding()).indexTv;
        StringBuilder sb = new StringBuilder();
        sb.append(holder.getAdapterPosition() + 1);
        sb.append('.');
        textView.setText(sb.toString());
        ((RouteEditMapItemBinding) holder.getViewBinding()).iconIv.setImageResource(StepGetter.f9318a.g(stepFindWithType));
        TextView textView2 = ((RouteEditMapItemBinding) holder.getViewBinding()).nameTv;
        String alias = item.getAlias();
        if (alias == null) {
            alias = stepFindWithType.getStepName();
        }
        textView2.setText(alias);
        ((RouteEditMapItemBinding) holder.getViewBinding()).getRoot().setSelected(holder.getAdapterPosition() == this.c);
        ((RouteEditMapItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditMapItemBinder.q(this.f4561a, holder, item, view);
            }
        });
    }
}
