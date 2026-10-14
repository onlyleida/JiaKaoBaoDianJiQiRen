package cn.mucang.android.jiakaoyi.k3setting.order.item;

import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightAssembleAddItemBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.b2.u, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\tJ\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/item/LightAssembleAddItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddItemBinding;", "onDelete", "Lkotlin/Function1;", "", "onAdd", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightAssembleAddItemBinder extends ViewBindingBinder<LightExamModel, LightAssembleAddItemBinding> {
    private final Function1<LightExamModel, v> b;
    private final Function1<Integer, v> c;

    /* JADX WARN: Multi-variable type inference failed */
    public LightAssembleAddItemBinder(Function1<? super LightExamModel, v> onDelete, Function1<? super Integer, v> onAdd) {
        r.e(onDelete, "onDelete");
        r.e(onAdd, "onAdd");
        this.b = onDelete;
        this.c = onAdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(LightAssembleAddItemBinder this$0, LightExamModel item, View view) {
        r.e(this$0, "this$0");
        r.e(item, "$item");
        this$0.b.invoke(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LightAssembleAddItemBinder this$0, ViewBindingHolder holder, View view) {
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        this$0.c.invoke(Integer.valueOf(holder.getAdapterPosition() + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(View view) {
        u.h("长按图标拖动排序");
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<LightAssembleAddItemBinding> holder, final LightExamModel item) {
        r.e(holder, "holder");
        r.e(item, "item");
        ((LightAssembleAddItemBinding) holder.getViewBinding()).iconIv.d(item.icon, R.drawable.step_icon_dengguang);
        ((LightAssembleAddItemBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
        ((LightAssembleAddItemBinding) holder.getViewBinding()).sortTv.setVisibility(0);
        ((LightAssembleAddItemBinding) holder.getViewBinding()).addTv.setVisibility(0);
        ((LightAssembleAddItemBinding) holder.getViewBinding()).titleTv.setText(item.desc);
        ((LightAssembleAddItemBinding) holder.getViewBinding()).descTv.setText(item.standard);
        ((LightAssembleAddItemBinding) holder.getViewBinding()).deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleAddItemBinder.r(this.f4402a, item, view);
            }
        });
        ((LightAssembleAddItemBinding) holder.getViewBinding()).addTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleAddItemBinder.s(this.f4403a, holder, view);
            }
        });
        ((LightAssembleAddItemBinding) holder.getViewBinding()).sortTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b2.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightAssembleAddItemBinder.t(view);
            }
        });
    }
}
